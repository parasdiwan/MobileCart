<%-- 
    Document   : figcap2
    Created on : Jul 21, 2013, 6:30:44 PM
    Author     : nikit
--%>

<%@page import="com.myapp.struts.searchform"%>
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
<img src="htc desire sv.jpg" width="100" alt="Picture 2" title="htc desire sv">
<figcaption>htc desire sv<br>Rs 19,599/-<br><a sv class="buy" href="wow.do?para1=desire sv">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="desire u.jpg" width="100" alt="Picture 2" title="desire u">
<figcaption>htc desire u<br>Rs 13,800/-<br><a class="buy"  href="wow.do?para1=desireu">Buy</a></figcaption>
</figure>
</div>
    <div id="figcap">
<figure>

<img src="htc one sv.jpg" width="100" alt="Picture 2" title="htc one sv">
<figcaption>htc one sv<br>Rs 43,489/-<br><a class="buy"  href="wow.do?para1=one 801e">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="htc one x plus.jpg" width="100" alt="Picture 2" title="htc one x plus">
<figcaption>htc one x plus<br>Rs 28,376/-<br><a class="buy"  href="wow.do?para1=one xplus">Buy</a></figcaption>
</figure>
</div>
<% }%>

<%if((s4.equals("Windows")&& s5.equals("Price Range"))||(s4.equals("Windows")&& s5.equals("10000-20000")))
{
%>

<div id="figcap">
<figure>
<img src="htc8s.jpg" width="100" alt="Picture 2" title="htc 8s">
<figcaption>htc 8s<br>Rs 14,994/-<br><a class="buy"  href="wow.do?para1=htc8s">Buy</a></figcaption>
</figure>
</div>
<% }%>
<%if((s5.equals("10000-20000")))
{
%>
<div id="figcap">
<figure>
<img src="htc8s.jpg" width="100" alt="Picture 2" title="htc 8s">
<figcaption>htc 8s<br>Rs 14,994/-<br><a class="buy"  href="wow.do?para1=htc8s">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="desire u.jpg" width="100" alt="Picture 2" title="desire u">
<figcaption>htc desire u<br>Rs 13,800/-<br><a class="buy"  href="wow.do?para1=desireu">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>
<img src="htc desire sv.jpg" width="100" alt="Picture 2" title="htc desire sv">
<figcaption>htc desire sv<br>Rs 19,599/-<br><a sv class="buy" href="wow.do?para1=desire sv">Buy</a></figcaption>
</figure>
</div>

<% }%>
<%if((s5.equals("20000 & above")))
{
%>
<div id="figcap">
<figure>

<img src="htc one sv.jpg" width="100" alt="Picture 2" title="htc one sv">
<figcaption>htc one sv<br>Rs 43,489/-<br><a class="buy"  href="wow.do?para1=one 801e">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="htc one x plus.jpg" width="100" alt="Picture 2" title="htc one x plus">
<figcaption>htc one x plus<br>Rs 28,376/-<br><a class="buy"  href="wow.do?para1=one xplus">Buy</a></figcaption>
</figure>
</div>
<% }%>
<%
if(s4.equals("ios")|| s5.equals("5000-10000"))
 {%>
<h1><font family="agency fb">Search not found.Please search again.</font></h1>
<%}%>
</div>
 </body>
</html>
