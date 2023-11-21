using System;
using System.Web;
using System.Web.Security;

namespace DXWebApplication1
{
    public partial class Question11 : System.Web.UI.Page
    {
        protected void CheckAuthentication()
        {
            if (!HttpContext.Current.Request.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
                Response.Redirect("Default.aspx");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CheckAuthentication();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            CheckAuthentication();

            Response.Redirect("Question12.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Question10.aspx");
        }
    }
}