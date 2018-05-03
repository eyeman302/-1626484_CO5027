<%@ Page Title="" Language="C#" MasterPageFile="~/member/Member.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="Prototype.member.CompletePurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleName" runat="server">
    Purchase Completed::HotWheels
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    Complete Payment
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
    <asp:Literal ID="litInfo" runat="server"></asp:Literal>
</asp:Content>
