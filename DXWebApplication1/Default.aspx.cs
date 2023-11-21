using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace DXWebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.IsAuthenticated)
            {
                Response.Redirect("Welcome.aspx");
            }
            //FormsAuthentication.SignOut();
            //Response.Redirect("Default.aspx");
        }

        protected void btnLogon_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}