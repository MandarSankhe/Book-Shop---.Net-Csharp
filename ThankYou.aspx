<%@ Page Language="C#" MasterPageFile="~/Site_0277.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.ThankYou" %>

<asp:Content ContentPlaceHolderID="Maincontent" runat="server">
    <div class="container text-center">
        <header class="jumbotron text-center bgbanner">
            <h1>Thank You for your Purchase</h1>
        </header>
        <asp:LinkButton PostBackUrl="~/Default_277" runat="server">Go to Home page</asp:LinkButton>
    </div>
</asp:Content>
