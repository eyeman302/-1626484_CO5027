<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prototype.admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleName" runat="server">
    Home :: Hotwheels
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="adminHome">
    <asp:Button ID="btnAdd" runat="server" Text="Add New Product" OnClick="btnAdd_Click" />
    <asp:GridView class="grviewAdmin" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" style="direction: ltr" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
            <asp:BoundField DataField="ProductDesc" HeaderText="Product Description" SortExpression="ProductDesc" />
            <asp:BoundField DataField="ProductPrice" HeaderText="Product Price" SortExpression="ProductPrice"  DataFormatString="{0:n}"/>
            <asp:BoundField DataField="ProductQuantity" HeaderText="Product Quantity" SortExpression="ProductQuantity" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Edit.aspx?Id={0}" Text="Edit" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductID"  Text="View Image" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" HeaderText="View Image" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626484_co5027_asgConnectionString4 %>" DeleteCommand="DELETE FROM [tblProduct2] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))" InsertCommand="INSERT INTO [tblProduct2] ([ProductName], [ProductID], [ProductDesc], [ProductPrice], [ProductQuantity]) VALUES (@ProductName, @ProductID, @ProductDesc, @ProductPrice, @ProductQuantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ProductName], [ProductID], [ProductDesc], [ProductPrice], [ProductQuantity] FROM [tblProduct2]" UpdateCommand="UPDATE [tblProduct2] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductPrice] = @ProductPrice, [ProductQuantity] = @ProductQuantity WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductDesc" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductDesc" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductDesc" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductDesc" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
