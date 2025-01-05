using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;

namespace AplikacjaKulinarna.Models
{
    public class RecipeCreateViewModel
    {
        public Recipe Recipe { get; set; }

        // Lista składników do wyświetlenia (dropdown)
        public List<SelectListItem> Ingredients { get; set; } = new List<SelectListItem>();

        // Hidden fields do przechowywania ID i ilości
        public string IngredientIds { get; set; }
        public string Quantities { get; set; }
    }
}
