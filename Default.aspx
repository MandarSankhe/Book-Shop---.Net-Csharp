<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Welcome to BookStore</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img src="Images/Logo.png" width="90" />
                </a>
            </div>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="Home.aspx">Home</a></li>
                    <li><a href="Product.aspx">Products</a></li>
                    <li><a href="Cart.aspx">Cart</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="jumbotron text-center">
                <h1>Welcome to Our BookStore!</h1>
                <p>Discover a wide collection of books, from bestsellers to classics, and everything in between.</p>
                <asp:Button ID="btnBrowseBooks" PostBackUrl="~/Product.aspx" runat="server" Text="Browse Books" CssClass="btn btn-success btn-lg" />
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="Images/harrypotter1.jpg" alt="Books" class="img-responsive" />
                        <div class="caption">
                            <h3>Popular Books</h3>
                            <p>Find the best-selling and most popular books of all time.</p>
                            <p><a href="Product.aspx" class="btn btn-primary" role="button">View Products</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="Images/silent_patient.jpg" alt="New Arrivals" class="img-responsive" />
                        <div class="caption">
                            <h3>New Arrivals</h3>
                            <p>Check out the latest arrivals at our bookstore.</p>
                            <p><a href="Product.aspx" class="btn btn-primary" role="button">View Products</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="Images/dune.jpg" alt="Discounts" class="img-responsive" />
                        <div class="caption">
                            <h3>Discount Offers</h3>
                            <p>Don't miss out on special deals and offers on various books.</p>
                            <p><a href="Product.aspx" class="btn btn-primary" role="button">View Products</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
