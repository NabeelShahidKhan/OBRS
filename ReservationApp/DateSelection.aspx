<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateSelection.aspx.cs" Inherits="ReservationApp.DateSelection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/owl.theme.css"/>
    <link rel="stylesheet" href="css/owl.carousel.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css"/>

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Poppins:400,500,600' rel='stylesheet' type='text/css'/>

    <link href="css/CalanderStyle.css" rel="stylesheet" />
</head>
<body data-spy="scroll" data-offset="50" data-target=".navbar-collapse" >

    <!-- =========================
         PRE LOADER
    ============================== -->
   <!-- <div class="preloader">

        <div class="sk-rotating-plane"></div>

    </div>
    -->

    <form id="form1" runat="server">
    <
  <div class="row container-fluid" style="background-color:black">
    <div class="col-lg-4"><h2>Al Yousuf Banquet</h2></div>
    <div class="col-lg-4"></div>
    <div class="col-lg-4"><h3>Reservation Calendar</h3></div>
  </div>


  <div style="border:1px solid;"class="container-fluid row">
    <div class="col-lg-4" style="margin:10px">
                  <div class="row" >
                  <asp:Label  Font-Bold="true"  class="col-lg-4" ID="Label1" runat="server" Text="Time Slot"></asp:Label>
             

                 <asp:RadioButton class="col-lg-4"
                       id="afternon"
                       Text=" 12 to 05 PM" 
                       GroupName="RadioGroup1" 
                       runat="server" AutoPostBack="True" OnCheckedChanged="EventTiming" />
                   
                  <asp:RadioButton class="col-lg-4"
                       id="night" 
                       Text=" 9 to 12 PM" 
                         Checked="true" 
                       GroupName="RadioGroup1" 
                       runat="server" AutoPostBack="True" OnCheckedChanged="EventTiming"/>
                 </div>
    </div>
    <div class="col-lg-7 container">
           <asp:Calendar AutoPostBack="false" ID="EventCalander" Font-Underline="false" runat="server" BackColor="#FFFFCC" CellPadding="10" CssClass="CalanderStyle" DayNameFormat="Full"  Font-Names="Calibri" Font-Size="Medium" Height="400px"  TitleFormat="Month" Width="600px" NextMonthText="&gt;" PrevMonthText="&lt;" OnDayRender="UpdateCalander">
            <DayHeaderStyle  BackColor="#F75133" Font-Bold="True" ForeColor="White" Height="10px" />
            <DayStyle Font-Bold="True" />
            <NextPrevStyle Font-Underline="false" ForeColor="White" />
            <OtherMonthDayStyle Wrap="True"  Font-Overline="false" />
            <SelectorStyle BackColor="Blue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="70px" HorizontalAlign="Center" />
            <TodayDayStyle BorderStyle="Solid" BorderWidth="1px" Font-Underline ="false"/>
        </asp:Calendar>
    </div>
  </div>

    <div style="margin-left:auto; margin-right:auto; width:600px;">
     <!--<div style="width:100%; height:auto; text-align:center;font-family:Calibri; font-size:50px; padding:1px;margin:2px" >Calendar Events</div>-->
      <div    class="container row">
       </div>
       <div style="margin:10px">
           
           
           
        
        </div>
    <div class="row" style="margin:10px">
        <div class="col-lg-4"><asp:Label ID="LabelDate" runat="server" Text="Date"></asp:Label></div>
        <div class="col-lg-8"><asp:Label ID="LabelSelectedDate" Text=" " runat="server"></asp:Label></div>
      <div>  
      <div class="col-lg-8"><asp:Button ID="StartReservationButton" runat="server" type="submit" class="btn btn-success p" Text="Book Now" OnClick="SelectDateButton" Height="35px" /></div>
        <div class="col-lg-4"><asp:CheckBox ID="agrred" Text="Agrred" runat="server" TextAlign="Left" /></div>
     </div>
   </div>
    </div>
    </form>
    

    <!-- =========================
         SCRIPTS
    ============================== -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.parallax.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>
