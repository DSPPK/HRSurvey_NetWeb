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
    public partial class Question23 : System.Web.UI.Page
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
            Response.Redirect("Question30.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Question22.aspx");
        }
    }
}