using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DevExpress.Export;
using DevExpress.Web;
using DevExpress.XtraPrinting;

namespace DXWebApplication1
{
    public partial class Reports2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!SYS_Utils.IsAdmin(HttpContext.Current.User.Identity.Name.Split('|')[0]))
            //{
                Response.Redirect("Default.aspx");
            //}
        }

        protected void ButtonXLSX1_Click(object sender, EventArgs e)
        {
            GridViewExport.ExportXlsxToResponse(new XlsxExportOptionsEx { ExportType = ExportType.WYSIWYG });
        }
    }
}