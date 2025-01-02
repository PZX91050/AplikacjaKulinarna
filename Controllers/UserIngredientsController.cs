using System.Security.Claims;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;
using AplikacjaKulinarna.Data;
using AplikacjaKulinarna.Models;

namespace AplikacjaKulinarna.Controllers
{
    [Authorize]
    public class UserIngredientsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<User> _userManager;

        public UserIngredientsController(ApplicationDbContext context, UserManager<User> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: UserIngredients
        public async Task<IActionResult> Index()
        {
            try
            {
                var userId = _userManager.GetUserId(User);
                var userIngredients = _context.UserIngredients
                    .Where(ui => ui.UserId == userId)
                    .Include(ui => ui.Ingredient);
                return View(await userIngredients.ToListAsync());
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error loading ingredients: {ex.Message}");
                throw;
            }
        }

        // GET: UserIngredients/Details/5
        public async Task<IActionResult> Details(int? ingredientId)
        {
            if (ingredientId == null)
            {
                return NotFound();
            }

            var userId = _userManager.GetUserId(User);
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
            var userId = _userManager.GetUserId(User);
            userIngredient.UserId = userId;

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

        [HttpGet]
        public async Task<IActionResult> Edit(int ingredientId)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId))
            {
                return Unauthorized();
            }

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
        public async Task<IActionResult> Edit(int ingredientId, decimal quantity)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId))
            {
                return Unauthorized();
            }

            if (quantity <= 0)
            {
                ModelState.AddModelError("Quantity", "Ilość musi być większa niż 0.");
                var userIngredient = await _context.UserIngredients
                    .Include(ui => ui.Ingredient)
                    .FirstOrDefaultAsync(ui => ui.UserId == userId && ui.IngredientId == ingredientId);
                return View(userIngredient);
            }

            var existingUserIngredient = await _context.UserIngredients
                .FirstOrDefaultAsync(ui => ui.UserId == userId && ui.IngredientId == ingredientId);

            if (existingUserIngredient == null)
            {
                return NotFound();
            }

            try
            {
                existingUserIngredient.Quantity = quantity;
                _context.Update(existingUserIngredient);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.UserIngredients.Any(ui => ui.UserId == userId && ui.IngredientId == ingredientId))
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


        // GET: UserIngredients/Delete/5
        public async Task<IActionResult> Delete(int? ingredientId)
        {
            if (ingredientId == null)
            {
                return NotFound();
            }

            var userId = _userManager.GetUserId(User);
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
            var userId = _userManager.GetUserId(User);
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
