<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationForm.aspx.cs" Inherits="ReservationApp.ReservationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="css/style.css" rel="stylesheet" />

    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/owl.theme.css"/>
    <link rel="stylesheet" href="css/owl.carousel.css"/>
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

  
</head>
<body>
    <form id="form1" runat="server">
    
<div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
  								<!--<input type="text" placeholder="Enter First Name Here.." class="form-control"/>-->
                                <asp:TextBox ID="firstName" type="text" placeholder="Enter First Name Here.." class="form-control" runat="server"></asp:TextBox>
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<!--<input type="text" placeholder="Enter Last Name Here.." class="form-control"/>-->
                                <asp:TextBox  type="text" placeholder="Enter Last Name Here.." class="form-control" ID="lastName" runat="server"></asp:TextBox>
							</div>
						</div>		
                            <div class="row">
						<div class="col-sm-8 form-group">
							<label>Address</label>
							<!--<textarea placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>-->
                             <asp:TextBox  placeholder="Enter Address Here.." rows="3" class="form-control" ID="address" runat="server"></asp:TextBox>
						</div>
                    	<div class="col-sm-4 form-group">
								<label>City</label>
								<!--<input type="text" placeholder="Enter State Name Here.." class="form-control"/>-->
						    	<asp:TextBox  type="text" placeholder="Enter State Name Here.." class="form-control" ID="City" runat="server"></asp:TextBox>
							</div>	
                    
                        </div>
					
                        <div class="row">
					<div class="col-sm-4 form-group">
						<label>Phone Number</label>
						<!--<input type="text" placeholder="Enter Phone Number Here.." class="form-control"/>-->
                                <asp:TextBox  type="text" placeholder="Enter Phone Number Here.." class="form-control" ID="phoneNo" runat="server"></asp:TextBox>
					</div>		
					<div class="col-sm-4 form-group">
						<label>Mobile Number</label>
						<!--<input type="text" placeholder="Enter Mobile Number Here.." class="form-control"/>-->
                          <asp:TextBox  type="text" placeholder="Enter Mobile Number Here.." class="form-control" ID="mobileNo" runat="server"></asp:TextBox>
					</div>		
                    </div>
				        <div class="row">			
                        <div class="col-sm-4 form-group">
								<label>N.I.C</label>
								<!--<input type="text" placeholder="Enter State Name Here.." class="form-control"/>-->
						    	<asp:TextBox  type="text" placeholder="Enter N.I.C Here.." class="form-control" ID="NIC" runat="server"></asp:TextBox>
							</div>
                            </div>
                    
                    <div class="row">
                	<div class="col-sm-8 form-group">
						<label>Email Address</label>
						<!--<input type="text" placeholder="Enter Email Address Here.." class="form-control"/>-->
                        <asp:TextBox  type="text" placeholder="Enter Email Address Here.." class="form-control" ID="Email" runat="server"></asp:TextBox>
                    </div>	
                    </div>
	                   
                           <asp:Button ID="SubmitButton" class="btn btn-lg btn-info" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                       			
					</div>
				</div>
	</div>
	</div>
    </form>
</body>
</html>
