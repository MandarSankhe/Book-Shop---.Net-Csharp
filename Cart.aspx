<%@ Page Language="C#" MasterPageFile="~/Site_0277.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.Cart" %>

<asp:Content ContentPlaceHolderID="Maincontent" runat="server">
    <div class="container mt-5">
        <h2>Your shopping cart</h2>
        <div class="row">
            <div class="col-md-8">
                <asp:ListBox ID="lstCart" runat="server" CssClass="form-control" Height="150px"></asp:ListBox>
            </div>
            <div class="col-md-4">
                <asp:Button ID="RemoveItemButton" OnClick="btnRemove_Click" runat="server" Text="Remove my Item" CssClass="btn btn-warning mb-2 btn-block" />
                <asp:Button ID="EmptyCartButton" OnClick="btnEmpty_Click" runat="server" Text="Empty the Cart" CssClass="btn btn-danger mb-2 btn-block" />
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
                        <asp:Button ID="btnContinue" PostBackUrl="~/Product" runat="server" Text="Continue Shopping" CssClass="btn btn-info" />
                        <asp:Button ID="btnCheckOut" OnClick="btnCheckOut_Click" runat="server" Text="My Check Out" CssClass="btn btn-success" />
                    </div>
                </div>
            </div>
        </div>
        <%-- end of row 2 --%>
    </div>
</asp:Content>
