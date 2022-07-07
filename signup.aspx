<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="event_management.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="signupstyle.css" rel="stylesheet" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="container">
           <h2> REGISTER</h2>
              <br />
           
      <asp:Label Text="FullName" CssClass="lblflname" runat="server" ID="lblfname"></asp:Label>
      <asp:TextBox runat="server" CssClass="txtfname" placeholder="Enter FullName" ID="txtfname" AutoComplete="off" required="txtfname"/> 
            
  
      <asp:Label Text="Address" CssClass="lbladdr" runat="server" ></asp:Label>
      <asp:TextBox runat="server" CssClass="txtaddr" placeholder="Enter Address" ID="txtaddr" AutoComplete="off" required="txtaddr"/> 
            
           
             <asp:Label Text="mobile" CssClass="lblmbl" runat="server" /> 
        <asp:TextBox runat="server" CssClass="txtmbl" placeholder="Enter Mobile" TextMode="Number" ID="txtmbl" AutoComplete="off" required="txtmbl" Maximum="10" />
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter Correct Number" ControlToValidate="txtmbl" ValidationExpression="^([7-9]{1})([0-9]{9})$" ForeColor="Red" Font-Italic="True" Font-Bold="False" Font-Size="Medium"></asp:RegularExpressionValidator>

                        
            <asp:Label Text="Email" CssClass="lblemail" runat="server" /> 

        <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter Email" TextMode="Email" ID="txtemail" AutoComplete="off" required="txtemail" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Correct Email" Font-Italic="True" Font-Size="Medium" ControlToValidate="txtemail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
             
        <asp:Label Text="password" CssClass="lblpass" runat="server" />
              <asp:TextBox runat="server" CssClass="txtpass" placeholder="******" TextMode="Password" ID="txtpas" required="txtpass"/>
            <asp:Label Text="Show/Hide"  runat="server" ForeColor="#CC0000" />
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <br />
            <asp:RegularExpressionValidator runat="server" ErrorMessage="Minimum eight characters, at least one letter, one number and one special character" ControlToValidate="txtpas" ValidationExpression='"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"' ForeColor="White"></asp:RegularExpressionValidator>
            <br />
                 <asp:Label Text="Retype password" CssClass="lblretype" runat="server" />
         <asp:TextBox runat="server" CssClass="txtretype" placeholder="******" TextMode="Password" ID="txtcpas" required="txtcpas" />
                   
          
            <asp:Label Text="Show/Hide"  runat="server" ForeColor="#CC0000" />
            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwrod must match" Font-Bold="True" ControlToCompare="txtpas" ControlToValidate="txtcpas" Operator="Equal"></asp:CompareValidator>
        
    <asp:Button ID="Button1" runat="server" Text="Create Account" CssClass="btnsubmit" OnClick="Button1_Click"/>
   
    </div>
       
   
</asp:Content>