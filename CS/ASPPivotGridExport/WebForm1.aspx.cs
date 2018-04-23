using System;
using DevExpress.XtraPrinting;
using DevExpress.Utils;

namespace ASPPivotGridExport
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataAwareExportButton_Click(object sender, EventArgs e)
        {
            // Exports using the Data-Aware type.
            ASPxPivotGridExporter1.ExportXlsxToResponse("ASPxPivotGrid", new XlsxExportOptionsEx
            {
                AllowFixedColumns = DefaultBoolean.False,
                SheetName = "Pivot Grid Export"
            }, 
            true);
        }

        protected void WysiwygExportButton_Click(object sender, EventArgs e)
        {
            // Exports using the WYSIWYG type.
            ASPxPivotGridExporter1.ExportPdfToResponse("ASPxPivotGrid", new PdfExportOptions() 
            {
                ShowPrintDialogOnOpen = true,
            }, true);
        }
    }
}