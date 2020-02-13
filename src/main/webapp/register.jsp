<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String errorMessage = request.getParameter("errorMessage");

if (errorMessage != null){
	out.println(errorMessage);
}
%>


<form action="RegisterServlet" method="post">
<label for="ContactNo">Contact No:</label>
<input type="number" name="contactNo" id="ContactNo" required/>
<br/>
<label for="sname">Your Name:</label>
<input type="text" name="sname" id="sname" required/>
<br/>
<label for="sname">Address1:</label>
<input type="text" name="address1" id="address" required/>
<br/>
<label for="sname">Address2:</label>
<input type="text" name="doorno" id="sname" required/>
<br/>
<label for="scity">City:</label>
<input type="text" name="city" id="scity" required/>
<br/>
<label for="sname">State :</label>
<input type="text" name="state" id="sstate" required/>
<br/>
<label for="sname">Pincode :</label>
<input type="number" name="pincode" id="spincode" required/>
<br/>
<label for="npass">Password</label>
<input type="password" name="npass" id="npass" required/>
<br/>
<label for="npass">Re-Enter Password</label>
<input type="password" name="npass" id="npass" required oninput="check(this)"/>
<script language='javascript' type='text/javascript'>
function check(input) {
if (input.value != document.getElementById('npass').value) {
input.setCustomValidity('Password Must be Matching.');
} else {
// input is valid -- reset the error message
input.setCustomValidity('');
}
}
</script>
<button type="submit" class="btn btn-default login-buton btn-disabled">Sign up</button>
</form>
</body>
</html>