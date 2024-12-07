namespace AplikacjaKulinarna.Models
{
    public class ShoppingList
    {
        public int Id { get; set; }


        public string UserId { get; set; }
        public User User { get; set; }

        public ICollection<ShoppingListItem> ShoppingListItems { get; set; }
        public decimal TotalCost { get; set; }
    }
}
