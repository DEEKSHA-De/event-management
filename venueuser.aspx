
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="venueuser.aspx.cs" Inherits="event_management.venueuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style2 {
    margin-left: 30px;
    border: none;
    outline: none;
    height: 40px;
    font-size: 16px;
    color: #fff;
    background-color: rgb(255,9,9);
    cursor: pointer;
    border-radius: 20px;
        }
       b{
                font-weight: bold;
                color: #000000;
         }
       h1{
         
             color:#ed2c2c;
         width:300px;
         font-weight:bolder;
         font:bold;
    font-size:2.5rem;
    font-family: sans-serif;
    display:flex;
       }

        table {
            margin-top: 50px;
            margin-left: 5px;
              
        }
      /*  .data{
    border :30px ;
    max-width:auto;
    box-sizing :border-box;
    display:flex;
     border-radius :30px;
    box-shadow :12px 12px 22px;
        }*/
    .bc{
       background-color:#b3a3a3;
    }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bc">
        <center>
    <h1>BOOK VENUE</h1>
            

          
            <br/>
            <br />
            
            <asp:DropDownList ID="DropDownList1"  runat="server" AppendDataBoundItems ="True"  style="margin-top: 10px" width="246px" DataSourceID="SqlDataSource1" DataTextField="venuecategory" DataValueField="venuecategory" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="30px">
                <asp:ListItem Text="--select category--" Value="0"></asp:ListItem>
            </asp:DropDownList>
            </center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:signdbConnectionString8 %>" SelectCommand="SELECT distinct ([venuecategory]) FROM [venue1]"></asp:SqlDataSource>
           <asp:DataList ID="DataList1" CssClass ="data" runat="server" RepeatColumns="5" RepeatLayout ="Table"  CellPadding="3" CellSpacing ="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
      <ItemStyle ForeColor="Black" />
               <ItemTemplate>
                <table border="2">
                    <tr>
                        <td>
                            <a href="Booking.aspx?id=<%# Eval("venueid") %>">
                             <asp:Image ID="image1" runat="server" CssClass="image1" ImageUrl='<%#Eval("image")%>' Height="248px" Width="302px" /><br /></a>
                            <b>&nbsp;&nbsp; Venue Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b>
                            <asp:Label ID="lblplace" runat="server" Text='<%# Eval("venueplace")%>'></asp:Label>
                         <%-- <%# Eval("venueplace")%>--%>
                            <br/><b>&nbsp;&nbsp;&nbsp;Venue Capacity :    </b><asp:Label ID="Label1" runat="server" Text='<%# Eval("capacity")%>'></asp:Label>
                             <br/><b>&nbsp;&nbsp;&nbsp;Venue Cost&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Rs    </b><asp:Label ID="lblprice" runat="server" ForeColor="Red" Text='<%# Eval("venuecost")%>'></asp:Label>
                                 <%--Venue cost&nbsp;&nbsp;&nbsp; :</b> <%# Eval("venuecost")%><br />--%>

                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button CssClass="auto-style2" runat="server" ID="btnbook" Text="Book now" Width="132px" CommandName="Book" CommandArgument='<%# Eval("venueid") %>'/>
                            
                        </td></tr>
                </table>
            </ItemTemplate>
    </asp:DataList>
        </div>
  
   
       </asp:Content>
