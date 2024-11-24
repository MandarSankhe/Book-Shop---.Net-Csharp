using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace Mandar_Sankhe_BSS9_277
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            routes.MapPageRoute("Default_277", "Default_277", "~/Default_277.aspx");
            routes.MapPageRoute("Cart", "Cart", "~/Cart.aspx");
            routes.MapPageRoute("Products", "Products", "~/Product.aspx");
            routes.MapPageRoute("Checkout", "Checkout", "~/CheckOut.aspx");
            routes.MapPageRoute("MyLogin_277", "MyLogin_277", "~/MyLogin_277.aspx");
            routes.MapPageRoute("ThankYou", "ThankYou", "~/ThankYou.aspx");
        }
    }
}
