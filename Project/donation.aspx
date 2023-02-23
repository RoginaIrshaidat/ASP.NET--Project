<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="donation.aspx.cs" Inherits="Project.WebForm1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>

        .navbar{
            background-image:url("images/nav.png");
            width:100%;
        }
        #category table td{
            width:35%
        }
 /*       #img{
            height:250px;
            width:100%;
            background-image: url(images/donation.jpg);
            background-size:cover;
        }*/
    </style>
    <script src="https://kit.fontawesome.com/72467fec0a.js" crossorigin="anonymous"></script>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--    <div id="img"></div>--%>
    <div class="container">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

   
    <div style="background-color: white; height: auto; padding:10px" >

        <h2> Make a Difference with Your Donation</h2>
        <div class="container">
        <p style="font-size:20px">
            Your generosity can help support our mission and make a meaningful impact in the lives of those in need. We rely on donations from people like you to continue our work and make a lasting difference.
     
       
           your support is deeply appreciated and essential to our success. Please use the form on this page to make your donation 
           </p>
           </div>
     
        <hr />
        <p style="font-size: larger; font-weight: bold">Select Type Of Donation</p>


       

        
        
        <div style="display: flex; flex-wrap: nowrap; justify-content: space-evenly; align-items: center; width:100%">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CellPadding="10" CellSpacing="50" RepeatColumns="2" Width="50%" CssClass="form-check" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Money</asp:ListItem>
                <asp:ListItem>Cooking Tools</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <hr />
        <div id="Tools" runat="server" >
            <p style="font-size: larger; font-weight: bold">Select Type Of Tools</p>
            
            <div style="display: flex; justify-content: center; flex-wrap:wrap;  width: 100%; align-items: center" id="category">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="10" CellSpacing="50" RepeatColumns="3" Width="50%" CssClass="form-check" >
                    <asp:ListItem >Electronics</asp:ListItem>
                    <asp:ListItem>Utinsilis</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="RadioButtonList1" ForeColor="Red" ></asp:RequiredFieldValidator>
                
            </div>
            <hr />
            <div style="display: flex; flex-direction: column; justify-content: center; align-items: center">
