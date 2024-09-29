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
    </nav>

    <form id="form1" runat="server">
        <div class="container text-center">
            <header class="jumbotron text-center bgbanner"><h1>Thank You for your Purchase</h1></header>
            <asp:LinkButton PostBackUrl="~/Default_277.aspx" runat="server">Go to Home page</asp:LinkButton>
        </div>
    </form>


</body>
</html>
