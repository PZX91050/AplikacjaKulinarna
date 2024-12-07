using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AplikacjaKulinarna.Data;
using AplikacjaKulinarna.Models;

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
            var applicationDbContext = _context.UserIngredients.Include(u => u.Ingredient).Include(u => u.User);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: UserIngredients/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var userIngredient = await _context.UserIngredients
                .Include(u => u.Ingredient)
                .Include(u => u.User)
                .FirstOrDefaultAsync(m => m.UserId == id);
            if (userIngredient == null)
            {
                return NotFound();
            }

            return View(userIngredient);
        }

        // GET: UserIngredients/Create
        public IActionResult Create()
        {
            ViewData["IngredientId"] = new SelectList(_context.Ingredients, "Id", "Id");
            ViewData["UserId"] = new SelectList(_context.Users, "Id", "Id");
            return View();
        }

        // POST: UserIngredients/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("UserId,IngredientId,Quantity")] UserIngredient userIngredient)
        {
            if (ModelState.IsValid)
            {
                _context.Add(userIngredient);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IngredientId"] = new SelectList(_context.Ingredients, "Id", "Id", userIngredient.IngredientId);
            ViewData["UserId"] = new SelectList(_context.Users, "Id", "Id", userIngredient.UserId);
            return View(userIngredient);
        }

        // GET: UserIngredients/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var userIngredient = await _context.UserIngredients.FindAsync(id);
            if (userIngredient == null)
            {
                return NotFound();
            }
            ViewData["IngredientId"] = new SelectList(_context.Ingredients, "Id", "Id", userIngredient.IngredientId);
            ViewData["UserId"] = new SelectList(_context.Users, "Id", "Id", userIngredient.UserId);
            return View(userIngredient);
        }

        // POST: UserIngredients/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("UserId,IngredientId,Quantity")] UserIngredient userIngredient)
        {
            if (id != userIngredient.UserId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(userIngredient);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!UserIngredientExists(userIngredient.UserId))
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
            ViewData["IngredientId"] = new SelectList(_context.Ingredients, "Id", "Id", userIngredient.IngredientId);
            ViewData["UserId"] = new SelectList(_context.Users, "Id", "Id", userIngredient.UserId);
            return View(userIngredient);
        }

        // GET: UserIngredients/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var userIngredient = await _context.UserIngredients
                .Include(u => u.Ingredient)
                .Include(u => u.User)
                .FirstOrDefaultAsync(m => m.UserId == id);
            if (userIngredient == null)
            {
                return NotFound();
            }

            return View(userIngredient);
        }

        // POST: UserIngredients/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var userIngredient = await _context.UserIngredients.FindAsync(id);
            if (userIngredient != null)
            {
                _context.UserIngredients.Remove(userIngredient);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool UserIngredientExists(string id)
        {
            return _context.UserIngredients.Any(e => e.UserId == id);
        }
    }
}
