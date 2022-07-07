<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="event_management.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <%-- <link href="billingstyle.css" rel="stylesheet" />--%>
    <style type="text/css">
      .lblcid,.lblcn,.lblod,.lblvid,.lblct,.lblpc,.lblet,.lblgst,.lbllt,.lblc,.lblft,.lblfc,.lblst,.lblsc{
          font-weight:800;
         margin-left:40px;
      }
      body{
          background-color:#e0cfcf;
      }
      h1{
           color:#f51274;
         
         font-weight:bolder;
        
      }
      .btnco{
          border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-left:600px;
           /* margin: 0 0 0 20px;*/
            outline: none;
            font-size: 16px;
            color: #fff;
            background-color: rgb(255,9,9);
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
            height:50px;
            width:150px;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <body>
        <center><h1 class="auto-style1">Confirm Booking</h1></center>
    <asp:Label ID="lblorderdate" runat="server" style="margin-left:900px" Text=""></asp:Label>
    <br />
    <br/>
    <asp:Label ID="Label12" runat="server" CssClass="lblcid" Text="Customer Id"></asp:Label>
   
    <asp:TextBox id="txtcid"  runat="server" Width="602px" Text=""  style="margin-left:670px" Enabled="False"/>
     <br />
    
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="lblcn" Text="Customer Name"></asp:Label>
   <asp:TextBox ID="txtcname" runat="server"  Width="602px" Enabled="False" style="margin-left:640px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" CssClass="lblod" Text="Order Id"></asp:Label>
    <asp:TextBox ID="txtoid" runat="server" Enabled="False" Width="602px" style="margin-left:700px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="lblvid" Text="Venue Id"></asp:Label>
    <asp:TextBox ID="txtvid" runat="server" Enabled="False"  Width="602px" style="margin-left:697px"></asp:TextBox>
    <%--<asp:Label ID="Label8" runat="server" Text="Event Date"></asp:Label>
    <asp:TextBox ID="txtfrm" runat="server" Enabled="False"  Width="802px"></asp:TextBox>--%>
   <br />
    <br />
    <asp:Label ID="Label10" runat="server" CssClass="lblct" Text="Venue Category"></asp:Label>
    <asp:TextBox ID="txtvc" runat="server" Enabled="False"  Width="602px" style="margin-left:640px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" CssClass="lblpc" Text="Venue Place"></asp:Label>
    <asp:TextBox ID="txtplace" runat="server" Enabled="False"  Width="602px" style="margin-left:670px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label16" runat="server" CssClass="lblet" Text="Event Type"></asp:Label>
    <asp:TextBox ID="txtevent" runat="server" Enabled="False"  Width="602px" style="margin-left:680px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label13" runat="server"   CssClass="lblgst" Text="Guest"></asp:Label>
    <asp:TextBox ID="txtguest" runat="server" Enabled="False"  Width="602px" style="margin-left:720px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label14" runat="server"  CssClass="lbllt" Text="Light Type"></asp:Label>
    <asp:TextBox ID="txtlighttype" runat="server" Enabled="False" Width="602px" style="margin-left:680px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server"  CssClass="lblc" Text="Light Cost"></asp:Label>
    <asp:TextBox ID="txtlightcost" runat="server" Enabled="False"  Width="602px" style="margin-left:685px"></asp:TextBox>
    <br />
    <br />
     <asp:Label ID="lblflower" runat="server" CssClass="lblft" Text="Flower Type"></asp:Label>
    <asp:TextBox ID="txtflowertype" runat="server" Enabled="False"  Width="602px" style="margin-left:670px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" CssClass="lblfc" Text="Flower Cost"></asp:Label>
    <asp:TextBox ID="txtflower" runat="server" Enabled="False"  Width="602px" style="margin-left:675px"></asp:TextBox>
    <br />
    <br />
  <asp:Label ID="Label15" runat="server" CssClass="lblst" Text="Seat Type"></asp:Label>
    <asp:TextBox ID="txtseattype" runat="server" Enabled="False" Width="602px" style="margin-left:689px"></asp:TextBox>
    <br />
    <br />
     <asp:Label ID="Label6" runat="server" CssClass="lblsc" Text="Seat Cost"></asp:Label>
     <asp:TextBox ID="txtseat" runat="server" Enabled="False"  Width="602px" style="margin-left:690px"></asp:TextBox>
        <br />
    <br />
       <asp:Button ID="Button1" CssClass="btnco" runat="server" Text="Confirm Order" />
       </body>

   

</asp:Content>
