<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-3">
            Book Title:
            
            
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBookTitle" runat="server" CssClass="form-control" Width="447px"></asp:TextBox>
            </div>
        <div class="col-md-3">&nbsp;</div>

            <div class="col-md-3">

            Price:
            
            
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" Width="447px"></asp:TextBox>
            </div>

        <div class="col-md-3">&nbsp;</div>

         <div class="col-md-3">

            Publish date:
            
            
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPublishDate" runat="server" CssClass="form-control" Width="447px"></asp:TextBox>
            </div>

        <div class="col-md-3">&nbsp;</div>

         <div class="col-md-3">

            Author:
            
            
        </div>
        <div class="col-md-9">

            <asp:DropDownList ID="ddlAuthorFirst" runat="server" DataSourceID="dsdAuthor" DataTextField="FirstName" DataValueField="AuthorID">
            </asp:DropDownList>

            <asp:DropDownList ID="ddlAuthorLast" runat="server" DataSourceID="dsdAuthor" DataTextField="LastName" DataValueField="AuthorID">
            </asp:DropDownList>

            <asp:SqlDataSource ID="dsdAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, FirstName, LastName FROM Authors"></asp:SqlDataSource>

            </div>

        <div class="col-md-3">&nbsp;</div>

        <div class="col-md-3">
            Publisher:
            
            
        </div>
        <div class="col-md-9">

            <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="dsdPublisher" DataTextField="PublisherName" DataValueField="PublisherID">
            </asp:DropDownList>

            <asp:SqlDataSource ID="dsdPublisher" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>

            </div>

        <div class="col-md-3">&nbsp;</div>

        <div class="col-md-3">
            Genre:
            
            
        </div>
        <div class="col-md-9">

            <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="dsdGenre" DataTextField="GenreName" DataValueField="GenreID">
            </asp:DropDownList>

            <asp:SqlDataSource ID="dsdGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>

            </div>

        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text="Add Book" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
        </div>

    </div>
</asp:Content>
