//277_Mandar

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mandar_Sankhe_BSS9_277
{
    public partial class MyLogin_277 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            //Initializing and setting the cookie
            HttpCookie UserNameCookie = new HttpCookie("UserName", TxtFirstName.Text);
            UserNameCookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(UserNameCookie);
            Response.Redirect("~/Product");
        }

    }
}