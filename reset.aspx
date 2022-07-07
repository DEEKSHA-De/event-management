<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reset.aspx.cs" Inherits="event_management.reset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:TextBox id="txtnewpassword" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtcnfrmpassword" runat="server"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="reset" OnClick="Button1_Click" />
</asp:Content>
