<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prototype.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleName" runat="server">
    Home::Hotwheels
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <form id="form1" runat="server">
        <div class="ItemGallery">

            <asp:Repeater ID="rptrProdutList" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="rptrProdutList_ItemCommand">

                <HeaderTemplate><table id="tblProduct"></HeaderTemplate>
                <ItemTemplate>
                    
                        <div id="productDiv" >
                        <a href="<%#Eval ("ProductID","Product.aspx?Id={0}")%>">
                            <asp:Image ID="Image1" ImageUrl='<%# "~/ProductImage/" + Eval("ProductID") + ".png" %>' runat="server" Height="200" Width="200" onerror='this.src="Images/noimage.jpg"' />
                            <p>
                            <%#Eval("ProductName")%>
                            </p>
                            <p>
                            Price: $<%#Eval("ProductPrice","{0:0.00}")%></p>
                        </a>
                        </div>
                    
                </ItemTemplate>
                <FooterTemplate></table></FooterTemplate>
            </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626484_co5027_asgConnectionString4 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tblProduct2]"></asp:SqlDataSource>        
        </div>
    </form>
</asp:Content>
