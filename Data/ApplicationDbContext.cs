using AplikacjaKulinarna.Models;
using AplikacjaKulinarna;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace AplikacjaKulinarna.Data
{
    public class ApplicationDbContext : IdentityDbContext<User, Role, string>
    {
        public DbSet<Ingredient> Ingredients { get; set; }
        public DbSet<Recipe> Recipes { get; set; }
        public DbSet<RecipeIngredient> RecipeIngredients { get; set; }
        public DbSet<UserIngredient> UserIngredients { get; set; }



        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);



            modelBuilder.Entity<Ingredient>()
                .Property(i => i.Price)
                .HasColumnType("decimal(18,2)");
           
            modelBuilder.Entity<User>()
                .Property(u => u.Budget)
                .HasPrecision(18, 2);

            modelBuilder.Entity<UserIngredient>()
                .Property(ui => ui.Quantity)
                .HasPrecision(10, 2); 

            modelBuilder.Entity<UserIngredient>()
                .HasKey(ui => new { ui.UserId, ui.IngredientId });

            modelBuilder.Entity<UserIngredient>()
                .HasOne(ui => ui.User)
                .WithMany(u => u.UserIngredients)
                .HasForeignKey(ui => ui.UserId);

            modelBuilder.Entity<UserIngredient>()
                .HasOne(ui => ui.Ingredient)
                .WithMany(i => i.UserIngredients)
                .HasForeignKey(ui => ui.IngredientId);

            modelBuilder.Entity<RecipeIngredient>()
                .HasKey(ri => new { ri.RecipeId, ri.IngredientId });

            modelBuilder.Entity<RecipeIngredient>()
                .HasOne(ri => ri.Recipe)
                .WithMany(r => r.Ingredients)
                .HasForeignKey(ri => ri.RecipeId);

            modelBuilder.Entity<RecipeIngredient>()
                .HasOne(ri => ri.Ingredient)
                .WithMany(i => i.RecipeIngredients)
                .HasForeignKey(ri => ri.IngredientId);

            modelBuilder.Entity<RecipeIngredient>()
                .Property(ri => ri.Quantity)
                .HasPrecision(10, 2);

            
        }
    }
}
