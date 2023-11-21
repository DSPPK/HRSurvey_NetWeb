using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace DXWebApplication1
{
    public partial class Welcome : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                lblEmployeeName.Text = "test";
                lblDirectorateName.Text = "test Directorate";
                lblDivisionName.Text = "Division Test";
                lblPositionName.Text = "Position Test";
                lblWorkLocation.Text = "Location Test";
            }
        }

        protected void btnStartSurvey_Click(object sender, EventArgs e)
        {
            //if (SYS_Utils.IsSubmitted(HttpContext.Current.User.Identity.Name.Split('|')[0]))
            //{
            //    Response.Redirect("IsSubmitted.aspx");
            //}
            //else
            //{
                Response.Redirect("Question10.aspx");
            //}
        }
    }
}