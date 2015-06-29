<%-- 
    Document   : micromax
    Created on : Jul 21, 2013, 10:30:13 PM
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
if((s4.equals("Android")&& s5.equals("Price Range"))||(s4.equals("Operating System")&& s5.equals("Price Range")))
{
%>
            <div id="figcap">
<figure>
<img src="canvas 4.jpg" width="100" alt="Picture 2" title="canvas 4">
<figcaption>micromax canvas 4<br>Rs 17,990/-<br><a class="buy" href="wow.do?para1=canvas 4">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="canvasa116.jpg" width="100" alt="Picture 2" title="canvas a116">
<figcaption> micromax canvas a116<br>Rs 13,546/-<br><a class="buy"  href="wow.do?para1=canvas a116">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="canvasa115.jpg" width="100" alt="Picture 2" title="canvas a115">
<figcaption> micromax canvas a115<br>Rs 8,999/-<br><a class="buy"  href="wow.do?para1=canvas a115">Buy</a></figcaption>
</figure>
</div>
            <% }%>
<%if((s5.equals("10000-20000")))
{
%>
 <div id="figcap">
<figure>
<img src="canvas 4.jpg" width="100" alt="Picture 2" title="canvas 4">
<figcaption>micromax canvas 4<br>Rs 17,990/-<br><a class="buy" href="wow.do?para1=canvas 4">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="canvasa116.jpg" width="100" alt="Picture 2" title="canvas a116">
<figcaption> micromax canvas a116<br>Rs 13,546/-<br><a class="buy"  href="wow.do?para1=canvas a116">Buy</a></figcaption>
</figure>
</div>
<%}%>
<%if((s5.equals("5000-10000")))
{
%>

<div id="figcap">
<figure>

<img src="canvasa115.jpg" width="100" alt="Picture 2" title="canvas a115">
<figcaption> micromax canvas a115<br>Rs 8,999/-<br><a class="buy"  href="wow.do?para1=canvas a115">Buy</a></figcaption>
</figure>
</div>

 <%}%>
 <%
if(s4.equals("ios")||s5.equals("20000 & above")||s4.equals("Windows"))
 {%>
<h1><font family="agency fb">Search not found.Please search again.</font></h1>
<%}%>

     </div>
    </body>
</html>
