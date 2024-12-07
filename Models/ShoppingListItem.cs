namespace AplikacjaKulinarna.Models
{
    public class ShoppingListItem
    {
        public int ShoppingListId { get; set; }
        public ShoppingList ShoppingList { get; set; }

        public int IngredientId { get; set; }
        public Ingredient Ingredient { get; set; }

        public decimal Quantity { get; set; } // Ilość brakującego składnika
    }
}
