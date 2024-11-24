//277_Mandar
//Theme Source: https://bootswatch.com/3/journal

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mandar_Sankhe_BSS9_277
{
    public partial class Default_277 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Setting the welcome message from cookie
            if (!(Request.Cookies["UserName"] == null))
            {
                spnUsername.InnerText = "Welcome to our bookstore, " + 
                    Request.Cookies["UserName"].Value + "!";
            }

        }
    }
}