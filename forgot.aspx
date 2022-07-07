<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="event_management.forgot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="forgot.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="forgot  py-5 bg-light">
        <div class="container">
            <div class="row g-0">
            <div class ="col-lg-5">
                <img src="imgs/forgot1.jpg"class="img-fluid" alt="" />
                </div>
                <div class="col-lg-7 text-center py-5">
                <h1>Forgot password</h1>
                    <br />
                     <asp:Label Text="Email" CssClass="lblemail" runat="server" /> 
  <br />
                   <asp:TextBox runat="server" CssClass="txtforemail" placeholder="Enter Email" TextMode="Email" ID="txtemail" Height="50px" Width="300px" />
                    <br/>
                    <br />
                    <asp:Label Text="Enter New password" CssClass="lblnew" runat="server" ForeColor="Red" /> 
                    <br />
                    <asp:TextBox ID="txtnewpassword" runat="server" CssClass="txtnew" placeholder="Enter new password" TextMode="Password" Height="50px" Width="300px"></asp:TextBox>
                    <br />
                    <br />
                 
                    <asp:Label Text="Enter Confirm password" CssClass="lblcnfrm" runat="server" ForeColor="Red"/> 
                    <br />
                    <asp:TextBox ID="txtcnfrmpassword" runat="server" CssClass="txtcnfrm" placeholder="Enter confirm password" TextMode="Password" Height="50px" Width="300px"></asp:TextBox>
                    <br />
                    
                    <asp:Button Text="Submit" CssClass="btnsubmit" runat="server" ID="btnforget"  OnClick="btnforget_Click"/>
                    <br />
                    </div>
            </div>
      
          </div>

    </section>
 </asp:Content>
