<%@ Page Language="C#" MasterPageFile="~/Site_0277.Master" AutoEventWireup="true" CodeBehind="Default_277.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.Default_277" %>


<asp:Content ContentPlaceHolderID="Maincontent" runat="server">

    <div class="container mt-5">
        <div class="jumbotron text-center homebanner">
            <h1><span id="spnUsername" runat="server"></span></h1>
            <p><b>Discover a wide collection of books, from bestsellers to classics, and everything in between.</b></p>
            <asp:Button ID="btnBrowseBooks" PostBackUrl="~/Product" runat="server" Text="Browse Books" CssClass="btn btn-success btn-lg" />
        </div>

        <div class="row mt-4">
            <h3>Our Collection: </h3>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [BookID], [Title], [Author], [PublicationYear], [GenreID], [Price], [ImageFile] FROM [TheBooks_80277] ORDER BY [PublicationYear]"></asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <a href='/Product/<%# Eval("BookID") %>'>
                                <img src="/Images/<%# Eval("ImageFile") %>" />
                            </a>
                            <div class="caption">
                                <h4 class="text-limit"><%# Eval("Title") %></h4>
                                <p><b>Price:<%# Eval("Price") %></b></p>
                                <br />
                                <br />
                                <%# Eval("Author") %>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>


</asp:Content>
