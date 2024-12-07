namespace AplikacjaKulinarna.Models
{
    public class RecipeIngredient
    {
        public int RecipeId { get; set; }
        public Recipe Recipe { get; set; }
        public int IngredientId { get; set; }
        public Ingredient Ingredient { get; set; }
        public decimal Quantity { get; set; }
        public string Unit { get; set; }

        public decimal GetConvertedPrice()
        {
            if (Ingredient == null || Ingredient.Price <= 0) return 0;

            decimal conversionFactor = GetConversionFactor();

            return (Quantity / conversionFactor) * Ingredient.Price;
        }

        public decimal GetConversionFactor()
        {
            return Unit switch
            {
                "gram" => 1000m,
                "kilogram" => 1m,
                "ml" => 1000m,
                "litr" => 1m,
                _ => 1m
            };
        }
    }
}
