<%-- 
    Document   : htc1
    Created on : Jul 21, 2013, 12:59:33 PM
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
        
        
<%

if(request.getParameter("os").equals("Android"))

    out.print("<div id='fig'><div id='figcap'><figure><img src='htc8s.jpg' width='100' alt='Picture 2' title='htc 8s'><figcaption>htc 8s<br>Rs 14,994/-<br><a class='buy' href='figcap.html'>Buy</a></figcaption></figure></div>");
 
    else
if(request.getParameter("os").equals("windows"))
 
 out.print("<div id='fig'><div id='figcap'><figure><img src='lumia720.jpg' width='100' alt='Picture 2' title='htc 8s'><figcaption>htc 8s<br>Rs 14,994/-<br><a class='buy' href='figcap.html'>Buy</a></figcaption></figure></div>");

  %>
    </body>
</html>
