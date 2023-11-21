using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebApplication1
{
    public partial class Reports1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!SYS_Utils.IsAdmin(HttpContext.Current.User.Identity.Name.Split('|')[0]))
            //{
                //Response.Redirect("Default.aspx");
            //}
        }
    }
}