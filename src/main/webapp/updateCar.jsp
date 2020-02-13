<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.carsale.dao.impl.CarOwnerImp" %>
    <%@page import="com.chainsys.carsale.model.CarOwner" %>
    <%@page import="java.util.List" %>
  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<%
	Integer sellerId=(Integer)session.getAttribute("login_seller_id"); 
CarOwnerImp odi=new CarOwnerImp();
List<CarOwner> car=(List<CarOwner>)request.getAttribute("totalCar");
%>
<table>
<thead>
<tr>
<th>SellerName</th>
<th>SellerId</th>
<th>CarAvailableCity</th>
<th>CarBrand</th>
<th>CarName</th>
<th>DrivenKm</th>
<th>Price</th>
<th>Registration Year</th>
<th>Registration Number</th>
<th>Vehicle Identification Number</th>
</tr>
</thead>
<% if(sellerId !=0 && car !=null){
{for(CarOwner co:car){%>
	<tr>
	<td><%=co.getOwnerName() %></td>
	<td><%=co.getOwnerId() %></td>
	<td><%=co.getCarDetail().getCarAvailableCity()%></td>
	<td><%=co.getCarDetail().getCarBrand() %></td>
	<td><%=co.getCarDetail().getCarName() %></td>
	<td><%=co.getCarDetail().getDrivenKm() %></td>
	<td><%=co.getCarDetail().getPrice() %></td>
	<td><%=co.getCarDetail().getRegYear() %></td>
	<td><%=co.getCarDetail().getRegistrationNo() %></td>
	<td><%=co.getCarDetail().getVehicleIdNo() %></td>
	</tr>
	<%}
}
}
%>
</table>
</form>
</body>
</html>