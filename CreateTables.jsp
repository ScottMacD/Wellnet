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



<%-- Setting up database, drop, and insert statements.  Plus Catch try and catch statements to run them and find errors --%> 

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

      stmt.executeUpdate("DROP TABLE PROFILE");
      out.println("<b>Table PROFILE has been dropped</b><br />");

      stmt.executeUpdate("DROP Table ORDERDETAIL");
      out.println("<b>Table ORDERDETAIL has been dropped</b><br />");

      stmt.executeUpdate("Drop TABLE RATING");
      out.println("<b>Table RATING has been Dropped</b><br />");

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

      stmt.executeUpdate("CREATE TABLE RATING(RATINGID INT NOT NULL PRIMARY KEY, RATING INT NOT NULL, PRODUCTID INT NOT NULL)");
      out.println("<b>Table RATING has been Created</b><br />");

      stmt.executeUpdate("CREATE TABLE ORDERDETAIL(ORDERDETAILID INT NOT NULL PRIMARY KEY, ORDERID INT NOT NULL, PRODUCTID INT NOT NULL, USERID INT NOT NULL)");
      out.println("<b>Table ORDERDETAIL has been Created</b><br />");

      stmt.executeUpdate("CREATE TABLE PROFILE(PROFILEID INT NOT NULL PRIMARY KEY, PROFILEDESCRIPTION CHAR(50) NOT NULL, ACTIVE CHAR(5) NOT NULL)");
      out.println("<b>Table PROFILE has been Created</b><br />");

      
      stmt.executeUpdate("CREATE TABLE USERPROFILE(USERID CHAR(8) NOT NULL, PROFILEID INT NOT NULL)");
      out.println("<b>Table USERPROFILE has been Created</b><br />");

      stmt.executeUpdate("CREATE TABLE VINTAGE(VINTAGEID INT NOT NULL PRIMARY KEY, VINTAGETYPE CHAR(35) NOT NULL, VINTAGENOTE CHAR(50) NOT NULL)");
      out.println("<b>Table VINTAGE has been Created</b><br />");

      stmt.executeUpdate("CREATE TABLE USERS(USERID INT NOT NULL PRIMARY KEY, USERNAME CHAR(16) NOT NULL, USERPWD CHAR(8) NOT NULL, EMAIL CHAR(60) NOT NULL, ACTIVE CHAR(5) NOT NULL)");
      out.println("<b>Table USERS has been Created</b><br />");
      
      stmt.executeUpdate("CREATE TABLE PRODDESCRIPTION(PRODDESID INT NOT NULL PRIMARY KEY, PRODUCTDESCRIPTION CHAR(250) NOT NULL, LANGUAGEID INT NOT NULL)");
      out.println("<b>Table PRODESCRIPTION has been Created</b><br />");

      stmt.executeUpdate("CREATE TABLE LANGUAGE(LANGUAGEID INT NOT NULL PRIMARY KEY, LANGUAGEDES CHAR(50) NOT NULL, ACTIVE CHAR(5) NOT NULL)");
      out.println("<b>Table LANGUAGE has been Created</b><br />");
      
      stmt.executeUpdate("CREATE TABLE ORDERS(ORDERID INT NOT NULL PRIMARY KEY, QUANTITY INT NOT NULL, ORDERDES CHAR(250) NOT NULL)");
      out.println("<b>Table Orders has been Created</b><br />");
      
      stmt.executeUpdate("CREATE TABLE PRODUCT(PRODUCTID INT NOT NULL PRIMARY KEY, STOCK INT NOT NULL, PRICE INT NOT NULL, ACTIVE CHAR(5) NOT NULL, USERID INT NOT NULL, VINTAGEID INT NOT NULL, PRODDESID INT NOT NULL)");
      out.println("<b>Table PRODUCT has been Created</b><br />");
      
      
      
      
    }
    catch(SQLException e){

      out.println("<b>Table Creation failed</b><br />");
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


      <%

    try{

      DriverManager.registerDriver(new oracle.jdbc.OracleDriver());

      con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "STUDENT1","PASS");

      stmt = con.createStatement();
    }
    catch(Exception f){

      out.println("<h1>Error connection to database.</h1>");
    }

    try{

        stmt.executeUpdate("INSERT INTO ORDERDETAIL(ORDERDETAILID, ORDERID, PRODUCTID, USERID) VALUES(854554, 5566658874, 32376, 88779966)");
        stmt.executeUpdate("INSERT INTO ORDERDETAIL(ORDERDETAILID, ORDERID, PRODUCTID, USERID) VALUES(887954, 5554458874, 32246, 83774966)");
        stmt.executeUpdate("INSERT INTO ORDERDETAIL(ORDERDETAILID, ORDERID, PRODUCTID, USERID) VALUES(225654, 5554998414, 97246, 83756766)");
        stmt.executeUpdate("INSERT INTO ORDERDETAIL(ORDERDETAILID, ORDERID, PRODUCTID, USERID) VALUES(587465, 5478998424, 94785, 98521766)");
        stmt.executeUpdate("INSERT INTO ORDERDETAIL(ORDERDETAILID, ORDERID, PRODUCTID, USERID) VALUES(589785, 5253147823, 87985, 98523211)");
        stmt.executeUpdate("INSERT INTO RATING(RATINGID, RATING, PRODUCTID) VALUES(6658974, 9, 32376)");
        stmt.executeUpdate("INSERT INTO RATING(RATINGID, RATING, PRODUCTID) VALUES(3324175, 5, 32246)");
        stmt.executeUpdate("INSERT INTO RATING(RATINGID, RATING, PRODUCTID) VALUES(2215547, 10, 97246)");
        stmt.executeUpdate("INSERT INTO RATING(RATINGID, RATING, PRODUCTID) VALUES(8854648, 2, 94785)");
        stmt.executeUpdate("INSERT INTO RATING(RATINGID, RATING, PRODUCTID) VALUES(3365528, 9, 87985)");
        stmt.executeUpdate("INSERT INTO USERPROFILE(USERID, PROFILEID) VALUES(88779966, 321552991)");
        stmt.executeUpdate("INSERT INTO USERPROFILE(USERID, PROFILEID) VALUES(83774966, 525647814)");
        stmt.executeUpdate("INSERT INTO USERPROFILE(USERID, PROFILEID) VALUES(83756766, 998021456)");
        stmt.executeUpdate("INSERT INTO USERPROFILE(USERID, PROFILEID) VALUES(98521766, 224755689)");
        stmt.executeUpdate("INSERT INTO USERPROFILE(USERID, PROFILEID) VALUES(98523211, 798421457)");
        stmt.executeUpdate("INSERT INTO PRODUCT(PRODUCTID, STOCK, PRICE, ACTIVE, USERID, VINTAGEID, PRODDESID) VALUES(32376, 553, 9.99,YES,,88779966,3213213,369852258)");
        stmt.executeUpdate("INSERT INTO PRODUCT(PRODUCTID, STOCK, PRICE, ACTIVE, USERID, VINTAGEID, PRODDESID) VALUES(32246, 232, 19.99,YES,,83774966,7213223,469852225)");
        stmt.executeUpdate("INSERT INTO PRODUCT(PRODUCTID, STOCK, PRICE, ACTIVE, USERID, VINTAGEID, PRODDESID) VALUES(97246, 005, 3.33,YES,,83756766,7213297,469855485)");
        stmt.executeUpdate("INSERT INTO PRODUCT(PRODUCTID, STOCK, PRICE, ACTIVE, USERID, VINTAGEID, PRODDESID) VALUES(94785, 10242, 24.99,NO,,98521766,7357297,469887185)");
        stmt.executeUpdate("INSERT INTO PRODUCT(PRODUCTID, STOCK, PRICE, ACTIVE, USERID, VINTAGEID, PRODDESID) VALUES(87985, 850, 17.99,YES,,98523211,7356487,469888975)");
        stmt.executeUpdate("INSERT INTO USERS(USERID, USERNAME, USERPWD, EMAIL, ACTIVE) VALUES('ICHIWINE', 'Mickey12', 'NoCountryforMulletHeads@ICHIWINE.com', 'Yes')");
        stmt.executeUpdate("INSERT INTO USERS(USERID, USERNAME, USERPWD, EMAIL, ACTIVE) VALUES('LOONETUN', 'DAFFY213', 'THATSALLFOLKS@LOONEYWINE.com', 'Yes')");
        stmt.executeUpdate("INSERT INTO USERS(USERID, USERNAME, USERPWD, EMAIL, ACTIVE) VALUES('JELLYSTONEWINE', 'BOOBOOU2', 'HUCKLEBERRYHOUND@HANNABARBERAWINE.COM', 'NO')");
        stmt.executeUpdate("INSERT INTO USERS(USERID, USERNAME, USERPWD, EMAIL, ACTIVE) VALUES('GHIBLIWINE', 'TOTORO22', 'CASTLEINTHESKY@GHIBLIWINE.COM', 'YES')");
        stmt.executeUpdate("INSERT INTO USERS(USERID, USERNAME, USERPWD, EMAIL, ACTIVE) VALUES('TOMBAKER', 'DOCTOR04', 'TIMELORD4@BAKERWINES', 'YES')");
        stmt.executeUpdate("INSERT INTO PROFILE(PROFILEID, PROFILEDESCRIPTION, ACTIVE) VALUES(321552991,'Retail','Yes')");
        stmt.executeUpdate("INSERT INTO PROFILE(PROFILEID, PROFILEDESCRIPTION, ACTIVE) VALUES(525647814,'Wholesale','No')");
        stmt.executeUpdate("INSERT INTO PROFILE(PROFILEID, PROFILEDESCRIPTION, ACTIVE) VALUES(998021456,'Auction','Yes')");
        stmt.executeUpdate("INSERT INTO PROFILE(PROFILEID, PROFILEDESCRIPTION, ACTIVE) VALUES(224755689,'Wholesale','Yes')");
        stmt.executeUpdate("INSERT INTO PROFILE(PROFILEID, PROFILEDESCRIPTION, ACTIVE) VALUES(798421457,'Auction','No')");
        stmt.executeUpdate("INSERT INTO VINTAGE(VINTAGEID, VINTAGETYPE, VINTAGENOTE) VALUES(3213213, 'MERLOT', 'BLACKBERRY')");
        stmt.executeUpdate("INSERT INTO VINTAGE(VINTAGEID, VINTAGETYPE, VINTAGENOTE) VALUES(7213223, 'PINOT NOIR', 'GRAPE')");
        stmt.executeUpdate("INSERT INTO VINTAGE(VINTAGEID, VINTAGETYPE, VINTAGENOTE) VALUES(7213297, 'CHARDONNAY', 'DRY AND SWEET')");
        stmt.executeUpdate("INSERT INTO VINTAGE(VINTAGEID, VINTAGETYPE, VINTAGENOTE) VALUES(7357297, 'PINOT GRIGIO', 'SWEET')");
        stmt.executeUpdate("INSERT INTO VINTAGE(VINTAGEID, VINTAGETYPE, VINTAGENOTE) VALUES(7356487, 'CABERNET SAUVIGNON', 'RED BERRIES')");
        stmt.executeUpdate("INSERT INTO PRODDESCRIPTION(PRODDESID, PRODDESCRIPTION, LANGUAGEID) VALUES(369852258, 'A FINE MERLOT', 2)");
        stmt.executeUpdate("INSERT INTO PRODDESCRIPTION(PRODDESID, PRODDESCRIPTION, LANGUAGEID) VALUES(469852225, 'EXCELLENT PINOT NOIR', 2)");
        stmt.executeUpdate("INSERT INTO PRODDESCRIPTION(PRODDESID, PRODDESCRIPTION, LANGUAGEID) VALUES(469855485, 'A WELL-AGED CHARDONNAY', 1)");
        stmt.executeUpdate("INSERT INTO PRODDESCRIPTION(PRODDESID, PRODDESCRIPTION, LANGUAGEID) VALUES(469887185, 'A PEDESTRIAN PINOT GRIGIO', 1)");
        stmt.executeUpdate("INSERT INTO PRODDESCRIPTION(PRODDESID, PRODDESCRIPTION, LANGUAGEID) VALUES(469888975, 'A DELIGHFUL CABERNET SAUVIGNON', 2)");
        stmt.executeUpdate("INSERT INTO LANGUAGE(LANGUAGEID, LANGUAGEDES, ACTIVE) VALUES(1, 'ENGLISH', 'YES')");
        stmt.executeUpdate("INSERT INTO LANGUAGE(LANGUAGEID, LANGUAGEDES, ACTIVE) VALUES(2, 'JAPANESE', 'YES')");
        stmt.executeUpdate("INSERT INTO ORDERS(ORDERID, QUANTITY, ORDERDES) VALUES(5566658874, 500,  '500 BOTTLES')");
        stmt.executeUpdate("INSERT INTO ORDERS(ORDERID, QUANTITY, ORDERDES) VALUES(5554458874, 1000, '1000 BOTTLES')");
        stmt.executeUpdate("INSERT INTO ORDERS(ORDERID, QUANTITY, ORDERDES) VALUES(5554998414, 1500, '1500 BOTTLES')");
        stmt.executeUpdate("INSERT INTO ORDERS(ORDERID, QUANTITY, ORDERDES) VALUES(5478998424, 20,   '20 BOTTLES')");
        stmt.executeUpdate("INSERT INTO ORDERS(ORDERID, QUANTITY, ORDERDES) VALUES(5253147823, 200,  '200 BOTTLES')");
        stmt.executeUpdate("COMMIT");

        out.println("<b>Data Inserted</b><br />");
    }
    catch(SQLException g){

      out.println("<b>Error inserting data</b><br />");
    }
%>


</Center>
<p></p>
  </body>
</html>



