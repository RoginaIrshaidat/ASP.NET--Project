<%@ Page Title="" Language="C#" MasterPageFile="Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Project.WebForm3" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <style>
        @media only screen and (min-device-width:0px) and (max-device-width:480px){
            table{
                    overflow-x: scroll;

            }
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Dashboard</h1>
        <ol class="breadcrumb mb-4">
        </ol>
        <div class="row">
            <div class="col-xl-4 col-md-6">
                <div class="card  text-white mb-4" style="background-color: #F56F1A">
                    <div class="card-body">Organizations</div>
                    <asp:Button ID="btnOrganizations" runat="server" Text="View" OnClick="btnOrganizations_Click" />
                 
            </div>
            </div>
            <div class="col-xl-4 col-md-6">
                <div class="card  text-white mb-4" style="background-color: #F56F1A;">
                    <div class="card-body">Available Tools</div>

                    
                            <asp:Button ID="btnAvailableTools" runat="server" Text="View" OnClick="btnAvailableTools_Click" />



                </div>
            </div>
            <div class="col-xl-4 col-md-6">
                <div class="card  text-white mb-4" style="background-color: #F56F1A;">
                    <div class="card-body">Cash Donations</div>

                    
                            <asp:Button ID="btnCash" runat="server" Text="View" OnClick="btnCash_Click"  />



                </div>
            </div>
              <div class="col-xl-4 col-md-6">
                <div class="card  text-white mb-4" style="background-color: #F56F1A;">
                    <div class="card-body">Voulnteers</div>

                    
                            <asp:Button ID="btnVoulnteer" runat="server" Text="View" OnClick="btnVoulnteer_Click" />



                </div>
            </div>
            <div class="col-xl-4 col-md-6">
                <div class="card  text-white mb-4" style="background-color: #F56F1A;">
                    <div class="card-body">Donations</div>
                    <asp:Button ID="btnDonations" runat="server" Text="View" OnClick="btnDonations_Click" />
                </div>
            </div>
         <%--   <div class="col-xl-3 col-md-6">
                <div class="card  text-white mb-4" style="background-color: #F56F1A;">
                    <div class="card-body">Total Sales</div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="ordersAdmin.aspx" runat="server">View Details</a>
                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                    </div>
                </div>
            </div>--%>
        </div>
    </div>

                            <div class="container-fluid" id="availableTools" runat="server">

                                                                <h3>Available Tools</h3>


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Tool] WHERE [tool_id] = @tool_id" InsertCommand="INSERT INTO [Tool] ([donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (@donorName, @category, @quality, @dateDonated, @phone, @email, @address, @city_id, @comment, @status, @image)" SelectCommand="SELECT *
FROM Tool AS t1
LEFT JOIN city AS t2
ON t1.city_id = t2.city_id
WHERE t1.status = 'True'"
                                    UpdateCommand="UPDATE [Tool] SET [donorName] = @donorName, [category] = @category, [quality] = @quality, [dateDonated] = @dateDonated, [phone] = @phone, [email] = @email, [address] = @address, [city_id] = @city_id, [comment] = @comment, [status] = @status, [image] = @image WHERE [tool_id] = @tool_id">
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

                                <table class="table table-striped table-bordered ">
                                    <thead>
                                        <tr style="background-color:#F56F1A; color:white">
                                            <th scope="col">#</th>
                                            <th scope="col">Category</th>
                                            <th scope="col">Donation Date</th>
                                            <th scope="col">Donor Phone</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">City</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                                            <ItemTemplate>

                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td><%#Eval("category") %></td>
                                                    <td ><%#Eval("dateDonated").ToString().Substring(0,10) %></td>
                                                    <td>0<%#Eval("phone") %></td>
                                                    <td><%#Eval("address") %></td>
                                                    <td><%#Eval("cityName") %></td>
                                                    <%--      <td>><asp:Image ID="Image1" runat="server" Style="width: 150px" ImageUrl='<%#Eval("image") %>' /></td></td>--%>
                                                </tr>
                                            </ItemTemplate>

                                        </asp:Repeater>
                                    </tbody>
                                </table>

                            </div>
                            <div class="container-fluid" id="organizations" runat="server">

                                                            <h3>Organizations</h3>


                                <br />
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName)" SelectCommand="SELECT * FROM [AspNetUsers]" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [EmailConfirmed] = @EmailConfirmed, [PasswordHash] = @PasswordHash, [SecurityStamp] = @SecurityStamp, [PhoneNumber] = @PhoneNumber, [PhoneNumberConfirmed] = @PhoneNumberConfirmed, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName WHERE [Id] = @Id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Id" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Id" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                                        <asp:Parameter Name="PasswordHash" Type="String" />
                                        <asp:Parameter Name="SecurityStamp" Type="String" />
                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                        <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                                        <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                                        <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                                        <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                                        <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                                        <asp:Parameter Name="UserName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                                        <asp:Parameter Name="PasswordHash" Type="String" />
                                        <asp:Parameter Name="SecurityStamp" Type="String" />
                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                        <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                                        <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                                        <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                                        <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                                        <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                                        <asp:Parameter Name="UserName" Type="String" />
                                        <asp:Parameter Name="Id" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" Width="100%" ForeColor="Black">
                                    <Columns>
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#F56F1A" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>






                            </div>


                            
                            <div id="cash" runat="server" class="containter-fluid">
                            <div class="col-12" style="padding-inline:20px">


                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Cash]"></asp:SqlDataSource>
             <table class="table table-striped table-bordered ">
                                    <thead>
                                        <tr style="background-color:#F56F1A; color:white">
                                            <th scope="col">#</th>
                                            <th scope="col">Amount</th>
                                            <th scope="col">Donor Name</th>
                                            <th scope="col">Date Donated</th>
                                        </tr>
                                    </thead>
                                    <tbody>
            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource5">
               <ItemTemplate>

                                                <tr>
                                                    <th scope="row">#</th>
                                                    <td>$<%#Eval("amount") %></td>
                                                    <td><%#Eval("donorName") %></td>
                                                    <td><%#Eval("dateDonated").ToString().Substring(0,10) %></td>
                                                    <%--      <td>><asp:Image ID="Image1" runat="server" Style="width: 150px" ImageUrl='<%#Eval("image") %>' /></td></td>--%>
                                                </tr>
                                            </ItemTemplate>


            </asp:Repeater>
              </tbody>
                                </table>



                            </div>
                            </div>













                            <div id="vol" runat="server" class="containter-fluid">
                            <div class="col-12" style="padding-inline:20px">

                               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [volunteer]"></asp:SqlDataSource>
             <table class="table table-striped table-bordered ">
                                    <thead>
                                        <tr style="background-color:#F56F1A; color:white">
                                            <th scope="col">#</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">City</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">Phone</th>
                                        </tr>
                                    </thead>
                                    <tbody>
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource4">

             <ItemTemplate>

                                                <tr>
                                                    <th scope="row">#</th>
                                                    <td><%#Eval("name") %></td>
                                                    <td><%#Eval("city") %></td>
                                                    <td><%#Eval("adress") %></td>
                                                    <td><%#Eval("phone") %></td>
                                                </tr>
                                            </ItemTemplate>


            </asp:Repeater>
             </tbody>
                                </table>
                            </div>
                            </div>

                            <div class="container-fluid" id="donations" runat="server">
                              
                                <div class="col-12" style="padding-inline:20px">

                                  <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>

                                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                <h3>Donations</h3>
                                    <h6>Waiting For Acceptance</h6>
                                <asp:GridView ID="GridView2" runat="server" class="table table-striped table-responsive" AutoGenerateColumns="False" DataKeyNames="tool_id" DataSourceID="SqlDataSource3" CellPadding="2"  GridLines="None"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"   Width="100%" ForeColor="Black" style="font-size:12px" >

                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkStatus" runat="server"
                                                    AutoPostBack="True" OnCheckedChanged="chkStatus_OnCheckedChanged"
                                                    Checked='<%# Convert.ToBoolean(Eval("status")) %>'
                                                    Text='<%# Eval("status").ToString().Equals("True") ? " Status " : " Status " %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:CommandField ShowDeleteButton="True" />
                                        <asp:BoundField DataField="tool_id" HeaderText="tool_id" InsertVisible="False" ReadOnly="True" SortExpression="tool_id" />
                                        <asp:BoundField DataField="donorName" HeaderText="donorName" SortExpression="donorName" />
                                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                        <asp:BoundField DataField="quality" HeaderText="quality" SortExpression="quality" />
                                        <asp:BoundField DataField="dateDonated" HeaderText="dateDonated" SortExpression="dateDonated" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                        <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
                                         <asp:TemplateField HeaderText="image" SortExpression="image">
                                             <EditItemTemplate>
                                                 <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                                             </EditItemTemplate>
                                             <ItemTemplate>
                                                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="200px" style="height:100px" />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                   
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#F56F1A" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Tool] WHERE [tool_id] = @tool_id" InsertCommand="INSERT INTO [Tool] ([donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (@donorName, @category, @quality, @dateDonated, @phone, @email, @address, @city_id, @comment, @status, @image)" SelectCommand="SELECT * FROM [Tool]" UpdateCommand="UPDATE [Tool] SET [donorName] = @donorName, [category] = @category, [quality] = @quality, [dateDonated] = @dateDonated, [phone] = @phone, [email] = @email, [address] = @address, [city_id] = @city_id, [comment] = @comment, [status] = @status, [image] = @image WHERE [tool_id] = @tool_id">
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
                                    <UpdateParameters>
                                        <asp:Parameter Name="donorName" Type="String" />
                                        <asp:Parameter Name="category" Type="String" />
                                        <asp:Parameter Name="quality" Type="Int32" />
                                        <asp:Parameter DbType="Date" Name="dateDonated"  />
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
                                
                                </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>
                               
                            </div>

                        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
