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
                <small id="firstNameError" class="form-text text-danger"></small>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="form-control" placeholder="Enter last name" />
                <small id="lastNameError" class="form-text text-danger"></small>
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
                <small id="addressError" class="form-text text-danger"></small>
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <asp:TextBox ID="CityTextBox" runat="server" CssClass="form-control" placeholder="Enter city" />
                <small id="cityError" class="form-text text-danger"></small>
            </div>
            <div class="form-group">
                <label for="state">State:</label>
                <asp:DropDownList ID="StateDropDown" runat="server" CssClass="form-control">
                    <asp:ListItem>Select a state</asp:ListItem>
                    <asp:ListItem>Ontario</asp:ListItem>
                    <asp:ListItem>BC</asp:ListItem>
                    <asp:ListItem>Quebec</asp:ListItem>
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

            <p>Please let me know about:</p>
            <div class="form-check">
                <asp:CheckBox ID="NewProductsCheckBox" runat="server" CssClass="form-check-input" />
                <label class="form-check-label" for="newProducts">New products</label>
            </div>
            <div class="form-check">
                <asp:CheckBox ID="SpecialOffersCheckBox" runat="server" CssClass="form-check-input" />
                <label class="form-check-label" for="specialOffers">Special offers</label>
            </div>
            <div class="form-check">
                <asp:CheckBox ID="NewEditionsCheckBox" runat="server" CssClass="form-check-input" />
                <label class="form-check-label" for="newEditions">New editions</label>
            </div>
            <div class="form-check">
                <asp:CheckBox ID="LocalEventsCheckBox" runat="server" CssClass="form-check-input" />
                <label class="form-check-label" for="localEvents">Local events</label>
            </div>

            <p>Please contact me via:</p>
            <div class="form-check form-check-inline">
                <asp:RadioButton ID="ContactTwitterRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                <label class="form-check-label" for="twitter">Twitter</label>
            </div>
            <div class="form-check form-check-inline">
                <asp:RadioButton ID="ContactFacebookRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                <label class="form-check-label" for="facebook">Facebook</label>
            </div>
            <div class="form-check form-check-inline">
                <asp:RadioButton ID="ContactTextRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                <label class="form-check-label" for="textMessage">Text message</label>
            </div>
            <div class="form-check form-check-inline">
                <asp:RadioButton ID="ContactEmailRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                <label class="form-check-label" for="email">Email</label>
            </div>

            <!-- Action Buttons -->

            <hr />
            <div class="form-group">
                <asp:Button ID="SubmitButton" OnClick="SubmitButton_Click" OnClientClick="return validateForm()" runat="server" CssClass="btn btn-primary" Text="Place Order" />
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
                const firstName = document.getElementById('<%= FirstNameTextBox.ClientID %>').value;
                const lastName = document.getElementById('<%= LastNameTextBox.ClientID %>').value;
                const phone = document.getElementById('<%= PhoneNumberTextBox.ClientID %>').value;
                const address = document.getElementById('<%= AddressTextBox.ClientID %>').value;
                const city = document.getElementById('<%= CityTextBox.ClientID %>').value;
                const state = document.getElementById('<%= StateDropDown.ClientID %>').value;
                const zip = document.getElementById('<%= ZipCodeTextBox.ClientID %>').value;

                // Email validation
                const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                if (!emailPattern.test(email) || email !== emailReentry) {
                    document.getElementById('emailError').innerText = "Emails do not match or are invalid.";
                    valid = false;
                    errorList += "<li>Emails do not match or are invalid.</li>";
                } else {
                    document.getElementById('emailError').innerText = '';
                }

                // First Name validation
                if (firstName.trim() === '') {
                    document.getElementById('firstNameError').innerText = "First name is required.";
                    valid = false;
                    errorList += "<li>First name is required.</li>";
                } else {
                    document.getElementById('firstNameError').innerText = '';
                }

                // Last Name validation
                if (lastName.trim() === '') {
                    document.getElementById('lastNameError').innerText = "Last name is required.";
                    valid = false;
                    errorList += "<li>Last name is required.</li>";
                } else {
                    document.getElementById('lastNameError').innerText = '';
                }

                // Address validation
                if (address.trim() === '') {
                    document.getElementById('addressError').innerText = "Address is required.";
                    valid = false;
                    errorList += "<li>Address is required.</li>";
                } else {
                    document.getElementById('addressError').innerText = '';
                }

                // City validation
                if (city.trim() === '') {
                    document.getElementById('cityError').innerText = "City is required.";
                    valid = false;
                    errorList += "<li>City is required.</li>";
                } else {
                    document.getElementById('cityError').innerText = '';
                }

                // Show or hide error list
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
