using AplikacjaKulinarna.Data;
using AplikacjaKulinarna.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.IO;

namespace AplikacjaKulinarna
{
    public class Program
    {
        public static void Main(string[] args)
        {
            
            string dbName = "AplikacjaKulinarnaDb";
            string desiredCollation = "SQL_Latin1_General_CP1_CI_AS";
            string masterConnectionString = "Server=(localdb)\\MSSQLLocalDB;Database=master;Trusted_Connection=True;";

            bool dbExists = DatabaseExists(dbName, masterConnectionString);
            if (!dbExists)
            {
                Console.WriteLine($"Baza '{dbName}' nie istnieje. Tworzę nową...");
                CreateDatabase(dbName, desiredCollation, masterConnectionString);
                Console.WriteLine($"Baza '{dbName}' została utworzona z collation '{desiredCollation}'.");
            }
            else
            {
                Console.WriteLine($"Baza '{dbName}' już istnieje.");
            }

            
            var builder = WebApplication.CreateBuilder(args);
            var connectionString = builder.Configuration.GetConnectionString("DefaultConnection")
                ?? $"Server=(localdb)\\MSSQLLocalDB;Database={dbName};Trusted_Connection=True;";
   
            builder.Services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(connectionString));
            builder.Services.AddDatabaseDeveloperPageExceptionFilter();

           
            builder.Services.AddDefaultIdentity<User>(options => options.SignIn.RequireConfirmedAccount = false)
                .AddEntityFrameworkStores<ApplicationDbContext>()
                .AddDefaultTokenProviders();

            
            builder.Services.AddControllersWithViews();
            builder.Services.AddRazorPages();

            
            var app = builder.Build();

            
            using (var scope = app.Services.CreateScope())
            {
                var dbContext = scope.ServiceProvider.GetRequiredService<ApplicationDbContext>();
                dbContext.Database.Migrate();
            }

            
            string scriptPath = Path.Combine(AppContext.BaseDirectory, "Database", "baza.sql");
            if (File.Exists(scriptPath))
            {
                Console.WriteLine($"Wykonuję skrypt SQL z pliku: {scriptPath}");
                ExecuteSqlScript(connectionString, scriptPath);
                Console.WriteLine("Skrypt baza.sql został pomyślnie wykonany.");
            }
            else
            {
                Console.WriteLine($"Nie znaleziono pliku skryptu: {scriptPath}");
            }

            
            if (app.Environment.IsDevelopment())
            {
                app.UseMigrationsEndPoint();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseRouting();
            app.UseAuthorization();

            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");
            app.MapRazorPages();

            Console.WriteLine("Uruchamiam aplikację...");
            app.Run();
        }

        
        private static bool DatabaseExists(string dbName, string masterConnectionString)
        {
            using var connection = new SqlConnection(masterConnectionString);
            connection.Open();

            string checkSql = @"
                SELECT name
                FROM sys.databases
                WHERE name = @dbName";

            using var cmd = new SqlCommand(checkSql, connection);
            cmd.Parameters.AddWithValue("@dbName", dbName);

            object result = cmd.ExecuteScalar();
            return (result != null);
        }

        
        private static void CreateDatabase(string dbName, string collation, string masterConnectionString)
        {
            using var connection = new SqlConnection(masterConnectionString);
            connection.Open();

            string createSql = $@"
                CREATE DATABASE [{dbName}]
                COLLATE {collation}";

            using var cmd = new SqlCommand(createSql, connection);
            cmd.ExecuteNonQuery();
        }

        
        private static void ExecuteSqlScript(string connectionString, string scriptFilePath)
        {
            string script = File.ReadAllText(scriptFilePath);

            var commands = script
                .Split(new[] { "\r\nGO", "\nGO", "GO\r\n", "GO\n" }, StringSplitOptions.RemoveEmptyEntries);

            using var connection = new SqlConnection(connectionString);
            connection.Open();

            foreach (var cmdText in commands)
            {
                var commandTrimmed = cmdText.Trim();
                if (string.IsNullOrWhiteSpace(commandTrimmed))
                    continue;

                using var cmd = new SqlCommand(commandTrimmed, connection);
                cmd.ExecuteNonQuery();
            }
        }
    }
}
