<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" 
    Inherits="ASPPivotGridExport.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<%@ Register 
    assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    namespace="DevExpress.Data.Linq" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Pivot Grid Export</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="padding-bottom: 5px">
            <dx:ASPxButton ID="DataAwareExportButton" runat="server" 
                Text="Export to XLSX" onclick="DataAwareExportButton_Click" ToolTip="Export using the Data-Aware type."/> 
            <dx:ASPxButton ID="WysiwygExportButton" runat="server" Text="Export to PDF" 
                onclick="WysiwygExportButton_Click" ToolTip="Export using the WYSIWYG type." /> 
        </div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" 
            DataSourceID="SqlDataSource1">
            <Fields>
                <dx:PivotGridField ID="fieldCountry" Area="ColumnArea" AreaIndex="0" 
                    FieldName="Country">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0" 
                    Caption="Category" FieldName="CategoryName">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1" 
                    Caption="Product" FieldName="ProductName">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0" 
                    Caption="Extended Price" FieldName="Extended_Price">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldSalesPerson" Area="ColumnArea" AreaIndex="1" 
                    Caption="Sales Person" FieldName="Sales_Person">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldQuantity" Area="DataArea" AreaIndex="1" 
                    FieldName="Quantity">
                </dx:PivotGridField>
            </Fields>
        </dx:ASPxPivotGrid>
            <dx:ASPxPivotGridExporter ID="ASPxPivotGridExporter1" runat="server">
            </dx:ASPxPivotGridExporter>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Country], [CategoryName], [ProductName], 
            [Extended Price] AS Extended_Price, [Sales Person] AS Sales_Person, 
            [Quantity] FROM [SalesPerson]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
