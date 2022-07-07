<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="event_management.book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        *{
            margin:0;
        }
      section{
             background-image:url("imgs/venue.jpg");
             /*display:flex;*/
             width:1800px;
              background-size: cover;
            margin-left:0;
            /* border:10px solid gray;*/
        }
        
     .main-content
    {
          background-size: cover;
           width:900px;

      /*  border:10px solid gray;*/
        
     }
   /*  .wrapper
     {
         border:5px solid gray;

     }*/
     .panel{
         margin:0;
        /* border:10px solid gray;*/
          height:110vh;
           margin-top:0;
     }
     .panel-heading{
          /*border:10px solid gray;*/
        /*  height:1vh;*/
           color:#f98282;
          max-width:800px;
          margin-top:5px;
          display:flex; 
          justify-content:center;
           margin:auto;
           margin-left:270px;

     }
    h1{

        /*border:10px solid gray;*/
           color:#f98282;
           width:400px;
          font-weight:bolder;
          justify-content:center;
       }
    /*.row{
        margin-top:20px;
        margin-right:50px;
        margin-left:10px;
    }*/
   /* .rpt1{
        margin-left:100px;
    }*/
        .panel-body {
            margin-left: 150px;
        }
    .sp1{
        margin-left:250px;
    }
     .sp2{
        margin-left:250px;
    }
      .sp3{
        margin-left:250px;
    }
      .lblvid,.lblvp,.lblpc,.lblorder,.lblvc,.lblevent,.lblgst,.lblfd,.lbltd,.lbldate{
          font-weight: bold;
    color:#000000;
    margin-right: 10px;
      }
      .form-control input-sm{
           font-weight: bold;
      }
     
      
      .btn-book{
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
 }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js "></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
   <%-- <section id="main-content">
        <section id="wrapper">--%>
           <img src="imgs/onlinelogomaker-083121-1500-7281.svg" width="100px" height="100px" style="margin-left:700px"/>
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <center><h1> Venue Booking</h1></center>

                            </div>
                        </header>
                        <div class="panel-body">
                              <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                   <asp:Repeater ID="rpt1" runat="server">
                          <ItemTemplate>
                           <asp:Label ID="Label4" CssClass="lblvid" runat="server" Text="VenueId"></asp:Label></center>
                              <br />
                       <asp:Label ID="lblvid" runat="server" Text='<%# Eval("venueid")%>' CssClass="form-control input-sm" Enabled="False" Width="450px"></asp:Label>
                               <br />
                              <br />
                               <asp:Label ID="Label5" CssClass="lblvp" runat="server" Text="Venue Place"></asp:Label>
                              <br />
    <asp:Label ID="lblvplace" runat="server" Text='<%# Eval("venueplace")%>' CssClass="form-control input-sm" Enabled="False" Width="450px"></asp:Label>
            <br />
                   <br />                    
    <asp:Label ID="Label7" runat="server" CssClass="lblpc" Text="Price"></asp:Label><br />
  <asp:Label ID="lblprice" runat="server" Text='<%# Eval("venuecost")%>' CssClass="form-control input-sm" Enabled="False" Width="450px"></asp:Label>
    <br />
               </ItemTemplate>
    </asp:Repeater>
                                          
   </div>
                                    </div>
                         </div>
                            <br />
                            <br />
                            <br />
                             <br />
                            <br />
                            <br />
                             <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:Label ID="lblorder" CssClass="lblorder" runat="server" Text="ORDER ID"></asp:Label>
     <asp:TextBox ID="TextBox1"  runat="server" CssClass="form-control input-sm" Width="450px"></asp:TextBox>
                                        </div>
                                    </div>
                                
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                         <div class="sp1">
    <asp:Label ID="Label12" runat="server" Text="Venue Category" CssClass="lblvc"></asp:Label>
                                        <br />
                                       
     <asp:Label ID="lblvenuecategory" runat="server" CssClass="form-control input-sm" Height="40px" Width="450px" Enabled="False"></asp:Label>
                                             </div>
       </div>
                                </div>
                                    </div>

                        <div class="row">
                               <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                <asp:Label ID="Label11" runat="server" Text="Event type" CssClass="lblevent"></asp:Label>
   <asp:DropDownList ID="DropDownList2" CssClass="form-control input-sm" runat="server" AppendDataBoundItems ="True" DataSourceID="SqlDataSource2" DataTextField="eventname" DataValueField="eventid" Width="450px">
                 <asp:ListItem Text="--select category--" Value="0"></asp:ListItem>
            </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:signdbConnectionString10 %>" SelectCommand="SELECT [eventid], [eventname] FROM [event]"></asp:SqlDataSource>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="At least choose one" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
  </div>
                                   
                                   </div>
     <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <div class="sp2" operator="GreaterThanEqual">
    <asp:Label ID="Label9" runat="server" Text="Total Guest" CssClass="lblgst"></asp:Label>
   <asp:TextBox ID="txtqty" runat="server" CssClass="form-control input-sm" Width="450px" required="txtqty"></asp:TextBox>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="txtqty" ControlToCompare="txtcap" Operator="GreaterThanEqual"></asp:CompareValidator>  
                                            <asp:TextBox ID="txtcap" runat="server" Enabled="False"></asp:TextBox>
                                            </div>
         </div>
                                </div>
                            </div>
                             <div class="row">
                               <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                      <asp:Label ID="lbldate" runat="server" Text="Select Event Date and Time" CssClass="lbldate"></asp:Label>
                                        <input id="txtdateTime" type="text" readonly="readonly">
  
                                    </div>
                                </div>
                                 
                                 </div>
                            <script type="text/javascript">
                                $(function () {
                                    $('[id*=txtdateTime]').datetimepicker({
                                        inline: false,
                                        formatDate: 'Y/m/d',
                                        startDate: false,
                                        minDate: new Date().setDate(new Date().getDate() + 3),
                                        step: 1,
                                        closeOnDateSelect: false,
                                        closeOnTimeSelect: false
                                    });
                                });
                            </script>
                            
                              <%--  <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <div class="sp3">
                          <asp:Label ID="Label13" runat="server" Text="Arriving Time"></asp:Label>
                <asp:TextBox ID="time" runat="server" TextMode="Time" CssClass="form-control input-sm" Width="450px"></asp:TextBox>
                                        </div>
                                    </div>
                                 </div>
                            </div>
                            <div class="row">
                                 <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                <asp:Label ID="Label14" runat="server" Text="Leaving Time"></asp:Label>
                     <asp:TextBox ID="time1" runat="server" TextMode="Time" CssClass="form-control input-sm" Width="450px"></asp:TextBox>
                                        </div>
                                   
                                 </div>
                                </div>--%>
                           
                   <div class="row">
                       <div class="col-md-8 col-md-offset-2">
                            <center><asp:Button ID="btnsubmit" CssClass="btn-book" runat="server" Width="170px" Text="Save" OnClick="btnsubmit_Click" />
                       </div>
                   </div>
                      
</div>
                        
    </section>
                </div>

            </div>
        </section>
    <%--</section>--%>
        <%--</section>--%>
    <%--  </section>--%>
   
   <%-- <center><asp:Button ID="btnsubmit" runat="server" Text="Confirm Order" /></center>--%>
        
    </span>
        
</asp:Content>
