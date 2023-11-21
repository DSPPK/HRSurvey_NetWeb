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
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gv.AddNewRow();
            }
        }

        protected void gv_BeforeGetCallbackResult(object sender, EventArgs e)
        {
            //if (!gv.IsEditing && !gv.IsNewRowEditing)
            //{
            //    gv.AddNewRow();
            //}
        }

        protected void ButtonXLSX1_Click(object sender, EventArgs e)
        {
            gv.ExportXlsxToResponse(new XlsxExportOptionsEx { ExportType = ExportType.WYSIWYG });
        }
    }
}