<%--                <div style="display: flex; width: 100%">
                    <asp:Label ID="NumberOfTools" runat="server" Text="Number Of Tools" class="form-label" Style="width: 30%"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txtNumberOfTools" runat="server" TextMode="Number" class="form-control" Style="width: 50%"></asp:TextBox>
                </div>
                
                <br />
                <br />--%>
                <div style="display: flex; flex-wrap: wrap; width: 100%">
                    
                    <asp:Label ID="imageUpload" runat="server" Text="Upload Image" class="form-label" Style="width: 25%"></asp:Label>
                    
                    
                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" AllowMultiple="True" style="width:50%"  Accept=".png,.jpg,.jpeg,.jfif"/>
                    
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
              </div>
            <br />
              <p style="font-size: larger; font-weight: bold">Quality</p>

                <div  style="display: flex; justify-content: center; align-items: center; flex-wrap: wrap; width: 100%;">
                    <asp:RadioButtonList ID="qualityRadioButtonList" runat="server" CellPadding="50" CellSpacing="12" RepeatColumns="5" Width="50%" CssClass="form-check">
                        <asp:ListItem Value="Poor">Poor</asp:ListItem>
                        <asp:ListItem Value="Decent">Decent</asp:ListItem>
                        <asp:ListItem Value="Good">Good</asp:ListItem>
                        <asp:ListItem Value="Very Good">Very Good</asp:ListItem>
                        <asp:ListItem Value="Brand New">Brand New</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="qualityRadioButtonList" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            <hr />

            <p style="font-size: larger; font-weight: bold">Your Information</p>
            <%--Name--%>
            <div style="display: flex; flex-direction: column; justify-content: center; align-items: center">

                <div style="display: flex; flex-wrap: wrap; width: 100%">
                    <asp:Label ID="lblName" runat="server" Text="Name" class="form-label" Style="width: 30%"></asp:Label>

                    <asp:TextBox ID="txtFirstName" runat="server" class="form-control" Placeholder="First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtFirstName" ForeColor="red"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtLastName" runat="server" class="form-control" Placeholder="Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtLastName" ForeColor="red"></asp:RequiredFieldValidator>

                </div>

                <br />
                <%--Email--%>
                <div style="display: flex; flex-wrap: wrap; width: 100%;">
                    <asp:Label ID="lblEmail" runat="server" Text="Email" class="form-label" Style="width: 30%"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" Placeholder="Email Name" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="red"></asp:RequiredFieldValidator>
                </div>

                <br />

                <%--Phone Number--%>
                <div style="display: flex; flex-wrap: wrap; width: 100%;">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone Number" class="form-label" Style="width: 30%"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPhone" runat="server" class="form-control" Placeholder="Phone Number" TextMode="Phone" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                </div>
                <br />
                <%--City--%>
                <div style="display: flex; flex-wrap: wrap; width: 100%;"">
                    <asp:Label ID="lblCity" runat="server" Text="City" class="form-label" Style="width: 30%"></asp:Label>

                    <asp:DropDownList ID="cityDropDownList" runat="server" class="form-control" style="width:25%">
                        <asp:ListItem Value="1">Irbid</asp:ListItem>
                        <asp:ListItem Value="2">Amman</asp:ListItem>
                        <asp:ListItem Value="3">Ajloun</asp:ListItem>
                        <asp:ListItem Value="4">Jarash</asp:ListItem>
                        <asp:ListItem Value="5">Zarqa</asp:ListItem>
                        <asp:ListItem Value="6">Mafraq</asp:ListItem>
                        <asp:ListItem Value="7">Aqaba</asp:ListItem>
                        <asp:ListItem Value="8">Karak</asp:ListItem>
                        <asp:ListItem Value="9">Madaba</asp:ListItem>
                        <asp:ListItem Value="10">Albalqa</asp:ListItem>
                        <asp:ListItem Value="11">Ma&#39;an</asp:ListItem>
                        <asp:ListItem Value="12">Tafelah</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <br />
                <%--Address--%>
                <div style="display: flex; flex-wrap: wrap; width: 100%;">
                    <asp:Label ID="lblAddress" runat="server" Text="Address" class="form-label" Style="width: 30%"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtAddress" runat="server" class="form-control" Placeholder="Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <br />
                  <div style="display: flex; flex-wrap: wrap; width: 100%;">
                <asp:Label ID="lblComment" runat="server" Text="Leave A Comment" class="form-label" Style="width: 30%"></asp:Label>
                <br />
                <asp:TextBox ID="txtComment" runat="server" class="form-control" Placeholder="Comment" TextMode="MultiLine" Width="100%" Heigth="60px"></asp:TextBox>
            </div>
            <br />
            </div>
            <%--Comment--%>
          
            
        </div>
        <%--//////////////////////////////////////////--%>

            <div id="Money" runat="server" visible="false">
                <p style="font-size: larger; font-weight: bold">Select An Amount</p>
                <%--Amount--%>
               
                        <div style="display: flex; justify-content: space-evenly; align-items: center">
                            <asp:RadioButtonList ID="RadioButtonList3" runat="server" CellPadding="50" CellSpacing="50" RepeatColumns="4" Width="50%" CssClass="form-check" Style="margin-bottom: 0px" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem Value="50">$50</asp:ListItem>
                                <asp:ListItem Value="100">$100</asp:ListItem>
                                <asp:ListItem Value="250">$250</asp:ListItem>
                                <asp:ListItem Value="Other" ID="other" runat="server">Other</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <br />

                        <div style="display: flex; width: 100%">
                            <asp:Label ID="lblOtherAmount" runat="server" Text="Other Amount $" class="form-label" Style="width:25%"></asp:Label>
                            <asp:TextBox ID="txtOtherAmount" runat="server" TextMode="Number" Min="1" class="form-control" Style="width: 50%" Enabled="false" AutoPostBack="True" OnTextChanged="txtOtherAmount_TextChanged"></asp:TextBox>
