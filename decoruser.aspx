<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="decoruser.aspx.cs" Inherits="event_management.decoruser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        section{
             background-image:url("imgs/decor.jfif");
             /*display:flex;*/
             width:1600px;
              background-size: cover;
            margin-left:0;
            /* border:10px solid gray;*/
        }
        
        h1{
             color:#f51274;
         width:300px;
         font-weight:bolder;
         font:bold;
    font-size:2.5rem;
    font-family: sans-serif;
    display:flex;
        }
        .auto-style1 {
            width: 379px;
            /*margin-left: 214px;*/
        }
        .panel-body{
            margin:0;
        /* border:10px solid gray;*/
          height:85vh;
           margin-top:0;
        }
       
        .panel-heading{
       /* border:10px solid gray;*/
        /*  height:1vh;*/
           color:#f98282;
          max-width:1000px;
          margin-top:10px;
          display:flex; 
          justify-content:center;
           margin:auto;
           margin-left:270px;

     }
        .btnsub{
              border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-left:0px;
            margin: 0 0 0 20px;
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
        .lbllt,.lblls,.lblfl,.lblfs,.lblst,.lblcs{
             font-weight: bold;
    color:#000000;
    margin-right: 10px;
        }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
   <%-- <<%--section id="main-content">
        <section id="wrapper">--%>
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <center><h1 class="auto-style1">&nbsp;DECORATION </h1></center>
</div>
                        </header>
                         <div class="panel-body">
                              <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
    <center>
        <br />
       <asp:Label ID="Label1" CssClass="lbllt" runat="server" Text="Select Light"></asp:Label>
        <br />
        <br />
              <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="True" runat="server" CssClass="form-control input-sm" DataTextField="light" DataValueField="decorationid" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left:100px" required="DropDownList1" >
                   <asp:ListItem Text="--select category--" Value="0"></asp:ListItem>
              </asp:DropDownList>
   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:signdbConnectionString11 %>" SelectCommand="SELECT * FROM [decor]"></asp:SqlDataSource>--%>
                           <br />
     
        <asp:Label ID="Label2"  CssClass="lblls" runat="server" Text="Light Cost"></asp:Label>
        
<asp:TextBox ID="txtcost" runat="server" CssClass="form-control input-sm" style="margin-left: 100px" Enabled="False"></asp:TextBox>
        <br />
       
        <asp:Label ID="Label3" runat="server" CssClass="lblfl" Text="Select Flower"></asp:Label>
        <asp:DropDownList ID="dropflower" runat="server" CssClass="form-control input-sm" style="margin-left: 100px" DataSourceID="SqlDataSource1" DataTextField="flower" DataValueField="decorationid" OnSelectedIndexChanged="dropflower_SelectedIndexChanged" AutoPostBack="True" AppendDataBoundItems="True" required="dropflower">
            <asp:ListItem Text="--select category--" Value="0"></asp:ListItem>
        </asp:DropDownList>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:signdbConnectionString11 %>" SelectCommand="SELECT * FROM [decor]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label5"  CssClass="lblfs" runat="server" Text=" Flower Cost" ></asp:Label>
        <br />
        <asp:TextBox ID="txtfcost" CssClass="form-control input-sm" runat="server" style="margin-left: 100px" Enabled="False"></asp:TextBox>
        
        <br />
           <asp:Label ID="Label4"  CssClass="lblst" runat="server" Text="Select Seating"></asp:Label>

        <br />
        <asp:DropDownList ID="dropseat" CssClass="form-control input-sm" runat="server" style="margin-left: 100px" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="dropseat_SelectedIndexChanged" DataTextField="seat" DataValueField="decorationid" required="dropseat">
             <asp:ListItem Text="--select category--" Value="0"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label6" CssClass="lblcs" runat="server" Text=" Seating Cost" ></asp:Label>
        <asp:TextBox ID="txtscost" runat="server" CssClass="form-control input-sm" style="margin-left: 100px"></asp:TextBox>
        <br />
                                       <%-- <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("decorationid")%>'></asp:TextBox>--%>
                                    <asp:Button ID="btnsub" runat="server" CssClass="btnsub" Text="Save and Next" style="margin-left: 630px" OnClick="btnsub_Click" />
        </center>
</div>
                                    </div>
                                  </div>
                             </div>
                        </section>
                    </div>
                </div>
            </section>
        <%--</section>--%>
</asp:Content>
