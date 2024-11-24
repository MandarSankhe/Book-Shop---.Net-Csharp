<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site_0277.Master" CodeBehind="The_Admin_Sec9.aspx.cs" Inherits="Mandar_Sankhe_BSS9_277.The_Admin_Sec9" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-4">
        <!-- Section for Genres -->
        <h2 class="mb-3 text-primary">Manage Genres</h2>

        <!-- DropDownList for genres -->
        <div class="mb-3">
            <label for="DropDownListGenres_277" class="form-label">Choose a genre</label>
            <asp:DropDownList ID="DropDownListGenres_277" runat="server" DataSourceID="SqlDataSourceGenresCRUD_0277"
                DataTextField="GenreName" DataValueField="GenreID" AutoPostBack="True"
                CssClass="form-select" OnSelectedIndexChanged="DropDownListGenres_277_SelectedIndexChanged">
            </asp:DropDownList>
        </div>

        <!-- DataList for books -->
        <asp:DataList ID="DataListBooks" DataSourceID="SqlDataSourceBooks_0277" runat="server" RepeatLayout="Table" RepeatColumns="1" CellPadding="4" CellSpacing="2" BorderWidth="1" BorderStyle="Solid" BorderColor="#CCCCCC">
            <HeaderTemplate>
                <table border="1" cellpadding="4" cellspacing="2" style="width: 100%; border-collapse: collapse;">
                    <tr style="background-color: #f2f2f2;">
                        <th>ID277</th>
                        <th>Book</th>
                        <th>Author</th>
                        <th class="col-xs-3">Price</th>
                        <th class="col-xs-3">On Hand</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                    <td class="col-xs-3">
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:C}") %>' />
                    </td>
                    <td class="col-xs-3">
                        <asp:Label ID="PublicationYearLabel" runat="server" Text='<%# Eval("PublicationYear") %>' />
                    </td>
                </tr>
            </ItemTemplate>

            <FooterTemplate>
                </table>
   
            </FooterTemplate>
        </asp:DataList>
        <!-- GridView for Genres -->
        <div class="mb-4">
            <h3 class="text-secondary">Genre Maintenance :</h3>
            <asp:GridView ID="GridViewGenres_277" runat="server" DataSourceID="SqlDataSourceGenresCRUD_0277"
                AutoGenerateColumns="False" AllowSorting="True" AllowPaging="True" PageSize="5"
                DataKeyNames="GenreID" CssClass="table table-bordered">
                <PagerSettings Mode="Numeric" />
                <Columns>
                    <asp:BoundField DataField="GenreID" HeaderText="Genre ID" />
                    <asp:BoundField DataField="GenreName" HeaderText="Short Name" />
                    <asp:BoundField DataField="LongName" HeaderText="Long Name" />
                    <asp:CommandField ShowEditButton="True" UpdateText="Update77" />
                </Columns>
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />

                </Columns>
            </asp:GridView>

        </div>

        <!-- Form to add a new genre -->
        <div class="mb-4">
            <h3 class="text-secondary">To create a new genre</h3>
            <div class="row mb-4">
                <div class="col-md-2">
                    <label for="TextBoxGenreID" class="form-label">Genre ID</label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="TextBoxGenreID" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-2">
                <label for="TextBoxGenreName" class="form-label">Short Name</label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="TextBoxGenreName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-2">
                <label for="TextBoxLongName" class="form-label">Long Name</label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="TextBoxLongName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="ButtonAddGenre_77" runat="server" Text="Add New Genre" CssClass="btn btn-primary" OnClick="ButtonAddGenre_77_Click" />
        <asp:Label ID="LabelGenreError" runat="server" CssClass="text-danger ms-2"></asp:Label>



        <!-- Section for Books -->
        <h2 class="mb-3 text-primary">Manage Books List</h2>

        <!-- GridView for books -->
        <div class="row mb-4">
            <!-- GridView Column -->
            <div class="col-md-6">
                <asp:GridView ID="GridViewBooks_277" runat="server" DataSourceID="SqlDataSourceBooksWithGenres_0277"
                    AutoGenerateColumns="False" AllowSorting="True" AllowPaging="True" PageSize="5"
                    DataKeyNames="BookID" CssClass="table table-bordered">
                    <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="&amp;nbsp;First&amp;nbsp;" LastPageText="&amp;nbsp;Last&amp;nbsp;" NextPageText="&amp;nbsp;Next&amp;nbsp;" PreviousPageText="&amp;nbsp;Previous&amp;nbsp;" />
                    <PagerStyle CssClass="fs-4" />
                    <Columns>
                        <asp:BoundField DataField="BookID" SortExpression="BookID" HeaderText="ID" ReadOnly="True" />
                        <asp:BoundField DataField="Title" SortExpression="Title" HeaderText="Name" />
                        <asp:BoundField DataField="GenreName" SortExpression="GenreName" HeaderText="Genre" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </div>

            <!-- DetailsView Column -->
            <div class="col-md-6">
                <asp:DetailsView ID="DetailsViewBooks_277" runat="server" DataSourceID="SqlDataSourceBooksCRUD_0277"
                    AutoGenerateRows="False" DataKeyNames="BookID" CssClass="table table-bordered"
                    AllowPaging="True" PagerSettings-Mode="NextPreviousFirstLast">
                    <Fields>
                        <asp:BoundField DataField="BookID" HeaderText="Book ID" ReadOnly="True" />
                        <asp:BoundField DataField="Title" HeaderText="Name" />
                        <asp:BoundField DataField="Author" HeaderText="Author" />
                        <asp:BoundField DataField="PublicationYear" HeaderText="On Hand" />
                        <asp:TemplateField HeaderText="Genre">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownListGenre" runat="server" DataSourceID="SqlDataSourceGenresCRUD_0277"
                                    DataTextField="GenreName" DataValueField="GenreID" SelectedValue='<%# Bind("GenreID") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="LabelGenre" runat="server" Text='<%# Eval("GenreName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:c}" />
                        <asp:BoundField DataField="ImageFile" HeaderText="Image File" />
                        <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True" />
                    </Fields>
                    <PagerSettings Mode="NextPreviousFirstLast" />
                </asp:DetailsView>

            </div>
        </div>

    </div>



    <!-- SqlDataSource for books -->
    <asp:SqlDataSource ID="SqlDataSourceBooks_0277" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM TheBooks_80277 WHERE GenreID = @GenreID">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownListGenres_277" PropertyName="SelectedValue" Name="GenreID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <!-- SqlDataSource for GridViewBooks with genre names -->
    <asp:SqlDataSource ID="SqlDataSourceBooksWithGenres_0277" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT B.BookID, B.Title, B.Author, B.Price, G.GenreName FROM TheBooks_80277 B JOIN Genre G ON B.GenreID = G.GenreID"></asp:SqlDataSource>

    <!-- SqlDataSource for CRUD on books -->
    <asp:SqlDataSource ID="SqlDataSourceBooksCRUD_0277" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT B.BookID, B.Title, B.Author, B.PublicationYear, B.Price, B.ImageFile, G.GenreName, B.GenreID FROM TheBooks_80277 B
            INNER JOIN Genre G ON B.GenreID = G.GenreID WHERE B.BookID = @BookID"
        InsertCommand="INSERT INTO TheBooks_80277 (Title, Author, PublicationYear, GenreID, Price, ImageFile) VALUES (@Title, @Author, @PublicationYear, @GenreID, @Price, @ImageFile)"
        UpdateCommand="UPDATE TheBooks_80277 SET Title = @Title, Author = @Author, PublicationYear = @PublicationYear, GenreID = @GenreID, Price = @Price, ImageFile = @ImageFile WHERE BookID = @BookID"
        DeleteCommand="DELETE FROM TheBooks_80277 WHERE BookID = @BookID">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridViewBooks_277" PropertyName="SelectedValue" Name="BookID" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="PublicationYear" Type="Int32" />
            <asp:Parameter Name="GenreID" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ImageFile" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="PublicationYear" Type="Int32" />
            <asp:Parameter Name="GenreID" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="BookID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <!-- SqlDataSource for CRUD operations on Genres -->
    <asp:SqlDataSource ID="SqlDataSourceGenresCRUD_0277" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM Genre ORDER BY GenreID"
        UpdateCommand="UPDATE Genre SET GenreID=@GenreID, GenreName = @GenreName, LongName=@LongName WHERE GenreID = @GenreID"
        InsertCommand="INSERT INTO Genre (GenreName, LongName, GenreID) VALUES
                        (@GenreName, @LongName, @GenreID)"
        DeleteCommand="DELETE FROM Genre WHERE GenreID = @GenreID">
        <UpdateParameters>
            <asp:Parameter Name="GenreName" Type="String" />
            <asp:Parameter Name="GenreID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="GenreID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="GenreName" Type="String" />
            <asp:Parameter Name="LongName" Type="String" />
            <asp:Parameter Name="GenreID" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
