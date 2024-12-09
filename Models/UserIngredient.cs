using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AplikacjaKulinarna.Models
{
    public class UserIngredient
    {
        [Required]
        public string UserId { get; set; }

        [ForeignKey("UserId")]
        public User User { get; set; } // Pole nawigacyjne, nieweryfikowane w ModelState

        [Required]
        public int IngredientId { get; set; }

        [ForeignKey("IngredientId")]
        public Ingredient Ingredient { get; set; } // Pole nawigacyjne, nieweryfikowane w ModelState

        [Required]
        [Range(0.01, double.MaxValue, ErrorMessage = "Ilość musi być większa niż 0.")]
        public decimal Quantity { get; set; } // Ilość posiadanego składnika
    }
}
