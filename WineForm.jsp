<%-- Scott MacDonald --%> 
<%-- ScottMacD82@gmail.com --%> 
<%-- 05/11/2010 --%> 

<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="style.css" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <title>homepage</title>
  

<html>



 
</head>
<body class="bodypages">
<h1 id="Randy" align="center" class="textcolor">Welcome to Wellnet</h1>

<p class="textcolor" align="center"><img
alt="Homepage" src="images/wineBottles.jpg" width="360" height="360" /></p>

<Center>
<p class="textcolor"> 

<%-- ORder form for client input --%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.sql.*" %>

<form name="form1" method="post" action="UserData.jsp">
    <select name="productid" size="5">
      <option value="1">Merlot</option>
      <option value="2">Pinot Noir</option>
      <option value="3">Chardonnay</option>
      <option value="4">Pinot Grigio</option>
      <option value="5">Cabernet Sauvigon</option>
    </select>
    <p>
    <br>
    <p> 
    <p class="textcolor">Enter Your User ID</p>
    <input type="text" name="userid" Size = 8>
	<br>
	<p>
	<p class="textcolor">Enter the Quantity you wish to Order</p>
	<input type="text" name="quantity" Size = 8>
	<p>
    <input type="submit" name="Submit">
    <br>


<%
   String PRODUCTID = request.getParameter( "productid" );
   session.setAttribute( "theProductID", PRODUCTID );
   String USERID = request.getParameter( "userid" );
   session.setAttribute( "theUserID", USERID );
   String QUANTITY = request.getParameter( "quantity" );
   session.setAttribute( "theQuantity", QUANTITY );
   
   
 
%>

 <jsp:useBean id="user" class="user.UserData" scope="session"/>
 <jsp:setProperty name="user" property="*"/>

<A HREF="ReviewPage.jsp">Continue</A>




</Center>
<p></p>
  </body>
</html>