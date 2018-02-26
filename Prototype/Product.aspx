<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Prototype.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleName" runat="server">
    Product || Hotwheels
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageTitle" runat="server">
    Product Description
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="imgBox">
        <img src="Images/Hot_Wheels_logo.png" id="ProductImg"/>
    </div>
    <div class="ProductHeading">
        <h1>Hotwheels</h1>
    </div>
    <div class="ProductDesc">

        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor orci non mattis congue. Aenean sed neque in nisl lacinia gravida eu malesuada nibh. 
            In egestas erat sit amet erat pharetra, eget elementum lorem sodales. Vivamus felis erat, volutpat quis lectus non, mollis consequat 
            lectus. Donec pretium nibh leo, vitae egestas tellus suscipit at. Nam pharetra, dolor sed sollicitudin euismod, odio tellus dictum justo, vitae dictum 
            diam nunc nec sem. Etiam nec magna eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent convallis pulvinar cursus.

            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur eu placerat sapien. Sed sodales arcu et magna 
            euismod, nec finibus sem cursus. Sed vel malesuada sem, ut dignissim justo. Mauris bibendum cursus nisi id laoreet. Maecenas eget cursus nulla, nec semper turpis. 
            Aliquam in sem justo. Etiam tristique volutpat viverra. Nunc dictum pharetra sapien ac consequat. Aenean porttitor sodales volutpat. Donec laoreet eget lorem vel gravida.
        </p>

    </div>

</asp:Content>
