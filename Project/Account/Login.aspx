<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-image:url("images/log.jfif");
            background-size:cover;
        }
        .navbar{
            background-image:url("images/nav.png");
        }
        .login {
            background-image: url("images/bg2.png");
            height: 600px;
            width: 600px;
            margin-top: 50px;
            padding: 30px;
            text-align:center;
            border-radius:5PX;
            display:flex;
            flex-direction:column;
            justify-content:center;
        }
        .form-group{
            margin-left:30px;
        }.btn{
             background-color: #F56F1A;
             color:white;
             width:150px;
             height:50px;
         }
        
      
     
    </style>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="admindash/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</asp:Content>

<asp:Content runat="server" ID="BodyContent"  ContentPlaceHolderID="MainContent"> 
     


    <div class="container" style="display:flex; justify-content:center; align-items:center;">
        <div class="login">
            <h1 style="color: #F56F1A;">Log In</h1>
            <div>
                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                    <p class="text-danger">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                    <br />
                </asp:PlaceHolder>
            </div>
            <div class="form-group" style="display:flex; ">
                <div style="width:30%">
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="control-label">User Name</asp:Label>
                </div>
                <div style="width:70%" >
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control"  />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
                </div>
            <div class="form-group"  style="display:flex; " >
                        <div style="width:30%">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass=" control-label">Password</asp:Label>
                        </div>
                        <div style="width:70%" >
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
             
                  
                        <div >
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    
                    
                        <div >
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn" />
                        </div>
                    
               <br />
                <p>
                    <span>Don't Have an Account?</span>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" >Register Here</asp:HyperLink>
                </p>
                
           
        </div>
        </div>
      
</asp:Content>
