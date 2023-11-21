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
    public partial class Question10 : System.Web.UI.Page
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
            //if (SYS_Utils.IsSubmitted(HttpContext.Current.User.Identity.Name.Split('|')[0]))
            //{
            //    Response.Redirect("IsSubmitted.aspx");
            //}
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            CheckAuthentication();
            //if (SYS_Utils.IsSubmitted(HttpContext.Current.User.Identity.Name.Split('|')[0]))
            //{
            //    Response.Redirect("IsSubmitted.aspx");
            //}
            //SYS_Utils.SetSurveyResult10(HttpContext.Current.User.Identity.Name.Split('|')[0], cboMutationDestination.SelectedItem.Value.ToString());
            //switch (cboMutationDestination.SelectedIndex)
            //{
            //    case 0:
                    Response.Redirect("Question11.aspx");
                //    break;
                //case 1:
                //    Response.Redirect("Question12.aspx");
                //    break;
                //case 2:
                //    Response.Redirect("Question13.aspx");
                //    break;
                //default:
                //    break;
            //}
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}