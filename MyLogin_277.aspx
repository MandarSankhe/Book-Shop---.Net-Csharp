<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyLogin_277.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.MyLogin_277" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Bookstore</title>

    <!-- Bootstrap CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex align-items-center min-vh-100">
            <div class="row justify-content-center w-100">
                <div class="col-md-12">
                    <!-- Card for Login Form -->
                    <div class="card shadow-lg border-0 rounded-lg">
                        <div class="card-header bg-dark text-white text-center">
                            <h3 class="mb-0">Login to Bookstore</h3>
                        </div>
                        <div class="card-body p-4">
                            <!-- First Name Field -->
                            <div class="form-group mb-3">
                                <label for="TxtFirstName">YOur First Name <span class="text-danger">*</span></label>
                                <asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control" placeholder="Enter first name" />
                                <asp:RequiredFieldValidator ID="ReqFirstName" runat="server" ControlToValidate="TxtFirstName"
                                    ErrorMessage="First Name is required" CssClass="text-danger" Display="Dynamic" />
                            </div>

                            <!-- Last Name Field -->
                            <div class="form-group mb-3">
                                <label for="TxtLastName">YOur Last Name <span class="text-danger">*</span></label>
                                <asp:TextBox ID="TxtLastName" runat="server" CssClass="form-control" placeholder="Enter last name" />
                                <asp:RequiredFieldValidator ID="ReqLastName" runat="server" ControlToValidate="TxtLastName"
                                    ErrorMessage="Last Name is required" CssClass="text-danger" Display="Dynamic" />
                            </div>

                            <!-- Buttons Section -->
                            <div class="d-flex justify-content-between mt-4">
                                <asp:Button ID="BtnLogin" runat="server" Text="Login_SC9_277" CssClass="btn btn-primary px-4" OnClick="BtnLogin_Click" />
                                <asp:Button ID="BtnCancel" runat="server" CausesValidation="false" Text="Cancel My Login" CssClass="btn btn-secondary px-4" PostBackUrl="~/Default_277" />
                            </div>
                        </div>

                        <!-- Error Messages Display -->
                        <div class="card-footer text-danger text-center">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>


</body>
</html>
