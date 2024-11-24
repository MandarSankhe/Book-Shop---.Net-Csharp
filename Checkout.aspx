<%@ Page Language="C#" MasterPageFile="~/Site_0277.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.Checkout" %>

<asp:Content ContentPlaceHolderID="Maincontent" runat="server">
    <div class="container mt-5">
        <h2>Check Out Page</h2>

        <!-- Error Messages -->
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" HeaderText="Please correct the following errors:" />

        <div class="row">
            <div class="col-sm-12 col-md-6">
                <!-- Contact Information -->
                <h4>Contact Information</h4>
                <div class="form-group">
                    <label for="email">Your Email Address:</label>
                    <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" placeholder="Enter email" />
                    <asp:RequiredFieldValidator ID="EMailRequired" runat="server"
                        ControlToValidate="EmailTextBox"
                        ErrorMessage="Email is required."
                        CssClass="text-danger" />
                    <asp:RegularExpressionValidator ID="EmailValidator" runat="server"
                        ControlToValidate="EmailTextBox"
                        ErrorMessage="Your email address is not valid"
                        CssClass="text-danger"
                        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" />
                </div>
                <div class="form-group">
                    <label for="emailReEntry">Email Re-entry:</label>
                    <asp:TextBox ID="EmailReEntryTextBox" runat="server" CssClass="form-control" placeholder="Re-enter email" />
                    <asp:CompareValidator ID="EmailReEntryValidator" runat="server"
                        ControlToCompare="EmailTextBox"
                        ControlToValidate="EmailReEntryTextBox"
                        ErrorMessage="Must match the first email address."
                        CssClass="text-danger" />
                </div>
                <div class="form-group">
                    <label for="firstName">F Name:</label>
                    <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" placeholder="Enter first name" />
                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server"
                        ControlToValidate="FirstNameTextBox"
                        ErrorMessage="First name is required."
                        CssClass="text-danger" />
                </div>
                <div class="form-group">
                    <label for="lastName">L Name:</label>
                    <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="form-control" placeholder="Enter last name" />
                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server"
                        ControlToValidate="LastNameTextBox"
                        ErrorMessage="Last name is required."
                        CssClass="text-danger" />
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Phone Number:</label>
                    <asp:TextBox ID="PhoneNumberTextBox" runat="server" CssClass="form-control" placeholder="Enter phone number" />
                    <asp:RequiredFieldValidator ID="PhoneNumberRequired" runat="server"
                        ControlToValidate="PhoneNumberTextBox"
                        ErrorMessage="Phone number is required."
                        CssClass="text-danger" />
                    <asp:RegularExpressionValidator ID="PhoneValidator" runat="server"
                        ControlToValidate="PhoneNumberTextBox"
                        ErrorMessage="Use this format: 123-456-7890."
                        CssClass="text-danger"
                        ValidationExpression="^\d{3}-\d{3}-\d{4}$" />
                </div>
            </div>

            <div class="col-sm-12 col-md-6">
                <!-- Billing Address -->
                <h4>Billing Address</h4>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <asp:TextBox ID="AddressTextBox" runat="server" CssClass="form-control" placeholder="Enter address" />
                    <asp:RequiredFieldValidator ID="AddressRequired" runat="server"
                        ControlToValidate="AddressTextBox"
                        ErrorMessage="Address is required."
                        CssClass="text-danger" />
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <asp:TextBox ID="CityTextBox" runat="server" CssClass="form-control" placeholder="Enter city" />
                    <asp:RequiredFieldValidator ID="CityRequired" runat="server"
                        ControlToValidate="CityTextBox"
                        ErrorMessage="City is required."
                        CssClass="text-danger" />
                </div>
                <div class="form-group">
                    <label for="state">State:</label>
                    <asp:DropDownList ID="StateDropDown" runat="server" CssClass="form-control">
                        <asp:ListItem>Select a state</asp:ListItem>
                        <asp:ListItem>Ontario</asp:ListItem>
                        <asp:ListItem>BC</asp:ListItem>
                        <asp:ListItem>Quebec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="StateRequired" runat="server"
                        ControlToValidate="StateDropDown"
                        InitialValue="Select a state"
                        ErrorMessage="State is required"
                        CssClass="text-danger" />
                </div>
                <div class="form-group">
                    <label for="zipCode">Zip Code:</label>
                    <asp:TextBox ID="ZipCodeTextBox" runat="server" CssClass="form-control" placeholder="Enter zip code" />
                    <asp:RequiredFieldValidator ID="ZipRequired" runat="server"
                        ControlToValidate="ZipCodeTextBox"
                        ErrorMessage="Zip code is required."
                        CssClass="text-danger" />
                    <asp:RegularExpressionValidator ID="ZipValidator" runat="server"
                        ControlToValidate="ZipCodeTextBox"
                        ErrorMessage="Use this format: 99999 or 99999-9999."
                        CssClass="text-danger"
                        ValidationExpression="^\d{5}(-\d{4})?$" />
                </div>
            </div>
        </div>

        <!-- Optional Data and Action Buttons -->

        <!-- Optional Data and Action Buttons -->

        <div class="row">
            <div class="col-sm-12 col-md-6">
                <!-- Optional Data -->
                <h4>Optional Data</h4>

                <p>Please let me know about:</p>
                <div class="form-check-inline">
                    <asp:CheckBox ID="NewProductsCheckBox" Checked="true" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="newProducts">New products</label>
                    <asp:CheckBox ID="NewEditionsCheckBox" Checked="true" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="newEditions">New editions</label>
                </div>
                <div class="form-check-inline">
                    <asp:CheckBox ID="SpecialOffersCheckBox" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="specialOffers">Special offers</label>
                    <asp:CheckBox ID="LocalEventsCheckBox" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="localEvents">Local events</label>
                </div>
            </div>
            <div class="col-sm-12 col-md-6">

                <p>Please get in touch via:</p>
                <!-- Display Radio Buttons Horizontally -->
                <div class="form-check-inline">
                    <asp:RadioButton ID="ContactTwitterRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                    <label class="form-check-label" for="twitter">Twitter</label>
                    <asp:RadioButton ID="ContactFacebookRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                    <label class="form-check-label" for="facebook">Facebook</label>
                    <asp:RadioButton ID="ContactTextRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                    <label class="form-check-label" for="textMessage">SMS</label>
                    <asp:RadioButton Checked="true" ID="ContactEmailRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                    <label class="form-check-label" for="email">Email</label>
                </div>
            </div>
        </div>

        <div class="form-group">
            <asp:Button ID="SubmitButton" OnClick="SubmitButton_Click" runat="server" CssClass="btn btn-primary" Text="Place Order" />
            <asp:Button ID="btnCancel" CausesValidation="false" PostBackUrl="~/Cart" runat="server" Text="Go Back to Cart" CssClass="btn btn-danger" />
            <asp:LinkButton runat="server" CausesValidation="false" PostBackUrl="~/Product">Continue Shopping</asp:LinkButton>
        </div>
    </div>
</asp:Content>
