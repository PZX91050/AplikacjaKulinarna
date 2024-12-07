namespace AplikacjaKulinarna.Models
{
    public class Recipe
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string IngredientsString { get; set; }
        public ICollection<RecipeIngredient> Ingredients { get; set; }
        public string PreparationInstructions { get; set; }
        public string? ImagePath { get; set; } // Ścieżka do pliku obrazu

        public decimal TotalPrice =>
            Ingredients?.Sum(i => i.GetConvertedPrice()) ?? 0;
    }
}
