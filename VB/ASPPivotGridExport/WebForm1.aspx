<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="WebForm1.aspx.vb" 
    Inherits="ASPPivotGridExport.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<%@ Register 
    assembly="DevExpress.Web.v21.2, Version=21.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
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
            DataSourceID="SqlDataSource1" OptionsData-DataProcessingEngine="Optimized" IsMaterialDesign="False">
            <Fields>
                <dx:PivotGridField ID="fieldCountry1" Area="ColumnArea" AreaIndex="0" Name="fieldCountry1">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Country" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCategoryName1" Area="RowArea" AreaIndex="0" 
                    Caption="Category" Name="fieldCategoryName1">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="CategoryName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldProductName1" Area="RowArea" AreaIndex="1" 
                    Caption="Product" Name="fieldProductName1">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldExtendedPrice1" Area="DataArea" AreaIndex="0" 
                    Caption="Extended Price" Name="fieldExtendedPrice1">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Extended_Price" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldSalesPerson1" Area="ColumnArea" AreaIndex="1" 
                    Caption="Sales Person" Name="fieldSalesPerson1">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Sales_Person" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldQuantity1" Area="DataArea" AreaIndex="1" Name="fieldQuantity1">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Quantity" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
            </Fields>

<OptionsData DataProcessingEngine="Optimized"></OptionsData>
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