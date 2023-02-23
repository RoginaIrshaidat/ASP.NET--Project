<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@100;700&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <script src="https://kit.fontawesome.com/629d25c12e.js" crossorigin="anonymous"></script>
 

<%--        <script type="text/javascript" src=" Default.js"></script>--%>

    <style>
        .navbar{
            background-color:#2D2735;
        }
      
    
        .orange{
            margin-top:70px;
            color:#F56F1A;
        }
        .text1 {
            color:#2D2735;
        }
        .mainn1 {
            justify-content:space-between;
        }
        .mainn1 div{
            width:30%;
        }
        .mainn1 img{
            margin-top:50px;
            height:45px;
            width:45px;
        }
        .container-fluid{
            margin-top:70px;
            padding-bottom:0px;
        }

        #mainn3{
            display:flex;
        }
        #mainn3 div{
            width:47%;
            padding-left:10px;
        }
        #mainn3 img{
            width:100%
        }
        .text-white{
            color:white;
        }
          .mainn4{
              margin-top:20px;
            display:flex;
            justify-content:space-between;
        }
        .card22{
            
            width:30%;
            border:0.5px solid #E6E6E6;
           
        } 
        .mainn4 img{
          margin-bottom:10px;
            width:100%;
        }
       .DONATE1{
           background-color:#F56F1A;
           color:white;
            width:100% ; 
            height:50px;
            border:0px;

        }
       #main5{
           justify-content:space-between;
           color:white;
           padding-bottom:30px;
           padding-top:10px;
       }
       #main5 div{
width:20%;
       }
     
       
       #main7{ 
           margin-top:50px;
          background-image:url('images/bg.png');
          background-size:cover;
          padding-top:25px;
          padding-bottom:25px;
          display:flex;
          justify-content:space-between;
          align-items:center;
                 }

       #main7 div{
           width:70%, 20%;
       }
       .slide11{
           background-color:#F56F1A;
               width: 250px;
    height: 50px;
    border-radius: 12px;
    border: 1px;
    font-size: large;
    margin-bottom: 10px;
       }
       .fa-solid{
           font-size:50px;
           margin-top:40px;
           color:#F56F1A;
           margin-bottom:30px;
       }
       .txtCard{
           padding-inline:5px;

       }
       

       @media only screen and (min-device-width: 481px) and (max-device-width: 768px) { 
           #mainn3{    flex-direction: column;}
           #mainn3 div{ width:100%;}
       }
        @media only screen and (min-device-width: 0) and (max-device-width: 480px) { 
            .mainn1{    flex-direction: column;
                          align-items: center;}
              #mainn3{    flex-direction: column;}
           #mainn3 div{ width:100%;}
           .mainn4{   flex-direction: column;}
           .card22{width:100%;
                       margin-bottom:10px;
           }
           #main5{    flex-direction: column;
                      align-items: center;}
         
          #main7 {  flex-direction: column;}
          .navbar img{margin-left:20px;}
        }
       
    </style>
</asp:Content>
<asp:Content ID="BodyContent1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div style="height:600px" class="item active">
      <img src="images/slider1.png" alt="...">
      <div class="carousel-caption">
           <button type="button" class="slide11" data-toggle="button" aria-pressed="false" onclick="window.location.href ='donation.aspx';">
 Donate Now
</button>
      </div>
    </div>
    <div style="height:600px" class="item">
      <img src="images/slider2.png" alt="...">
       <div class="carousel-caption">
 <button type="button" class="slide11" data-toggle="button" aria-pressed="false" onclick="window.location.href ='voulnteer.aspx';">
Voulnteer Now</button>
    </div>
        </div>
    
      <div style="height:600px" class="item">
      <img  src="images/slider3.png" alt="...">
       <div class="carousel-caption">
  <button type="button" class="slide11" data-toggle="button" aria-pressed="false" onclick="window.location.href ='Contact.aspx';">
 Contact Us
