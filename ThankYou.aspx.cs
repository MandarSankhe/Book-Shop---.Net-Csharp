//277_Mandar

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mandar_Sankhe_BSS9_277
{
    public partial class ThankYou : System.Web.UI.Page
    {
        private CartItemList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Cart"] = null; 
            
            //art!=null || cart.Count > 0)
            
              //  cart.Clear();
            //}

        }
    }
}