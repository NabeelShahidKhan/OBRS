<%@ Page Title="Food Menus" Language="C#"  AutoEventWireup="true" CodeBehind="FoodMenu.aspx.cs" Inherits="ReservationApp.FoodMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link href="css/ChackBoxMenu.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/3-col-portfolio.css" rel="stylesheet" />
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
      
<title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>
                <form id="form1" runat="server">
                <div class="container row" style="margin:10px;margin-bottom:20px;">
                <div class="col-8"><h1 style="color:white">Lets make Menu Toghter</h1></div>
                 <div class="col-3">
             <asp:Button ID="submitBtn" runat="server"  Text="Lets Go" CssClass="btn btn-success w-75" OnClick="submitBtn_Click"/>
            </div>
              <div class="col-1"> 
                 <asp:Button ID="Button2" runat="server"  Text="Skip" CssClass="btn" />
                </div>
              
            </div>
             
                <div class="container-fluid">
                    <asp:CheckBoxList ID="customMenu"  CssClass="cd" CellPadding="5" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="10" BorderColor="WhiteSmoke"  TextAlign="Right" Font-Bold="true"  DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table"  DataTextField="Name" DataValueField="id" >
                        <asp:ListItem></asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT [id], [Name] FROM [food] ORDER BY [CategoryId]"></asp:SqlDataSource>
                </div>
    <!-- Bootstrap core JavaScript -->
        <script src="scripts/jquery.min.js"></script>
        <script src="scripts/bootstrap.min.js"></script>
        <script src="scripts/bootstrap.bundle.min.js"></script>
  </form>
</body>
</html>
