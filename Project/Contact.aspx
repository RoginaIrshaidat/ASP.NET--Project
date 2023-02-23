<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-image:url(images/fffff.jpg);
            background-size:cover;
            background-repeat:no-repeat;
                background-position: right;
}
      
        .navbar {
            background-image: url(images/nav.png);
            width: 100%;
        }
        #fff{
            margin-top:30px;
           
            padding-left:150px;
           

        }
        #mainnn{
             border:5px solid #F56F1A;
            border-radius:12px;
        }
    </style>
    <script src="https://kit.fontawesome.com/72467fec0a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <address>

        <div class="container" id="mainnn" style="background-image:url('images/fff.png')">

    

            <div class=" row" style="margin-top: 30px;">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                   
                        <div   id="fff">
                            <h1 > Contact us </h1>
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="txtNameRequired" runat="server" ErrorMessage="Required" ControlToValidate="txtName" CssClass="text-danger"></asp:RequiredFieldValidator>
                            <label for="text1" class="control-label col-xs-4"></label>
                            <div class="col-xs-8">
                                <asp:TextBox ID="txtName" runat="server" placeholder="Enter Your Name" class="form-control"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="text" class="control-label col-xs-4"></label>
                            <div class="col-xs-8">
                                <asp:RequiredFieldValidator ID="txtEmailRequired" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail" CssClass="text-danger"></asp:RequiredFieldValidator>

                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Your Email" TextMode="Email" class="form-control"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="textarea" class="control-label col-xs-4"></label>
                            <div class="col-xs-8">
                                <asp:RequiredFieldValidator ID="txtMessageRequired" runat="server" ErrorMessage="Required" ControlToValidate="txtMessage" CssClass="text-danger"></asp:RequiredFieldValidator>

                                <asp:TextBox ID="txtMessage" runat="server" placeholder="Enter Your Message" class="form-control" Rows="6" TextMode="MultiLine"></asp:TextBox><br />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-xs-offset-4 col-xs-8">
                                <asp:Button ID="btnSend" runat="server" Text="Send Message" class="text-center" OnClick="btnSend_Click"/>
                            </div>
                        </div>

                        </div>
                         <div class="row" style="margin-top: 70px;">
                <div class="col-lg-6 col-md-6"  style="text-align:center;">
                    <div class="info-box mb-4">
                        <i class="fas fa-map-pin" style="color:#F56F1A"></i>
                        <h3>Our Address</h3>
                        <p>Orange Digital Vilage Irbid</p>
                    </div>
                </div>


                <div class="col-lg-6 col-md-6" style="text-align:center;">
                    <div class="info-box  mb-4">
                        <i class="fas fa-phone-volume" style="color:#F56F1A"></i>
                        <h3>Call Us</h3>
                        <p>+ (962) 778 097 743</p>
                    </div>
                </div>

            </div>
                        </div>
                 <div class="col-lg-12 " style="margin-top: 20px;  ">
                            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1498.0502864585817!2d35.850245430061804!3d32.55259514266934!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151c7715f2c2e7ab%3A0x51755840c8ddbefd!2sOrange%20Digital%20Village%20Irbid!5e0!3m2!1sar!2sjo!4v1673162906575!5m2!1sar!2sjo" width="100%" height="384px" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                        </div>   
                    </ContentTemplate>
                </asp:UpdatePanel>
                  
          
                  
        </div>
            </div>
    </address>
</asp:Content>