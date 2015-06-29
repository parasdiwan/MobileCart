<%-- 
    Document   : nokia
    Created on : Jul 21, 2013, 10:36:15 PM
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


    <div id="fig">
 <%
String s4=(String)request.getAttribute("getos");
String s5=(String)request.getAttribute("getpricerange");
if((s4.equals("Windows")&& s5.equals("Price Range"))||(s4.equals("Operating System")&& s5.equals("Price Range")))
{
%>
        <div id="figcap">
<figure>


    <img src="lumia520.jpg" width="100" alt="Picture 2" title="lumia 520">
<figcaption>nokia lumia 520<br>Rs 9,899/-<br><a class="buy" href="wow.do?para1=Lumia 520">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="lumia720.jpg" width="100" alt="Picture 2" title="lumia 720">
<figcaption>nokia lumia 720<br>Rs 17,749/-<br><a class="buy"  href="wow.do?para1=Lumia 720">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="lumia920.jpg" width="100" alt="Picture 2" title="lumia 920">
<figcaption>nokia lumia 920<br>Rs 31,895/-<br><a class="buy"href="wow.do?para1=Lumia 920">Buy</a></figcaption>
</figure>
</div>
 <% } %>
 <%if((s5.equals("5000-10000")))
{
%>
 <div id="figcap">
<figure>


    <img src="lumia520.jpg" width="100" alt="Picture 2" title="lumia 520">
<figcaption>nokia lumia 520<br>Rs 9,899/-<br><a class="buy" href="wow.do?para1=Lumia 520">Buy</a></figcaption>
</figure>
</div>

        <% }%>

    <%if((s5.equals("10000-20000")))
{
%>
<div id="figcap">
<figure>

<img src="lumia720.jpg" width="100" alt="Picture 2" title="lumia 720">
<figcaption>nokia lumia 720<br>Rs 17,749/-<br><a class="buy"  href="wow.do?para1=Lumia 720">Buy</a></figcaption>
</figure>
</div>

        <% }%>
    <%if((s5.equals("20000 & above")))
{
%>
<div id="figcap">
<figure>

<img src="lumia920.jpg" width="100" alt="Picture 2" title="lumia 920">
<figcaption>nokia lumia 920<br>Rs 31,895/-<br><a class="buy"href="wow.do?para1=Lumia 920">Buy</a></figcaption>
</figure>
</div>

<% }%>
 <%
if(s4.equals("ios")||s4.equals("Android"))
 {%>
<h1><font family="agency fb">Search not found.Please search again.</font></h1>
<%}%>


    </div>
    </body>
</html>
