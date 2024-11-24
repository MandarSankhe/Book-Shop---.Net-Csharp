<%@ Page Language="C#" MasterPageFile="~/Site_0277.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.Products" %>

<asp:Content ContentPlaceHolderID="Maincontent" runat="server">
    <div class="container">
        <header class="jumbotron text-center bgbanner">
            <h1><span id="spnUsername" runat="server"></span></h1>
            <h2>Browse our Books</h2>
        </header>
        <main>

            <div class="row">
                <%-- row 1 --%>
                <div class="col-sm-8">
                    <%-- product drop down and info column --%>
                    <div class="form-group">
                        <label class="col-sm-4">Please select a Book:</label>
                        <div class="col-sm-6">
                            <asp:DropDownList ID="ddlBooks" DataSourceID="SqlDataSource1" DataTextField="Title" AutoPostBack="True" DataValueField="BookID" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [BookID], [Title], [Author], [PublicationYear], [GenreID], [Price], [ImageFile] FROM [TheBooks_80277]"></asp:SqlDataSource>
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4>
                                <b><span>Book Title: </span></b>
                                <asp:Label ID="lblName" runat="server"></asp:Label>
                            </h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <b><span>Author Name: </span></b>
                            <asp:Label ID="lblAuthor" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <b><span>Year Published: </span></b>
                            <asp:Label ID="lblYearPublished" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <b><span>Price: </span></b>
                            <asp:Label ID="lblUnitPrice" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <%-- product image column --%>
                    <asp:Image ID="imgBook" CssClass="bookImage" runat="server" />
                </div>
            </div>
            <%-- end of row 1 --%>

            <div class="row">
                <%-- row 2 --%>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="col-sm-1">Quantity:</label>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtQuantity" runat="server"
                                CssClass="form-control">
                            </asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger"
                                runat="server" ControlToValidate="txtQuantity" Display="Dynamic"
                                ErrorMessage="Quantity is a required field.">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-success"
                                ControlToValidate="txtQuantity" Display="Dynamic"
                                ErrorMessage="Quantity must range from 7 to 100."
                                MaximumValue="100" MinimumValue="7" Type="Integer">
                            </asp:RangeValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="btnAdd" runat="server" Text="Add to my Cart" CssClass="btn" OnClick="btnAdd_Click" />
                            <asp:Button ID="btnCart" runat="server" Text="Go to my Cart"
                                PostBackUrl="~/Cart" CausesValidation="False" CssClass="btn" />
                        </div>
                    </div>
                </div>
            </div>
            <%-- end of row 2 --%>
        </main>
    </div>

</asp:Content>
