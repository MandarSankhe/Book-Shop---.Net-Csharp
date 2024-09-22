<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.Checkout" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Check Out Page</title>
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
        <div class="container mt-5">
            <h2>Check Out Page</h2>

            <!-- Error Messages -->
            <div id="errorMessages" class="alert alert-danger" style="display: none;">
                <p>Please correct the following errors:</p>
                <ul id="errorList"></ul>
            </div>

            <!-- Contact Information -->
            <h4>Contact Information</h4>
            <div class="form-group">
                <label for="email">Email Address:</label>
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" placeholder="Enter email" />
                <small id="emailError" class="form-text text-danger"></small>
            </div>
            <div class="form-group">
                <label for="emailReEntry">Email Re-entry:</label>
                <asp:TextBox ID="EmailReEntryTextBox" runat="server" CssClass="form-control" placeholder="Re-enter email" />
            </div>
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" placeholder="Enter first name" />
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="form-control" placeholder="Enter last name" />
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" CssClass="form-control" placeholder="Enter phone number" />
                <small class="form-text text-danger" id="phoneError"></small>
            </div>

            <!-- Billing Address -->
            <h4>Billing Address</h4>
            <div class="form-group">
                <label for="address">Address:</label>
                <asp:TextBox ID="AddressTextBox" runat="server" CssClass="form-control" placeholder="Enter address" />
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <asp:TextBox ID="CityTextBox" runat="server" CssClass="form-control" placeholder="Enter city" />
            </div>
            <div class="form-group">
                <label for="state">State:</label>
                <asp:DropDownList ID="StateDropDown" runat="server" CssClass="form-control">
                    <asp:ListItem>Select a state</asp:ListItem>
                    <asp:ListItem>State 1</asp:ListItem>
                    <asp:ListItem>State 2</asp:ListItem>
                    <asp:ListItem>State 3</asp:ListItem>
                </asp:DropDownList>
                <small class="form-text text-danger" id="stateError"></small>
            </div>
            <div class="form-group">
                <label for="zipCode">Zip Code:</label>
                <asp:TextBox ID="ZipCodeTextBox" runat="server" CssClass="form-control" placeholder="Enter zip code" />
                <small class="form-text text-danger" id="zipError"></small>
            </div>

            <!-- Optional Data -->
            <h4>Optional Data</h4>
            <!-- Optional fields unchanged -->

            <hr />
            <div class="form-group">
                <asp:Button ID="SubmitButton" OnClientClick="return validateForm()" runat="server" CssClass="btn btn-primary" Text="Submit" />
                <asp:Button ID="btnCancel" PostBackUrl="~/Cart.aspx" runat="server" Text="Cancel Order" CssClass="btn btn-danger" />
                <asp:LinkButton runat="server" PostBackUrl="~/Product.aspx">Continue Shopping</asp:LinkButton>
            </div>
        </div>
    </form>

        <script>
            function validateForm() {
                let valid = true;
                let errorList = '';

                const email = document.getElementById('<%= EmailTextBox.ClientID %>').value;
            const emailReentry = document.getElementById('<%= EmailReEntryTextBox.ClientID %>').value;
            const phone = document.getElementById('<%= PhoneNumberTextBox.ClientID %>').value;
            const state = document.getElementById('<%= StateDropDown.ClientID %>').value;
            const zip = document.getElementById('<%= ZipCodeTextBox.ClientID %>').value;

                // Email validation
                if (!email.includes('@') || email !== emailReentry) {
                    document.getElementById('emailError').innerText = "Emails do not match or are invalid.";
                    valid = false;
                    errorList += "<li>Emails do not match or are invalid.</li>";
                } else {
                    document.getElementById('emailError').innerText = '';
                }

                // Phone validation
                const phonePattern = /^[0-9]{3}-[0-9]{3}-[0-9]{4}$/;
                if (!phonePattern.test(phone)) {
                    document.getElementById('phoneError').innerText = "Phone number is invalid.";
                    valid = false;
                    errorList += "<li>Phone number is invalid. Use the format: 123-456-7890.</li>";
                } else {
                    document.getElementById('phoneError').innerText = '';
                }

                // State validation
                if (state === "Select a state") {
                    document.getElementById('stateError').innerText = "State is required.";
                    valid = false;
                    errorList += "<li>State is required.</li>";
                } else {
                    document.getElementById('stateError').innerText = '';
                }

                // Zip code validation
                const zipPattern = /^[0-9]{5}$/;
                if (!zipPattern.test(zip)) {
                    document.getElementById('zipError').innerText = "Zip code must be 5 digits.";
                    valid = false;
                    errorList += "<li>Zip code must be 5 digits.</li>";
                } else {
                    document.getElementById('zipError').innerText = '';
                }

                // Display errors in batch at the top
                if (!valid) {
                    document.getElementById('errorMessages').style.display = 'block';
                    document.getElementById('errorList').innerHTML = errorList;
                } else {
                    document.getElementById('errorMessages').style.display = 'none';
                }

                return valid;
            }
    </script>
</body>
</html>
