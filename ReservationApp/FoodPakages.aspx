<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodPakages.aspx.cs" Inherits="ReservationApp.FoodPakages" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2"></asp:ListView>
                </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:BRsystemDbConnectionString %>' SelectCommand="SELECT [Name], [id] FROM [food]"></asp:SqlDataSource>
            
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:BRsystemDbConnectionString %>' SelectCommand="SELECT [Menuid], [Name], [Price] FROM [menus]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
