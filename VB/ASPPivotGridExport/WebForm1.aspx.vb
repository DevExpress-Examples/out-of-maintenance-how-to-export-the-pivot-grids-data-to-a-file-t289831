Imports System
Imports DevExpress.XtraPrinting
Imports DevExpress.Utils

Namespace ASPPivotGridExport
    Partial Public Class WebForm1
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

        End Sub

        Protected Sub DataAwareExportButton_Click(ByVal sender As Object, ByVal e As EventArgs)
            ' Exports using the Data-Aware type.
            ASPxPivotGridExporter1.ExportXlsxToResponse("ASPxPivotGrid", New XlsxExportOptionsEx With 
			{.AllowFixedColumns = DefaultBoolean.False, .SheetName = "Pivot Grid Export"}, True)
        End Sub

        Protected Sub WysiwygExportButton_Click(ByVal sender As Object, ByVal e As EventArgs)
            ' Exports using the WYSIWYG type.
            ASPxPivotGridExporter1.ExportPdfToResponse("ASPxPivotGrid", New PdfExportOptions() With 
			{.ShowPrintDialogOnOpen = True}, True)
        End Sub
    End Class
End Namespace