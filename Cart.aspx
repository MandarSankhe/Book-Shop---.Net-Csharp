<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.Cart" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Your Shopping Cart</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Default_277.aspx">
                    <img src="Images/Logo.png" width="90"/>
                </a>
            </div>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="Default_277.aspx">BSS9Home</a></li>
                    <li><a href="Product.aspx">BSS9Products</a></li>
                    <li class="active"><a href="#">BSS9Cart</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Your shopping cart</h2>
            <div class="row">
                <div class="col-md-8">
                    <asp:ListBox ID="lstCart" runat="server" CssClass="form-control" Height="150px"></asp:ListBox>
                </div>
                <div class="col-md-4">
                    <asp:Button ID="RemoveItemButton" OnClick="btnRemove_Click" runat="server" Text="Remove Item" CssClass="btn btn-danger mb-2 btn-block" />
                    <asp:Button ID="EmptyCartButton" OnClick="btnEmpty_Click" runat="server" Text="Empty Cart" CssClass="btn btn-warning mb-2 btn-block" />
                </div>
            </div>
            <div class="row">
                <%-- row 2 --%>
                <div class="col-sm-12">
                    <div class="form-group">
                        <%-- message label --%>
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="false"
                            CssClass="text-info col-sm-12"></asp:Label>
                    </div>
                    <div class="form-group">
                        <%-- buttons --%>
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" PostBackUrl="~/Product.aspx" runat="server" Text="Continue Shopping" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCheckOut" PostBackUrl="~/Checkout.aspx" runat="server" Text="My Check Out" CssClass="btn btn-success" />
                        </div>
                    </div>
                </div>
            </div>
            <%-- end of row 2 --%>
        </div>
    </form>

</body>
</html>
