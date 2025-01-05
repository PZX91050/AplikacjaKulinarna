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
                .OrderBy(r => r.TotalPrice)
                .ToList();

            // Przekaż budżet do widoku
            ViewData["Budget"] = budget;
            return View(filteredRecipes);
        }

        // GET: Recipes/AffordableRecipes
        public async Task<IActionResult> AffordableRecipes()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null) return Unauthorized();

            var userIngredients = await _context.UserIngredients
                .Where(ui => ui.UserId == user.Id)
                .Include(ui => ui.Ingredient)
                .ToListAsync();

            ViewData["UserIngredients"] = userIngredients;
            return View(); // Wyświetl formularz do podania budżetu
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AffordableRecipes(decimal budget)
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null) return Unauthorized();

            // Pobierz składniki użytkownika
            var userIngredients = await _context.UserIngredients
                .Where(ui => ui.UserId == user.Id)
                .Include(ui => ui.Ingredient)
                .ToListAsync();

            // Pobierz przepisy z powiązanymi składnikami
            var recipes = await _context.Recipes
                .Include(r => r.Ingredients)
                .ThenInclude(ri => ri.Ingredient)
                .ToListAsync();

            // Oblicz brakujące składniki i ich koszt
            var results = recipes.Select(recipe =>
            {
                // Znajdź brakujące składniki
                var missingIngredients = recipe.Ingredients
                    .Where(ri => !userIngredients.Any(ui => ui.IngredientId == ri.IngredientId))
                    .Select(ri => new
                    {
                        IngredientName = ri.Ingredient.Name,
                        QuantityNeeded = ri.Quantity,
                        Unit = ri.Unit,
                        MissingCost = ri.GetConvertedPrice() // Użycie metody GetConvertedPrice
                    })
                    .ToList();

                // Oblicz całkowity koszt brakujących składników
                var missingCost = missingIngredients.Sum(mi => mi.MissingCost);

                return new
                {
                    Recipe = recipe,
                    RemainingPrice = missingCost,
                    MissingIngredients = missingIngredients
                };
            })
            .Where(r => r.RemainingPrice <= budget) // Filtruj przepisy mieszczące się w budżecie
            .OrderBy(r => r.RemainingPrice) // Sortowanie według RemainingPrice (rosnąco)
            .ToList();

            // Przekaż dane do widoku
            ViewData["Budget"] = budget;
            ViewData["Results"] = results;

            return View("AffordableRecipesResults");
        }



        [Authorize]
        public async Task<IActionResult> MissingIngredients(int recipeId)
        {
            var recipe = await _context.Recipes
                .Include(r => r.Ingredients)
                .ThenInclude(ri => ri.Ingredient)
                .FirstOrDefaultAsync(r => r.Id == recipeId);

            if (recipe == null) return NotFound();

            var user = await _userManager.GetUserAsync(User);
            if (user == null) return Unauthorized();

            var userIngredients = await _context.UserIngredients
                .Where(ui => ui.UserId == user.Id)
                .ToDictionaryAsync(ui => ui.IngredientId, ui => ui.Quantity);

            var missingIngredients = recipe.Ingredients
                .Where(ri => !userIngredients.ContainsKey(ri.IngredientId) || userIngredients[ri.IngredientId] < ri.Quantity)
                .Select(ri => new MissingIngredientViewModel
                {
                    Name = ri.Ingredient.Name,
                    NeededQuantity = ri.Quantity,
                    Unit = ri.Unit,
                    OwnedQuantity = userIngredients.TryGetValue(ri.IngredientId, out var qty) ? qty : 0
                })
                .ToList();
            
            ViewBag.RecipeId = recipeId;

            return View(missingIngredients);
        }




        
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



        [HttpGet]
        public IActionResult Create()
        {
            // 1. Pobierz listę składników z bazy, posortowaną alfabetycznie
            var allIngredients = _context.Ingredients
                                         .OrderBy(i => i.Name)
                                         .ToList();

            // 2. Utwórz SelectListItem do dropdownu
            var ingredientsSelectList = allIngredients
                .Select(i => new SelectListItem
                {
                    Value = i.Id.ToString(),
                    Text = i.Name
                }).ToList();

            // 3. Stwórz ViewModel
            var viewModel = new RecipeCreateViewModel
            {
                Recipe = new Recipe(),
                Ingredients = ingredientsSelectList
            };

           

            return View(viewModel);
        }

        [HttpPost]
        public IActionResult Create(RecipeCreateViewModel model)
        {
            // Walidacja
            if (!ModelState.IsValid)
            {
                // Jeśli np. wystąpi błąd walidacji, musimy ponownie załadować listę do dropdownu
                var allIngredients = _context.Ingredients.OrderBy(i => i.Name).ToList();
                model.Ingredients = allIngredients.Select(i => new SelectListItem
                {
                    Value = i.Id.ToString(),
                    Text = i.Name
                }).ToList();

                return View(model);
            }

            // Stworzenie obiektu Recipe z polami z formularza
            var recipe = new Recipe
            {
                // Jeżeli naprawdę chcesz ustawić ID samodzielnie (opcjonalnie) 
                // Id = model.Recipe.Id,

                Name = model.Recipe.Name,
                Description = model.Recipe.Description,
                IngredientsString = model.Recipe.IngredientsString,
                PreparationInstructions = model.Recipe.PreparationInstructions,
                ImagePath = model.Recipe.ImagePath
            };

            // Parsujemy ID składników i ilości z hidden fields
            if (!string.IsNullOrEmpty(model.IngredientIds) && !string.IsNullOrEmpty(model.Quantities))
            {
                var ingredientIds = model.IngredientIds.Split(',');
                var quantities = model.Quantities.Split(',');

                for (int i = 0; i < ingredientIds.Length; i++)
                {
                    if (int.TryParse(ingredientIds[i], out int ingId)
                        && decimal.TryParse(quantities[i], out decimal qty))
                    {
                        // Tworzymy RecipeIngredient
                        var recipeIngredient = new RecipeIngredient
                        {
                            IngredientId = ingId,
                            Quantity = qty,
                            // Jednostkę możesz też pobierać z frontu lub ustawić dowolnie
                            Unit = "gram"
                        };

                        // Dodaj do kolekcji
                        if (recipe.Ingredients == null)
                            recipe.Ingredients = new List<RecipeIngredient>();

                        recipe.Ingredients.Add(recipeIngredient);
                    }
                }
            }

            // Zapis do bazy
            _context.Recipes.Add(recipe);
            _context.SaveChanges();

            return RedirectToAction("Index");
        }



        [Authorize(Roles = "Admin")]
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
        [Authorize(Roles = "Admin")]
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


        // GET: Recipes/Delete
        [Authorize(Roles = "Admin")]        
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

        // POST: Recipes/Delete
        [Authorize(Roles = "Admin")]       
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