<%--                            <asp:Label ID="Label1" runat="server" Text="sthsth" Visible="false"></asp:Label>--%>
                        </div>
                <hr />
                                <p style="font-size: larger; font-weight: bold">Choose Your Prefered Organization:</p>

                <div style="display: flex; flex-direction: column; justify-content: center; align-items: center">



                    <asp:DropDownList ID="organizationDropDownList" runat="server" class="form-control" Style="width: 25%" >
                    </asp:DropDownList>
                </div>
                </>
                <br />
                <br />


                                <p style="font-size: larger; font-weight: bold">Choose Your Store</p>

                <div style="display: flex;flex-direction:column;  justify-content: center; align-items: center">
                    <asp:DropDownList ID="couponStoreDropDownList" runat="server" class="form-control" Style="width: 25%">
                    </asp:DropDownList>
                </div>


                <hr />
                <%--Information--%>
                <p style="font-size: larger; font-weight: bold">Your Information</p>

                <div style="display: flex; flex-direction: column; justify-content: center; align-items: center">

                    <div style="display: flex; flex-wrap: wrap; width: 100%">
                        <asp:Label ID="lblfirstName2" runat="server" Text="Name" class="form-label" Style="width: 30%"></asp:Label>

                        <asp:TextBox ID="txtFirstName2" runat="server" class="form-control" Placeholder="First Name"></asp:TextBox>
                        <br />
                        &nbsp;&nbsp;
                    <asp:TextBox ID="txtLastName2" runat="server" class="form-control" Placeholder="Last Name"></asp:TextBox>

                    </div>
                    <br />
                    <%--CardNumber--%>

                    <div style="display: flex; flex-wrap: wrap; width: 100%;">
                        <asp:Label ID="lblCardNumber" runat="server" Text="Card Number" class="form-label" Style="width: 30%"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCardNumber" runat="server" class="form-control" Placeholder="Card Number"></asp:TextBox>
                    </div>
                    <br />
                    <%--Expiration--%>
                    <div style="display: flex; flex-wrap: wrap; width: 100%">

                        <span style="width: 30%"></span>
                        <asp:TextBox ID="txtExpires" runat="server" class="form-control" Placeholder="Expires"></asp:TextBox>
                        <br />
                        &nbsp;&nbsp;
                    <asp:TextBox ID="txtCSC" runat="server" class="form-control" Placeholder="CSC"></asp:TextBox>

                    </div>
                    <br />
                    <%--Address2--%>

                    <div style="display: flex; flex-wrap: wrap; width: 100%;">
                        <asp:Label ID="lblStreetAddress" runat="server" Text="Street Address" class="form-label" Style="width: 30%"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtStreetAddress" runat="server" class="form-control" Placeholder="Street Address"></asp:TextBox>
                    </div>
                    <br />

                    <%--Appartment Building--%>

                    <div style="display: flex; flex-wrap: wrap; width: 100%;">
                        <asp:Label ID="lblApt" runat="server" Text="Apt, ste, bldg" class="form-label" Style="width: 30%"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtApt" runat="server" class="form-control" Placeholder="Apt, ste, bldg"></asp:TextBox>
                    </div>
                    <br />
                    <%--City--%>

<%--                    <div style="display: flex; flex-wrap: wrap; width: 100%;">
                        <asp:Label ID="lblCity2" runat="server" Text="City" class="form-label" Style="width: 30%"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCity2" runat="server" class="form-control" Placeholder="City"></asp:TextBox>
                    </div>
                    <br />--%>
                                    <div style="display: flex; flex-wrap: wrap; width: 100%;"">
                    <asp:Label ID="lblCity2" runat="server" Text="City" class="form-label" Style="width: 30%"></asp:Label>

                    <asp:DropDownList ID="cityDropDownList2" runat="server" class="form-control" style="width:25%">
                        <asp:ListItem Value="1">Irbid</asp:ListItem>
                        <asp:ListItem Value="2">Amman</asp:ListItem>
                        <asp:ListItem Value="3">Ajloun</asp:ListItem>
                        <asp:ListItem Value="4">Jarash</asp:ListItem>
                        <asp:ListItem Value="5">Zarqa</asp:ListItem>
                        <asp:ListItem Value="6">Mafraq</asp:ListItem>
                        <asp:ListItem Value="7">Aqaba</asp:ListItem>
                        <asp:ListItem Value="8">Karak</asp:ListItem>
                        <asp:ListItem Value="9">Madaba</asp:ListItem>
                        <asp:ListItem Value="10">Albalqa</asp:ListItem>
                        <asp:ListItem Value="11">Ma&#39;an</asp:ListItem>
                        <asp:ListItem Value="12">Tafelah</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <br />

                    <%--Zip COde--%>

                    <div style="display: flex; flex-wrap: wrap; width: 100%;">
                        <asp:Label ID="lblZip" runat="server" Text="Zip Code" class="form-label" Style="width: 30%"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtZip" runat="server" class="form-control" Placeholder="Zip Code"></asp:TextBox>
                    </div>
                    <br />

                    <%--Phone--%>

                    <div style="display: flex; flex-wrap: wrap; width: 100%;">
                        <asp:Label ID="lblPhone2" runat="server" Text="Phone Number" class="form-label" Style="width: 30%"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtPhone2" runat="server" class="form-control" Placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                    </div>
                    <br />
                    <%--Email--%>

                    <div style="display: flex; flex-wrap: wrap; width: 100%;">
                        <asp:Label ID="lblEmail2" runat="server" Text="Email" class="form-label" Style="width: 30%"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEmail2" runat="server" class="form-control" Placeholder="Email"></asp:TextBox>
                    </div>
                    <br />
                    
                </div>

            </div>
           
       
    </div>
     </ContentTemplate>
    </asp:UpdatePanel>
        <hr />
            <div style="display: flex; justify-content: center; align-items: center; width: 100%;">
                <asp:Button ID="btnDonate" runat="server" Text="Donate" CssClass="btn" Style="background-color: #F56F1A; color: white" OnClick="btnDonate_Click" />
            </div>


      </div>
    
</asp:Content>
