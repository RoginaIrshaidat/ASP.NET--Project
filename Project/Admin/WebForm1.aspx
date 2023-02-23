<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project.Admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Cash]"></asp:SqlDataSource>
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
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
               <ItemTemplate>

                                                <tr>
                                                    <th scope="row">#</th>
                                                    <td><%#Eval("amount") %></td>
                                                    <td>0<%#Eval("donorName") %></td>
                                                    <td><%#Eval("dateDonated").ToString().Substring(0,10) %></td>
                                                    <%--      <td>><asp:Image ID="Image1" runat="server" Style="width: 150px" ImageUrl='<%#Eval("image") %>' /></td></td>--%>
                                                </tr>
                                            </ItemTemplate>


            </asp:Repeater>
              </tbody>
                                </table>
    </form>
</body>
</html>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [volunteer]"></asp:SqlDataSource>
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
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

             <ItemTemplate>

                                                <tr>
                                                    <th scope="row">#</th>
                                                    <td><%#Eval("name") %></td>
                                                    <td>0<%#Eval("city") %></td>
                                                    <td><%#Eval("adress") %></td>
                                                    <td><%#Eval("phone") %></td>
                                                    <%--      <td>><asp:Image ID="Image1" runat="server" Style="width: 150px" ImageUrl='<%#Eval("image") %>' /></td></td>--%>
                                                </tr>
                                            </ItemTemplate>


            </asp:Repeater>
             </tbody>
                                </table>
        </div>