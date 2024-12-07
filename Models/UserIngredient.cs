namespace AplikacjaKulinarna.Models
{
    public class UserIngredient
    {
        public string UserId { get; set; }
        public User User { get; set; }

        public int IngredientId { get; set; }
        public Ingredient Ingredient { get; set; }

        public decimal Quantity { get; set; } // Ilość posiadanego składnika
    }
}
