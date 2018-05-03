<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Prototype.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleName" runat="server">
    Login::Hotwheels
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <form id="frmLogin" runat="server">
        <p>
        <asp:Label ID="lblEmail" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
        <br />
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    </form>
</asp:Content>

