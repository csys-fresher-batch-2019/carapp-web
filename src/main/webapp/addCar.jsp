<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<style>
.lable
{
color: black;
  padding: 8px;
}
.orange{
  color: #ed6c0d;
  cursor: pointer !important;
}
</style>
<body>

<% 
int sellerId=(Integer)session.getAttribute("login_seller_id");

%>
<script>
function myFunction() {
	if(sellerId!=null)
		{
  alert("added success");
		}
	else
		{
		alert("Failed");
		}
}
	<script> 
	function validate()								 
	{ 
		var carName = document.forms["addCar"]["carName"];			 
		var carBrand = document.forms["addCar"]["CarBrand"]; 
		var TrType = document.forms["addCar"]["TrType"]; 
		var fuelType = document.forms["addCar"]["FuelType"]; 
		var regState= document.forms["addCar"]["regState"]; 
		var carAvailable = document.forms["RegForm"]["carAvailabeCity"]; 
		var regYear = document.forms["addCar"]["regYear"];			 
		var drKm = document.forms["addCar"]["drKm"]; 
		var regNo = document.forms["addCar"]["regNo"];			 
		var vid = document.forms["addCar"]["vid"]; 
		var price = document.forms["addCar"]["price"];			 
		var isowner = document.forms["addCar"]["isowner"]; 
		if (CarName.value == "")								 
		{ 
			window.alert("Please enter your name."); 
			name.focus(); 
			return false; 
		} 

		if (carBrand.value == "")							 
		{ 
			window.alert("Please enter your Car Brand."); 
			address.focus(); 
			return false; 
		} 
		
		if (trType.value == "")								 
		{ 
			window.alert("Please enter a transmission Type"); 
			email.focus(); 
			return false; 
		} 

		if (fuelType.value == "")						 
		{ 
			window.alert("Please enter FuelType."); 
			phone.focus(); 
			return false; 
		} 

		if (regState.value == "")					 
		{ 
			window.alert("Enter Registration State"); 
			password.focus(); 
			return false; 
		} 
		if (vid.value == "")					 
		{ 
			window.alert("Enter vehicle Identification number"); 
			password.focus(); 
			return false; 
		} 
		if (carAvailable.value == "")					 
		{ 
			window.alert("Enter Car available city"); 
			password.focus(); 
			return false; 
		} 
		if (regYear.value == "")					 
		{ 
			window.alert("Enter Registered Year"); 
			password.focus(); 
			return false; 
		} 
		if (drKm.value == "")					 
		{ 
			window.alert("Enter DrivenKm"); 
			password.focus(); 
			return false; 
		} 
		if (regNo.value == "")					 
		{ 
			window.alert("Enter Registration Number"); 
			password.focus(); 
			return false; 
		} 
		if (price.value == "")					 
		{ 
			window.alert("Enter car Price"); 
			password.focus(); 
			return false; 
		} 
		if (isowner.value == "")					 
		{ 
			window.alert("choose Owner option"); 
			password.focus(); 
			return false; 
		} 
	

		
		return true; 
	}
</script>
<Form action="AddCarServlet" onsubmit="return validate()" method="post">
<table>
<tbody>
<tr><td>Car Name</td><td>: <input type="text" name="carName" id="carName" required/></td></tr>
<tr><td>Car Brand</td><td>: <input type="text" name="carBrand" id="carBrand" required/></td></tr>
<tr><td>Transmission Type</td><td>: <input type="text" name="trType" id="trType" required/></td></tr>
<tr><td>Fuel Type</td><td>: <input type="text" name="fuelType" id="fuelType"required/></td></tr>
<tr><td>Registration State</td><td>: <input type="text" name="regState" id="regState"required/></td></tr>
<tr><td>Car Available City </td><td>: <input type="text" name="carAvailableCity" id="carAvailableCity" required/></td></tr>
<tr><td>Registered Year</td><td>: <input type="number" name="regYear" id="regYear"required/></td></tr>
<tr><td>Driven Kilometer</td><td>: <input type="number" name="drKm" id="drKm"required/></td></tr>
<tr><td>Registration Number</td><td>: <input type="text" name="regNo" id="regNo"required placeholder="Ex:TN00NH3433"/></td><td><Label for="regNo" class="lable"><span class="orange">Ex:TN00NH3433</span></Label></td></tr>
<tr><td>Vehicle Identification Number</td><td>: <input type="text" name="vid" id="vid"required placeholder="Ex:1NNNN11NNNN111111"/></td><td><Label for="vid"><span class="orange">Ex:1NNNN11NNNN111111</span></Label></td></tr>
<tr><td>Price</td><td>: <input type="number" name="price" id="price"required/></td></tr>
<tr><td>IsOwner</td><td><input type="radio" name="isowner" value=1>Yes<input type="radio" name="isowner"value=0>No<br></td></tr>
<tr><td></td><td align="right"><button type="submit" onclick="myfunction()" class="btn btn-default login-buton btn-disabled">add</button></td></tr>
</tbody>
</table>
</Form>
</body>
</html>