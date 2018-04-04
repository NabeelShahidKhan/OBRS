<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateSelection.aspx.cs" Inherits="ReservationApp.DateSelection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <script src="scripts/bootstrap.min.js"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet" />

    <link href="css/CalanderStyle.css" rel="stylesheet" />
</head>
<body >
    <form id="form1" runat="server">
    <div style="margin-left:auto; margin-right:auto; width:600px;">
     <div style="width:100%; height:auto; color:white; text-align:center;font-family:Calibri; font-size:50px; padding:1px;margin:2px" >Calendar Events</div>
      <div    class="container" style="color:white">
          <asp:Label  Font-Bold="true"  class="h4" style="margin:20px" ID="Label1" runat="server" Text="Time Slote"></asp:Label>
      <asp:RadioButton 
           style="margin-left:10px;"
           id="afternon" 
           Text="Afternoon 12 to 05 PM" 
           GroupName="RadioGroup1" 
           runat="server" AutoPostBack="True" OnCheckedChanged="EventTiming" />
      <asp:RadioButton style="margin-left:10px" id="night" 
           Text="Night 9 to 12 PM" 
             Checked="true" 
           GroupName="RadioGroup1" 
           runat="server" AutoPostBack="True" OnCheckedChanged="EventTiming"/>
       </div><div style="margin:10px">
           <asp:Calendar AutoPostBack="false" ID="EventCalander" runat="server" BackColor="#FFFFCC" CellPadding="10" CssClass="CalanderStyle" DayNameFormat="Full"  Font-Names="Calibri" Font-Size="Medium" Height="400px"  TitleFormat="Month" Width="600px" NextMonthText="&gt;" PrevMonthText="&lt;" OnDayRender="UpdateCalander">
            <DayHeaderStyle  BackColor="#F75133" Font-Bold="True" ForeColor="White" Height="10px" />
            <DayStyle Font-Bold="True" />
            <NextPrevStyle Font-Underline="false" ForeColor="White" />
            <OtherMonthDayStyle Wrap="True"  Font-Overline="false" />
            <SelectorStyle BackColor="Blue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="70px" HorizontalAlign="Center" />
            <TodayDayStyle BorderStyle="Solid" BorderWidth="1px" Font-Underline ="false"/>
        </asp:Calendar>
        </div>
    <div class="container" style="margin:10px">
        <asp:Label ID="LabelDate" runat="server" Text="Date"></asp:Label>
        <asp:Label ID="LabelSelectedDate" Text=" " runat="server"></asp:Label>
        <asp:CheckBox ID="agrred" Text="Agrred" runat="server" TextAlign="Left" />
        <asp:Button ID="StartReservationButton" runat="server" type="submit" class="btn btn-success p" Text="Book Now" OnClick="SelectDateButton" Height="35px" />
   </div>
    </div>
    </form>
</body>
</html>