</button>  </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="display:flex; flex-direction:column;" >
    <div style="text-align:center;">
        <h1 class="orange">What we do ?</h1>
        <p class="text1"> We Are In A Mission To Help <br> The Helpless</p>
    </div>
    <div class="mainn1" style="display:flex; text-align:center;">
      
        <div><i class="fa-solid fa-kitchen-set"></i> <br /><p>We collect kitchen utensils and distribute them to poor and needy families</p></div>
         <div><i class="fa-solid fa-plate-wheat"></i> <br /><p>We collect groceries and food and provide it to families in need</p>  </div>
         <div><i class="fa-solid fa-sack-dollar"></i> <br /><p>We collect money and give it to charities to help poor families</p></div>
    </div>
      </div>

<%--<div class="container-fluid" style="background-image:url('images/img2.png')" >
    <div id="mainn3" class="container" >
        <div>  <p class="orange">Who we Are ?</p> <br /> <h1 class="text-white"> We Are In A Mission To Help <br> The Helpless</h1><br />
            <p class="text-white">Lorem Ipsum is simply dummy text o<br />f the printing and typesetting industry. L
                orem Ipsum has been the industry's standard dummy text ever since the 1500s, when 
                an unknown printer took a galley of type and scrambl<br />ed it to make a type specimen book. It ha
                s survived not only five centuries, but also <br />the leap into electronic typesetting, remaining essen
                tially unchanged. It was popularised in the 
                1960s with the release of Letraset sheets containing </p>
        </div>
        <div><img src="images/img3.png" /></div>
    </div>
</div>--%>

 <div class="container" style="display:flex; flex-direction:column;" >
    <div style="text-align:center;">
        <h1 class="orange">Our Goals </h1>
        <p class="text1"> The most important goals that <br />we seek to achieve 
</p>
    </div>
     <div class="mainn4" style="display: flex; text-align: center;">

         <div class="card22">
             <img src="images/card1.png" />
             <br />
            <div class="txtCard"><p>Equipping 1,000 kitchens for poor families until the end of 2023 and supporting the needy with simple kitchen utensils</p></div> 
             <br />
             <asp:Button ID="Button3" CssClass="DONATE1" runat="server" Text="Donate Now" />
         </div>
         <div class="card22">
             <img src="images/food.jpg" />
             <br />
             <div class="txtCard"> <p>Equipping 1,000 kitchens for poor families until the end of 2023 and supporting the needy with simple kitchen utensils</p> </div>
             <br />
             <asp:Button ID="Button1" CssClass="DONATE1" runat="server" Text="Coming Soon" Enabled="false" BackColor="Gray"/>
         </div>
         <div class="card22">
             <img src="images/slider4.jpg" />
             <br />
             <div class="txtCard"> <p>Collecting an amount of 5,000 dinars and distributing it to charities in the community to support families in need</p></div>
             <br />
             <asp:Button ID="Button4" CssClass="DONATE1" runat="server" Text="Donate Now" />
         </div>
     </div>
 </div>

    <div class="container-fluid" style="background-image:url('images/bg4.png')">
        <div class="container" id="main5" style="display:flex; text-align:center;">
            <div><h1>500+</h1><br /><span>Donation</span></div>
            <div><h1>500+</h1><br /><p>Donation</p></div>
            <div><h1>500+</h1><br /><p>Donation</p></div>
            <div><h1>500+</h1><br /><p>Donation</p></div>
        </div>
    </div>

  
    
          <div id="main7" class="container">
            <div><h1 style="color:black;">Lets Change The World <br />
With Humanity </h1></div>
            <div>
<%--                <input id="Button7" type="button" value="Be A Volunteer"  style="width:140px;" href="window.location.href('voulnteer.aspx;)"/>--%>
        <asp:Button ID="btnVoulnteer" runat="server" Text="Be A Volunteer"  style="width:140px;" OnClick="btnVoulnteer_Click" />
            </div>
            </div>
</asp:Content>