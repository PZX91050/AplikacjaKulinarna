using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AplikacjaKulinarna.Data;
using AplikacjaKulinarna.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;

namespace AplikacjaKulinarna.Controllers
{
    
    public class RecipesController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<User> _userManager;

        public RecipesController(ApplicationDbContext context, UserManager<User> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: Recipes
        public async Task<IActionResult> Index()
        {
            var recipes = await _context.Recipes
                .Include(r => r.Ingredients)
                    .ThenInclude(ri => ri.Ingredient)
                .ToListAsync();

            return View(recipes);
        }


        // GET: Recipes/AvailableRecipes
        public async Task<IActionResult> AvailableRecipes()
        {
            var user = await _userManager.GetUserAsync(User);

            if (user == null)
            {
                return Unauthorized();
            }

            // Pobierz składniki użytkownika
            var userIngredients = await _context.UserIngredients
                .Where(ui => ui.UserId == user.Id)
                .ToDictionaryAsync(ui => ui.IngredientId, ui => ui.Quantity);

            // Pobierz wszystkie przepisy i ich składniki
            var recipes = await _context.Recipes
                .Include(r => r.Ingredients)
                .ToListAsync();

            // Filtruj przepisy, które użytkownik może przygotować
            var availableRecipes = recipes.Where(recipe =>
                recipe.Ingredients.All(ri =>
                    userIngredients.TryGetValue(ri.IngredientId, out var userQuantity) &&
                    userQuantity >= ri.Quantity
                )).ToList();

            return View(availableRecipes);
        }


        // GET: Recipes/BudgetRecipes
        public IActionResult BudgetRecipes()
        {
            return View(); // Formularz do wprowadzenia budżetu
        }

        // POST: Recipes/BudgetRecipes
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult BudgetRecipes(decimal budget)
        {
            // Przechowaj budżet w TempData jako string
            TempData["Budget"] = budget.ToString();
            return RedirectToAction(nameof(BudgetRecipesResults));
        }

        // GET: Recipes/BudgetRecipesResults
        public async Task<IActionResult> BudgetRecipesResults()
        {
            // Pobierz budżet z TempData i skonwertuj go na decimal
            if (!TempData.TryGetValue("Budget", out var budgetStr) || !decimal.TryParse(budgetStr as string, out var budget))
            {
                return RedirectToAction(nameof(BudgetRecipes)); // Jeśli brak budżetu, wróć do formularza
            }

            // Pobierz wszystkie przepisy wraz z ich składnikami
            var recipes = await _context.Recipes
                .Include(r => r.Ingredients)
                .ThenInclude(ri => ri.Ingredient)
                .ToListAsync();

            // Filtruj przepisy w ramach budżetu
            var filteredRecipes = recipes
                .Where(r => r.TotalPrice <= budget)
                .ToList();

            // Przekaż budżet do widoku
            ViewData["Budget"] = budget;
            return View(filteredRecipes);
        }

        

        // GET: Recipes/Details/5
        [AllowAnonymous]
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes
                .Include(r => r.Ingredients)
                    .ThenInclude(ri => ri.Ingredient)
                .FirstOrDefaultAsync(r => r.Id == id);

            if (recipe == null)
            {
                return NotFound();
            }

            return View(recipe);
        }


        // GET: Recipes/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Recipes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,Description,IngredientsString,PreparationInstructions,ImagePath")] Recipe recipe)
        {
            if (ModelState.IsValid)
            {
                _context.Add(recipe);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(recipe);
        }

        // GET: Recipes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes.FindAsync(id);
            if (recipe == null)
            {
                return NotFound();
            }
            return View(recipe);
        }

        // POST: Recipes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,Description,IngredientsString,PreparationInstructions,ImagePath")] Recipe recipe)
        {
            if (id != recipe.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(recipe);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!RecipeExists(recipe.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(recipe);
        }

        // GET: Recipes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes
                .FirstOrDefaultAsync(m => m.Id == id);
            if (recipe == null)
            {
                return NotFound();
            }

            return View(recipe);
        }

        // POST: Recipes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var recipe = await _context.Recipes.FindAsync(id);
            if (recipe != null)
            {
                _context.Recipes.Remove(recipe);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool RecipeExists(int id)
        {
            return _context.Recipes.Any(e => e.Id == id);
        }
    }
}
