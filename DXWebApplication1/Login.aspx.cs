using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace DXWebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (tbUserName.Text != null)
            {
                if (string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                {
                    Response.Redirect("Welcome.aspx");
                }
                else
                {
                }
            }
            else
            {
                tbUserName.ErrorText = "Invalid Username or Password.";
                tbUserName.IsValid = false;
            }
        }
    }
}