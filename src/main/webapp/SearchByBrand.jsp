<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List" %>
     <%@page import="com.chainsys.carsale.model.CarDetail" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>

.orange{
  color: #ed6c0d;
  
  cursor: pointer !important;
}
modal-title{
                    font-size: 20px;
                    color: #463364;
                    margin-bottom: 48px;
                    font-weight: 500;
                    line-height: 1.3;
                    max-width: 194px;
                }
.left{
float:left;
padding-left: 20px;
padding-right: 20px;
padding-top: 20px;
padding-bottom: ;
}
.right{
float:right;
}
</style>
</head>
<%List<CarDetail> cd=(List<CarDetail>)request.getAttribute("availableCar"); %>
<body>
<form action="SearchByBrandServlet" method="get">
<div>
<input type="text" name="carBrand" required/>
<button name="submit">Search</button>
</div>
<%if(cd!=null)
{%>
<%	for(CarDetail cd1:cd)
	{%>
<div class="left">
<div class ="card-desk", class="left">
<div class="card" style="width: 18rem; height: 25rem">
  <img src="assets/images/<%=cd1.getImageSrc()%>" class="card-img-top" alt="image">
  <div class="card-body">
    <h5 class="card-title"><%=cd1.getCarBrand() %> <%=cd1.getCarName() %> </h5>
    <h6 class="card-text">price:<%=cd1.getRegYear()%>
    <br/>
    <br/>
    DrivenKm:<%=cd1.getDrivenKm()%>
    <br/>
    <br/>
    price:<%=cd1.getPrice() %></h6>
    <a href="viewFullDetail" class="right" class="madal-title"><span class="orange">view Detail></a></a>
  </div>
</div>
</div>
</div>
<%}%>
<%} %>
</form>
</body>
</html>