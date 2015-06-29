<%-- 
    Document   : search
    Created on : Jul 21, 2013, 6:12:27 PM
    Author     : nikit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<div id="div3">
<form action="sa.do" method="POST">
    <select  name=brands>
<option>Brands
<option>Apple
<option>Htc
<option>Micromax
<option>Nokia
<option>Samsung
<option>Sony
</select>
<br>
<br>
<br>
<select  name=os>
<option>Operating System
<option>Android
<option>ios
<option>Windows
</select>
<br>
<br>
<br>
<select  name=pricerange>
<option>Price Range
<option>5000-10000
<option>10000-20000
<option>20000 & above
</select>
<br>
<br>
<br>
<center>
<input class="ser" type="submit" value="search" name=search>
</form>
</center>
</div>

    </body>
</html>
