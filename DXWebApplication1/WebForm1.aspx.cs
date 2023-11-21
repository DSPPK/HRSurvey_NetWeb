using System;
using System.Web.Security;

namespace DXWebApplication1
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {

            Membership.DeleteUser(txtNIK.Text);
            Membership.CreateUser(txtNIK.Text, txtNewPassword.Text);

            lblStatus.Text = "Its DONE!";
        }
    }
}