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
    public partial class MasterMain : System.Web.UI.MasterPage
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
                (this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items.Add("Admin", "Admin", "", "#");
                (this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items[1].Items.Add("Reports", "Reports", "", "#");
                (this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items[1].Items[0].Items.Add("Chart Reports", "Chart Reports", "", "~/Reports1.aspx");
                (this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items[1].Items[0].Items.Add("Export Reports", "Export Reports", "", "~/Reports2.aspx");

                (this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items[1].Items.Add("Users", "Users", "", "#");
                (this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items[1].Items[1].Items.Add("Registrasi Users", "Registrasi Users", "", "~/UserRegistration.aspx");
                (this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items[1].Items[1].Items.Add("Change Password", "Change Password", "", "~/ChangePassword.aspx");

                //(this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items.Add("Reports", "Reports", "fa fa-lock", "#");
                //(this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items[1].Items.Add("Chart Reports", "Chart Reports", "fa fa-lock", "~/Reports1.aspx");
                //(this.HeadLoginView.FindControl("LoggedInMenu") as DevExpress.Web.Bootstrap.BootstrapMenu).Items[1].Items.Add("Export Reports", "Export Reports", "fa fa-building", "~/Reports2.aspx");
           
        }

        protected void LoggedInMenuMenu_ItemClick(object source, DevExpress.Web.Bootstrap.BootstrapMenuItemEventArgs e)
        {
            if (e.Item.Name == "Logout")
            {
                FormsAuthentication.SignOut();
                Response.Redirect("Default.aspx");
            }
        }
    }
}