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
    public partial class MasterGeneral : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoggedInMenuMenu_ItemClick(object source, DevExpress.Web.Bootstrap.BootstrapMenuItemEventArgs e)
        {
            if (e.Item.Name == "Logout")
            {
                FormsAuthentication.SignOut();
                //SYS_Utils.ResetSurvey(HttpContext.Current.User.Identity.Name.Split('|')[0]);
                Response.Redirect("Default.aspx");
            }
        }
    }
}