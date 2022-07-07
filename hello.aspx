
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hello.aspx.cs" Inherits="event_management.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="imgs/home1.jpg"width="1200" height="650" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Join With Us</h5>
        <p>We make Your Event Memorable.</p>
            <a type="button" class="btn btn-danger" href="signup.aspx">Register Now</a>
            <a type="button" class="btn btn-danger" href="loginu.aspx">Book Now</a>
      </div>
    </div>
    <div class="carousel-item">
      <img src="imgs/home2.jpg"width="1200" height="650" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Join With Us</h5>

         <p>We make Your Event Memorable.</p>

       <a type="button" class="btn btn-danger" href="signup.aspx">Register Now</a>
          <a type="button" class="btn btn-danger" href="loginu.aspx">Book Now</a>
           
      </div>
    </div>
    <div class="carousel-item">
      <img src="imgs/home3.jpg"width="1200" height="650"  class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Join With Us</h5>
        <p>We make Your Event Memorable.</p>
          <a type="button" class="btn btn-danger" href="signup.aspx">Register Now</a>
          <a type="button" class="btn btn-danger" href="loginu.aspx">Book Now</a>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
   
        
</asp:Content>
