namespace AplikacjaKulinarna.Models
{
    public class Ingredient
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string WeightUnit { get; set; }
        public string Category { get; set; }
        public ICollection<RecipeIngredient> RecipeIngredients { get; set; }
        public ICollection<UserIngredient> UserIngredients { get; set; } // Nowa kolekcja
    }
}
