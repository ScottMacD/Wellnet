<%-- Scott MacDonald --%> 
<%-- CIS-404 --%> 
<%-- 05/11/2010 --%> 

<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="style.css" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <title>homepage</title>
  <%-- Use Bean Statement --%> 
<jsp:useBean id="user" class="user.UserData" scope="session"/> 

<html>



 
</head>
<body class="bodypages">
<h1 id="Randy" align="center" class="textcolor">Welcome to Wellnet</h1>

<p class="textcolor" align="center"><img
alt="Homepage" src="images/wineBottles.jpg" width="360" height="360" /></p>

<Center>
<p class="textcolor"> 


<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.sql.*" %>

You entered<BR>
Product: <%= user.getPRODUCTID() %><BR>
userID: <%= user.getUSERID() %><BR>
Quantity: <%= user.getQUANTITY() %><BR>
</BODY>
</HTML>