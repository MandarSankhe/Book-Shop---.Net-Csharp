<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.ThankYou" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>ThankYou Page</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-default">
        <!-- Navbar code unchanged -->
    </nav>

    <form id="form1" runat="server">
        <div class="container text-center">
            <header class="jumbotron text-center"><h1>Thank You for your Purchase</h1></header>
            <asp:LinkButton runat="server" PostBackUrl="~/Default_277.aspx">Go to Home page</asp:LinkButton>
        </div>
    </form>


</body>
</html>
