<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginu.aspx.cs" Inherits="event_management.loginu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="loginstyle.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class ="loginbox">
      <h2>Login</h2>
         <asp:Label Text="Email" CssClass="lblemail" runat="server" /> 
        <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter Email" TextMode="Email" ID="txtemail" />
        <asp:Label Text="password" CssClass="lblpass" runat="server" />
         <asp:TextBox runat="server" CssClass="txtpass" placeholder="********" ID="txtpass" TextMode="Password"/>
         <asp:Label Text="show/hide" CssClass="lblsh" runat="server" ForeColor="White" />
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
        
 <%--<asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="imgs/showeye.png" Width="20px" Visible="false" OnClick="ImageButton1_Click" />
  <asp:ImageButton ID="ImageButton2" runat="server" Height="22px" ImageUrl="imgs/hideeye.png" Visible="False" Width="30px" OnClick="ImageButton2_Click" />    --%>   
        <asp:Button Text="Login" CssClass="btnsubmit" runat="server" ID="btnlogin" OnClick="btnlogin_Click" />
        <asp:LinkButton Text ="Forget password" CssClass ="btnforget" runat ="server" OnClick="Unnamed3_Click" />
        <br />
        <br />
        <asp:Label ID="lblcnfrm" CssClass="lblcnfrm" runat="server" Text= "dont have account?"></asp:Label>
        <asp:LinkButton ID="LinkButton1" CssClass="reg" runat="server">Register Now</asp:LinkButton>
       
               </div>
        </div>
   
    
</asp:Content>
