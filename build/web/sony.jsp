<%-- 
    Document   : apple
    Created on : Jul 21, 2013, 9:21:56 PM
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
<div id="fig">
    <%
String s4=(String)request.getAttribute("getos");
String s5=(String)request.getAttribute("getpricerange");
if((s4.equals("Android")&& s5.equals("Price Range"))||(s4.equals("Operating System")&& s5.equals("Price Range")))
{
%>
<div id="figcap">
<figure>

<img src="xperia e.jpg" width="100" alt="Picture 2" title="xperia e">
<figcaption>sony xperia e<br>Rs 9,490/-<br><a  class="buy"  href="wow.do?para1=xperia e">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="xperia l.jpg" width="100" alt="Picture 2" title="xperia l">
<figcaption>sony xperia l<br>Rs 16,890/-<br><a class="buy"  href="wow.do?para1=xperia l">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="xperia zl.jpg" width="100" alt="Picture 2" title="xperia zl">
<figcaption>sony xperia zl<br>Rs 34,990/-<br><a class="buy"  href="wow.do?para1=xperia zl">Buy</a></figcaption>
</figure>
</div>
<%}%>
<%
if(s5.equals("20000 & above"))
 {%>
<div id="figcap">
<figure>

<img src="xperia zl.jpg" width="100" alt="Picture 2" title="xperia zl">
<figcaption>sony xperia zl<br>Rs 34,990/-<br><a class="buy"  href="wow.do?para1=xperia zl">Buy</a></figcaption>
</figure>
</div>
 <%}%>
<% if(s5.equals("5000-10000"))
    
 {%>
<div id="figcap">
<figure>

<img src="xperia e.jpg" width="100" alt="Picture 2" title="xperia e">
<figcaption>sony xperia e<br>Rs 9,490/-<br><a  class="buy"  href="wow.do?para1=xperia e">Buy</a></figcaption>
</figure>
</div>
 <%}%>
<%
 if(s5.equals("10000-20000"))
 {%>
<div id="figcap">
<figure>

<img src="xperia l.jpg" width="100" alt="Picture 2" title="xperia l">
<figcaption>sony xperia l<br>Rs 16,890/-<br><a class="buy"  href="wow.do?para1=xperia l">Buy</a></figcaption>
</figure>
</div>

    <%}%>

<%
if(s4.equals("ios")|| s4.equals("Windows"))
 {%>
<h1><font family="agency fb">Search not found.Please search again.</font></h1>
<%}%>

</div>
</body>
</html>
