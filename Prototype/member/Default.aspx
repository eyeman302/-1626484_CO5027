<%@ Page Title="" Language="C#" MasterPageFile="~/member/Member.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prototype.member.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleName" runat="server">
    Home::Hotwheels
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class ="ItemGallery">
    <asp:Repeater ID="rptrProductList" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><table id="tblProduct"></HeaderTemplate>
        <ItemTemplate>
            <div id ="productDiv">
                <a href="<%#Eval ("ProductID","Product.aspx?Id={0}") %>">
                    <asp:Image ID="Image1" ImageUrl='<%# "~/ProductImage/" + Eval("ProductID") + ".png" %>' runat="server" Height="200" Width="200" onerror='this.src="~/member/Images/noimage.jpg"' />
                    <p>
                        <%#Eval("ProductName")%>
                    </p>
                    <p>
                        Price: $<%#Eval("ProductPrice","{0:0.00}")%>
                    </p>
                </a>
            </div>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626484_co5027_asgConnectionString4 %>" SelectCommand="SELECT * FROM [tblProduct2]"></asp:SqlDataSource>
    </div>
</asp:Content>