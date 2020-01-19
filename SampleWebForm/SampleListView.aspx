<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SampleListView.aspx.cs" Inherits="SampleWebForm.SampleListView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource runat="server" ID="odsProduct" EnablePaging="true"
       SelectCountMethod="GetProductCount" TypeName="SampleWebForm.ProductDAL" SelectMethod="GetProducts"
        MaximumRowsParameterName="maxRows" StartRowIndexParameterName="startIndex" />
    <asp:GridView runat="server" DataSourceID="odsProduct"
        AutoGenerateColumns="false" ID="gvProducts" PageSize="10" AllowPaging="true">
        <Columns>
             <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
        </Columns>
    </asp:GridView>
</asp:Content>
