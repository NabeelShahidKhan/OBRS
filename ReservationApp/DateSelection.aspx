<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateSelection.aspx.cs" Inherits="ReservationApp.DateSelection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <script src="scripts/bootstrap.min.js"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <script src="scripts/jquery.min.js"></script>
  <script src="scripts/formValidation.js"></script>

  <script type="text/javascript">
     
      $(document).ready(function () {
         
          $("#start").click(function () {
              $("#calanderDiv").show();
              $("#calanderNext").show();
              $("#start").hide();
              $("#reservationDiv").hide();
          });



          $("#calanderNext").click(function () {
              $("#calanderDiv").hide();
              $("#calanderNext").hide();
              $("#start").hide();
              $("#reservationDiv").show();
          });
         
      });
  </script>

    <link href="css/CalanderStyle.css" rel="stylesheet" />
</head>
<body >
<button id="start" style=" font-size:x-large; height: 60px; width: 300px;" >Start Booking Now.</button>
    <form id="form1" runat="server">
    <div id="calanderDiv" style=" display:none;  margin-left:auto; margin-right:auto; width:600px;">
     <div style="width:100%; height:auto; color:white; text-align:center;font-family:Calibri; font-size:50px; padding:1px;margin:2px" >Calendar Events</div>
       <asp:Calendar ID="EventCalander" runat="server" BackColor="#FFFFCC" CellPadding="10" CssClass="CalanderStyle" DayNameFormat="FirstLetter"  Font-Names="Calibri" Font-Size="Medium" Height="400px"  TitleFormat="Month" Width="600px" NextMonthText="&gt;" PrevMonthText="&lt;" OnDayRender="UpdateCalander">
            <DayHeaderStyle BackColor="#F75133" Font-Bold="True" ForeColor="White" Height="10px" />
            <DayStyle Font-Bold="True" />
            <NextPrevStyle Font-Underline="false" ForeColor="White" />
            <OtherMonthDayStyle Wrap="True"  Font-Overline="false" />
            <SelectorStyle BackColor="Blue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="70px" HorizontalAlign="Center" />
            <TodayDayStyle BorderStyle="Solid" BorderWidth="1px" Font-Underline ="false"/>
        </asp:Calendar>
    
        <asp:Label ID="LabelDate" runat="server" Text="Date"></asp:Label>
        <asp:Label ID="LabelSelectedDate" Text=" " runat="server"></asp:Label>
        <asp:CheckBox ID="agrred" Text="Agrred" runat="server" TextAlign="Left" />

<!--        <asp:Button ID="StartReservationButton" runat="server" type="submit" class="btn btn-success" Text="Book Now" OnClick="SelectDateButton" />
    -->
    </div>
    </form>
        <button id="calanderNext" style="display:none;" class="btn btn-success" >Next<span class="glyphicon glyphicon-send"></span></button>


  <div class="container" style=" display:none;" id="reservationDiv" ">

    <form class="well form-horizontal container" action=" " method="post"  style="width:50%; margin-left:auto; margin-right:auto;" id="contact_form"/>
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Registration Form</b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="first_name" placeholder="First Name" class="form-control"  type="text"/>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Last Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="last_name" placeholder="Last Name" class="form-control"  type="text"/>
    </div>
  </div>
</div>

  <div class="form-group"> 
  <label class="col-md-4 control-label">Department / Office</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="department" class="form-control selectpicker">
      <option value="">Select your Department/Office</option>
      <option>Department of Engineering</option>
      <option>Department of Agriculture</option>
      <option >Accounting Office</option>
      <option >Tresurer's Office</option>
      <option >MPDC</option>
      <option >MCTC</option>
      <option >MCR</option>
      <option >Mayor's Office</option>
      <option >Tourism Office</option>
    </select>
  </div>
</div>
</div>
  
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Username</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="user_name" placeholder="Username" class="form-control"  type="text"/>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="user_password" placeholder="Password" class="form-control"  type="password"/>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Confirm Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="confirm_password" placeholder="Confirm Password" class="form-control"  type="password"/>
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email" placeholder="E-Mail Address" class="form-control"  type="text"/>
    </div>
  </div>
</div>


<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Contact No.</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="contact_no" placeholder="(639)" class="form-control" type="text"/>
    </div>
  </div>
</div>
<!-- Select Basic -->
<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
  <button type="submit" class="btn btn-warning" >SUBMIT<span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>

</div>
    
</body>
</html>
