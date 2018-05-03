<%@ Page Title="" Language="C#" MasterPageFile="~/member/Member.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Prototype.member.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleName" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   
    <div class="contactInfo">
        <h2>Hotwheels Marketing</h2>
        <p>Call Us: 800-747-8697 on Monday through Friday 9a.m. – 6p.m. Eastern Time. Holiday hours may vary.</p>
        <p></p>
        <p>Write to Us at: Consumer Services 636 Girard Ave East Aurora, NY 14052</p>
        <br />
       
        <asp:Label ID="lblEmail" runat="server" Text="E-mail"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" Text="eg: email@something.com"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="*Empty Email Field "></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regvalEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid Email" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="*Empty Subject Field"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ControlToValidate="txtBody" ErrorMessage="*Empty Body Field"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnSend" runat="server" Text="Send Email" OnClick="btnSend_Click" />
        <br />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </div>
    </asp:Content>

    <asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="map">
    <script>
        var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 4.885731, lng: 114.931669},
          zoom: 18
          });
          var mark = new google.maps.Marker({
              position: { lat: 4.885731, lng: 114.931669 },
              map: map
          });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMWC-_0fpARXOn5xpehLH-01IsmtfhplA&callback=initMap"
    async defer></script>
    </div>
    </asp:Content>

