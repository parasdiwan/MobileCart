<%-- 
    Document   : update
    Created on : Jul 19, 2013, 7:50:48 PM
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
<div id="update" method="POST">
<form action="nikit11.do">
<center>
<h1><font color="white">UPDATE PRICE</font></h1>
<input type="text" name="id" placeholder="enter the id:">
<br>
<input type="text" name="price" placeholder="enter the new price:">
<br>
<input class="w11" type="submit" name="update" value="update">
</center>
</form>
</div>
</body>
</html>
