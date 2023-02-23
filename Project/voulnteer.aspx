<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="voulnteer.aspx.cs" Inherits="Project.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url(images/vol.jpg);
            background-size: cover;
            background-repeat: no-repeat;
        }

        .navbar {
            background-image: url(images/nav.png);
        }
        .main1{
            margin-top:40px;
            padding-top:30px;
            padding-bottom:30px;
            display:flex;
            justify-content:space-around;
             background-image:url("images/fff.png");
        }
        .main2{
           
            margin-top:50px;
            width:40%;
            display:flex;
            flex-direction:column;
            padding-inline:20px;
            justify-content:center;
            align-items:center;
            gap:30px;
           
        }
        .main11{
            display:flex;
            align-items:center;
            width:40%
        }
        .txt1{
            width:300px;
        }
        .bbb{
            background-color:#F56F1A;
            width:200px;
            border:1px;
            height:50px;
        }
    </style>
    <script>
        function voulnteer() {
            swal({
                title: 'Success!',
                text: 'Your application has been submitted',
                type: 'success',
                icon: 'success',
                button: 'Ok',

            });
            //.then((willDelete) => {
            //    if (willDelete) {
            //        window.location.href = '/Default.aspx';
            //    }
            //});

        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main1" >
        <div class="main11"> <h1  >"You can be a part of something bigger than yourself by giving."</h1> </div>
       <div class="main2">
           <h1> Be A Volunteer</h1>
        <div>
           
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txt1" placeholder="ENTER Your Full Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="ENTER YOU NAME PLEASE" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:TextBox ID="TextBox2" runat="server"  CssClass="txt1" placeholder="Enter Your city"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="ENTER YOUR CITY PLEASE" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:TextBox ID="TextBox3" runat="server"  CssClass="txt1" placeholder="Enter Your Adress"  ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="ENTER YOUR ADRESS PLEASE" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Phone"  CssClass="txt1" placeholder="ENter Phone Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="ENTER YOUR PHONE " ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Email"  CssClass="txt1" placeholder="ENter Your Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="ENTER YOUR MAIL" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
       
        <div>
            <asp:Button ID="Button2" runat="server" Text="Apply" CssClass="bbb" OnClick="Button2_Click" ForeColor="White" />
        </div>
</div>

    </div>
</asp:Content>
