<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="event_management.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
    margin: 0;
    padding: 0;
    background-image:url("imgs/home2.jpg");
    background-size: cover;
    font-family: sans-serif;
}
.loginbox {
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%);
    width:360px;
    height :420px;
    padding:80px 40px;
    box-sizing:border-box;
    background:rgba(0,0,0,0.5);
    }
h2 {
    padding:0;
   margin-top:5px;
   margin-bottom:30px;
    text-align:center ;
    color:#f98282;
    font-family:Sylfaen;
   font-weight:800
}
 .lblemail,.lblpass {
     
    font-weight: bold;
    color: #fff;
}
 .txtemail,.txtpass, .btnsubmit {
    width: 100%;
    margin-bottom: 20px;
}
 .txtemail, .txtpass {
    border: none;
    border-bottom: 3px solid #fff;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
    background-color: transparent;
}
::placeholder {
    color: rgba(255,255,255,.5);
}
.btnsubmit {
    border: none;
    outline: none;
    height: 40px;
    font-size: 16px;
    color: #fff;
    background-color: rgb(255,9,9);
    cursor: pointer;
    border-radius: 20px;
    transition: .3s ease-in-out;
}
    .btnsubmit:hover {
        background-color: rgb(255,217,9);
    }

.btnforget {
    font-size: 16px;
    font-weight: 700;
    text-decoration: none;
    color: #fff;
}
    .btnforget:hover {
        text-decoration: underline;
    }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="loginbox">
       
        <h2>LOG IN HERE</h2>
                 <asp:Label Text="Email" CssClass="lblemail" runat="server" />
                    <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter Email" ID="textbox1" />
         <asp:Label Text="Password" CssClass="lblpass" runat="server" ID="label2" />
        <asp:TextBox runat="server" CssClass="txtpass" placeholder="**************" ID="textbox2" TextMode="Password" />
        <asp:Button Text="Sign In" CssClass="btnsubmit" runat="server" OnClick="Unnamed2_Click"  />
        <asp:LinkButton Text="Forget Password" CssClass="btnforget" runat="server" />
                 </div>
   </asp:Content>
