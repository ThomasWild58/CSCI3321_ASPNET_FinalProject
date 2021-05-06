<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyBooks.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.MyBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>My Books</h3>
    
    <asp:Table ID="tblBooks" runat="server" Height="94px" Width="505px" CssClass="table table-stripe">
    <asp:TableHeaderRow>
        <asp:TableHeaderCell>Book Title</asp:TableHeaderCell>
        <asp:TableHeaderCell>Author's Last Name</asp:TableHeaderCell>
        <asp:TableHeaderCell>Author's First Name</asp:TableHeaderCell>
        <asp:TableHeaderCell>Publish Date</asp:TableHeaderCell>
        <asp:TableHeaderCell>Genre</asp:TableHeaderCell>
        <asp:TableHeaderCell>Publisher's name</asp:TableHeaderCell>
        <asp:TableHeaderCell>Price</asp:TableHeaderCell>
    </asp:TableHeaderRow>
    </asp:Table>
    <!-- Build a table to list your book collection -->



    <!-- What server control should you use? -->
</asp:Content>
