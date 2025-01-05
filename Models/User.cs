using Microsoft.AspNetCore.Identity;
namespace AplikacjaKulinarna.Models
{
    public class User : IdentityUser
    {
        public decimal Budget { get; set; }
        public ICollection<UserIngredient> UserIngredients { get; set; }
        
    }
}
