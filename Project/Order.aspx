<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Project.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
                 .navbar{
            background-image:url("images/nav.png");
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">








<div class="ScriptTop">
            <div class="rt-container">

                <div class="rt-container">
                    <div class="col-rt-12">
                        <div class="Scriptcontent">

                            <!-- Student Profile -->
                            <div class="student-profile py-4">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="card shadow-sm">
                                                <div class="card-header bg-transparent text-center">
                                                    <asp:Image ID="userPic" runat="server" src="Images/user.png" class="profile_img" />
                                                    <br />
                                                    <asp:Label ID="lblName" runat="server"></asp:Label>
                                                </div>
                                                <div class="card-body">

                                                    <a href="profile.aspx"><strong class="pr-1">Profile</strong> </a>
                                                    <br />

                                                    <a href="#"><strong class="pr-1">Order</strong> </a>
                                                    <br />


                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">

                                            <div class="card shadow-sm">
                                                <div class="card-header bg-transparent border-0">
                                                    <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Organization Orders</h3>
                                                </div>
                                                <div class="card-body pt-0">


                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Tool] WHERE ([status] = @status)" DeleteCommand="DELETE FROM [Tool] WHERE [tool_id] = @tool_id" InsertCommand="INSERT INTO [Tool] ([donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (@donorName, @category, @quality, @dateDonated, @phone, @email, @address, @city_id, @comment, @status, @image)" UpdateCommand="UPDATE [Tool] SET [donorName] = @donorName, [category] = @category, [quality] = @quality, [dateDonated] = @dateDonated, [phone] = @phone, [email] = @email, [address] = @address, [city_id] = @city_id, [comment] = @comment, [status] = @status, [image] = @image WHERE [tool_id] = @tool_id">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="tool_id" Type="Int32" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="donorName" Type="String" />
                                                        <asp:Parameter Name="category" Type="String" />
                                                        <asp:Parameter Name="quality" Type="Int32" />
                                                        <asp:Parameter DbType="Date" Name="dateDonated" />
                                                        <asp:Parameter Name="phone" Type="Int32" />
                                                        <asp:Parameter Name="email" Type="String" />
                                                        <asp:Parameter Name="address" Type="String" />
                                                        <asp:Parameter Name="city_id" Type="Int32" />
                                                        <asp:Parameter Name="comment" Type="String" />
                                                        <asp:Parameter Name="status" Type="Boolean" />
                                                        <asp:Parameter Name="image" Type="String" />
                                                    </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="status" Type="Boolean" />
        </SelectParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="donorName" Type="String" />
                                                        <asp:Parameter Name="category" Type="String" />
                                                        <asp:Parameter Name="quality" Type="Int32" />
                                                        <asp:Parameter DbType="Date" Name="dateDonated" />
                                                        <asp:Parameter Name="phone" Type="Int32" />
                                                        <asp:Parameter Name="email" Type="String" />
                                                        <asp:Parameter Name="address" Type="String" />
                                                        <asp:Parameter Name="city_id" Type="Int32" />
                                                        <asp:Parameter Name="comment" Type="String" />
                                                        <asp:Parameter Name="status" Type="Boolean" />
                                                        <asp:Parameter Name="image" Type="String" />
                                                        <asp:Parameter Name="tool_id" Type="Int32" />
                                                    </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1"  class="table table-striped" runat="server" DataKeyNames="category" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" >
        <Columns>
            
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            <asp:BoundField DataField="quality" HeaderText="quality" SortExpression="quality" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
             <asp:TemplateField HeaderText="image" SortExpression="image">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' style="width:200px; height:150px"/>
                 </ItemTemplate>
            </asp:TemplateField>

           <%-- <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="" Text="Button" OnClick="LinkButton1_Click" Enabled="false"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>--%>

<%--            <asp:buttonfield  buttontype="button" Text="Accept" commandname="accept"  />--%>

        </Columns>
    </asp:GridView>


                                                </div>

                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
