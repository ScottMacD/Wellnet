
<%-- Scott MacDonald --%> 
 
<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="style.css" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <title>homepage</title>
  

<html>

<%-- HTML for design of page --%> 

 
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

<%! Connection con = null; %>
<%! Statement stmt = null; %> 


<%-- Setting up database and drop statements below that.. --%> 


  <%

    try{

      DriverManager.registerDriver(new oracle.jdbc.OracleDriver());

      con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "Student1", "Pass");

      stmt = con.createStatement();
    } 
      catch(Exception e){

      out.println("Error connection to database.");
} 
   

    try{

      stmt.executeUpdate("Drop Table ORDERDETAIL");
      out.println("<b>Table ORDERDETAIL has been Dropped</b><br />");

      stmt.executeUpdate("DROP TABLE RATING");
      out.println("<b>Table RATING has been Dropped</b><br />");

      stmt.executeUpdate("DROP TABLE PROFILE");
      out.println("<b>Table PROFILE has been dropped</b><br />");
     
      stmt.executeUpdate("DROP TABLE USERPROFILE");
      out.println("<b>Table USERPROFILE has been Dropped</b><br />");

      stmt.executeUpdate("DROP TABLE VINTAGE");
      out.println("<b>Table VINTAGE has been dropped</b><br />");

      stmt.executeUpdate("DROP TABLE USERS");
      out.println("<b>Table USERS has been Dropped</b><br />");

      stmt.executeUpdate("DROP TABLE PRODDESCRIPTION");
      out.println("<b>Table PRODDESCRIPTION has been dropped</b><br />");
      
      stmt.executeUpdate("DROP TABLE LANGUAGE");
      out.println("<b>Table LANGUAGE has been dropped</b><br />");

      stmt.executeUpdate("DROP TABLE ORDERS");
      out.println("<b>Table ORDERS has been dropped</b><br />");

      stmt.executeUpdate("DROP TABLE PRODUCT");
      out.println("<b>Table PRODUCT has been Dropped</b><br />");

      
      }
    catch(SQLException e){

      out.println("<b>Table does not exist</b><br />");
    }



    try{

      stmt.close();

      con.close();
      out.println("<b>Database connections closed</b><br />");
    }
    catch(SQLException e){

      out.println("<b>Connection close failed</b><br />");
      }
      %>

</Center>
<p></p>
  </body>
</html>