<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="event_management.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body{
            background-image:url("imgs/homeuser1.jfif");
             background-size: cover;
        }
        .welcome{
            margin-left:600px;
            margin-top:200px;
        }
       .main-text
       {
           margin-top:10px;
           margin-left:500px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="welcome">
        <img src="imgs/WELCOME.svg" width="500px" height="200px" />
    </div>
    <div class="main-text">
       <center><img src="imgs/onlinelogomaker-083121-1500-7281.svg"/></center>
        </div>
  </asp:Content>
