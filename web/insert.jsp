<%-- 
    Document   : insert
    Created on : Jul 19, 2013, 7:53:01 PM
    Author     : paras diwan
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
    <div id="insert">
<form action="nikit9.do" method="POST">
<center>
<h1><font color="white">INSERT MOBILE</font></h1>
<input type="text" name="id" placeholder="enter the id:">
<br>
<input type="text" name="name" placeholder="enter the model-name:">
<br>
<input type="text" name="brand" placeholder="enter the brand name:">
<br>
<input type="text" name="os" placeholder="enter the os:">
<br>
<input type="text" name="price" placeholder="enter the price:">
<br>
<input type="file" name="pic">
<br>
<input class="w12" type="submit" name="insert" value="insert">
</center>
</form>
</div>
    </body>
</html>
