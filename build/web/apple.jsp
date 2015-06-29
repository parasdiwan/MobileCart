<%-- 
    Document   : apple
    Created on : Jul 21, 2013, 10:40:18 PM
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
if((s4.equals("ios")&& s5.equals("Price Range"))||(s4.equals("Operating System")&& s5.equals("Price Range")))
{
%>
<div id="figcap">
<figure>

<img src="iphone4.jpg" width="100" alt="Picture 2" title="iphone 4">
<figcaption>iphone 4<br>Rs 25,000/-<br><a class="buy"  href="wow.do?para1=iphone4">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="iphone5.jpg" width="100" alt="Picture 2" title="iphone 5">
<figcaption>iphone 5<br>Rs 45,500/-<br><a class="buy" href="wow.do?para1=iphone5">Buy</a></figcaption>
</figure>
</div>
<% }%>
<%if(s5.equals("20000 & above"))
{
%>
<div id="figcap">
<figure>

<img src="iphone4.jpg" width="100" alt="Picture 2" title="iphone 4">
<figcaption>iphone 4<br>Rs 25,000/-<br><a class="buy"  href="wow.do?para1=iphone4">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="iphone5.jpg" width="100" alt="Picture 2" title="iphone 5">
<figcaption>iphone 5<br>Rs 45,500/-<br><a class="buy" href="wow.do?para1=iphone5">Buy</a></figcaption>
</figure>
</div>
<% }%>




<%
if(s4.equals("Android")|| s4.equals("Windows")|| s5.equals("5000-10000")|| s5.equals("10000-20000"))
 {%>
<h1><font family="agency fb">Search not found.Please search again.</font></h1>
<%}%>
</div>>

</body>
</html>
