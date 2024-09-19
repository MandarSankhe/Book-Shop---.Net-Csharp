<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.Cart" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Check Out Page</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Check Out Page</h2>

            <!-- Contact Information -->
            <h4>Contact Information</h4>
            <div class="form-group">
                <label for="email">Email Address:</label>
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" placeholder="Enter email" />
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
                <small class="form-text text-danger">Phone number is required.</small>
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
                <small class="form-text text-danger">City is required.</small>
            </div>
            <div class="form-group">
                <label for="state">State:</label>
                <asp:DropDownList ID="StateDropDown" runat="server" CssClass="form-control">
                    <asp:ListItem>Select a state</asp:ListItem>
                    <asp:ListItem>State 1</asp:ListItem>
                    <asp:ListItem>State 2</asp:ListItem>
                    <asp:ListItem>State 3</asp:ListItem>
                </asp:DropDownList>
                <small class="form-text text-danger">State is required.</small>
            </div>
            <div class="form-group">
                <label for="zipCode">Zip Code:</label>
                <asp:TextBox ID="ZipCodeTextBox" runat="server" CssClass="form-control" placeholder="Enter zip code" />
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
            <div class="mt-4">
                <asp:Button ID="CheckOutButton" runat="server" Text="Check Out" CssClass="btn btn-success mr-2" />
                <asp:Button ID="CancelOrderButton" runat="server" Text="Cancel Order" CssClass="btn btn-danger mr-2" />
                <asp:Button ID="ContinueShoppingButton" runat="server" Text="Continue Shopping" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>