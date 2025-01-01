using System.Security.Claims;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using AplikacjaKulinarna.Data;
using AplikacjaKulinarna.Models;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace AplikacjaKulinarna.Controllers
{
    public class UserIngredientsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public UserIngredientsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: UserIngredients
        public async Task<IActionResult> Index()
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var userIngredients = _context.UserIngredients
                .Where(ui => ui.UserId == userId)
                .Include(ui => ui.Ingredient);
            return View(await userIngredients.ToListAsync());
        }

        // GET: UserIngredients/Details/5
        public async Task<IActionResult> Details(int? ingredientId)
        {
            if (ingredientId == null)
            {
                return NotFound();
            }

            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var userIngredient = await _context.UserIngredients
                .Include(ui => ui.Ingredient)
                .FirstOrDefaultAsync(ui => ui.UserId == userId && ui.IngredientId == ingredientId);

            if (userIngredient == null)
            {
                return NotFound();
            }

            return View(userIngredient);
        }

        // GET: UserIngredients/Create
        public IActionResult Create()
        {
            ViewData["IngredientId"] = new SelectList(_context.Ingredients, "Id", "Name");
            return View();
        }

        // POST: UserIngredients/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IngredientId,Quantity")] UserIngredient userIngredient)
        {
            userIngredient.UserId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            var existingUserIngredient = await _context.UserIngredients
                .FirstOrDefaultAsync(ui => ui.UserId == userIngredient.UserId && ui.IngredientId == userIngredient.IngredientId);

            if (existingUserIngredient != null)
            {
                existingUserIngredient.Quantity += userIngredient.Quantity;
                _context.Update(existingUserIngredient);
            }
            else
            {
                _context.Add(userIngredient);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        // GET: UserIngredients/Edit/5
        public async Task<IActionResult> Edit(int? ingredientId)
        {
            if (ingredientId == null)
            {
                return NotFound();
            }

            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var userIngredient = await _context.UserIngredients
                .Include(ui => ui.Ingredient)
                .FirstOrDefaultAsync(ui => ui.UserId == userId && ui.IngredientId == ingredientId);

            if (userIngredient == null)
            {
                return NotFound();
            }

            return View(userIngredient);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int ingredientId, [Bind("UserId,IngredientId,Quantity")] UserIngredient userIngredient)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            // Loguj dane wejściowe
            Console.WriteLine($"Edit POST: IngredientId={ingredientId}, UserId={userId}, Quantity={userIngredient.Quantity}");

            if (ingredientId != userIngredient.IngredientId || userId != userIngredient.UserId)
            {
                Console.WriteLine("Mismatch in IngredientId or UserId");
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    // Pobierz istniejący rekord
                    var existingUserIngredient = await _context.UserIngredients
                        .FirstOrDefaultAsync(ui => ui.UserId == userId && ui.IngredientId == ingredientId);

                    if (existingUserIngredient == null)
                    {
                        Console.WriteLine("UserIngredient not found in database");
                        return NotFound();
                    }

                    // Aktualizuj ilość
                    existingUserIngredient.Quantity = userIngredient.Quantity;

                    // Zapisz zmiany
                    _context.Update(existingUserIngredient);
                    await _context.SaveChangesAsync();

                    Console.WriteLine("Changes saved to database successfully.");
                    return RedirectToAction(nameof(Index));
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error while saving changes: {ex.Message}");
                    throw;
                }
            }

            Console.WriteLine("ModelState is invalid.");
            return View(userIngredient);
        }


        // GET: UserIngredients/Delete/5
        public async Task<IActionResult> Delete(int? ingredientId)
        {
            if (ingredientId == null)
            {
                return NotFound();
            }

            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var userIngredient = await _context.UserIngredients
                .Include(ui => ui.Ingredient)
                .FirstOrDefaultAsync(ui => ui.UserId == userId && ui.IngredientId == ingredientId);

            if (userIngredient == null)
            {
                return NotFound();
            }

            return View(userIngredient);
        }

        // POST: UserIngredients/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int ingredientId)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var userIngredient = await _context.UserIngredients
                .FirstOrDefaultAsync(ui => ui.UserId == userId && ui.IngredientId == ingredientId);

            if (userIngredient != null)
            {
                _context.UserIngredients.Remove(userIngredient);
                await _context.SaveChangesAsync();
            }

            return RedirectToAction(nameof(Index));
        }

        private bool UserIngredientExists(string userId, int ingredientId)
        {
            return _context.UserIngredients.Any(ui => ui.UserId == userId && ui.IngredientId == ingredientId);
        }
    }
}
