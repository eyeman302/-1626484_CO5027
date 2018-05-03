<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Prototype.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleName" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="divUploadImg">
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        <br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <br />
        <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Image ID="CurrentImage" runat="server" Height="200px" Width="200px" />
        <br />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        <br />
        <asp:Label ID="lblDeleted" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
