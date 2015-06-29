<%-- 
    Document   : samsung
    Created on : Jul 21, 2013, 10:26:42 PM
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

<img src="galaxy grand.jpg" width="100" alt="Picture 2" title="galaxy grand">
<figcaption>samsuung galaxy grand<br>Rs 19,499/-<br><a class="buy"  href="wow.do?para1=galaxy grand">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="galaxy s duos.jpg" width="100" alt="Picture 2" title="galaxy s duos">
<figcaption>samsung galaxy s duos<br>Rs 11,890/-<br><a class="buy"  href="wow.do?para1=galaxy s">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="galaxy s2.jpg" width="100" alt="Picture 2" title="galaxy s2">
<figcaption>samsung galaxy s2<br>Rs 22,900/-<br><a class="buy"  href="wow.do?para1=galaxy s2">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="galaxy y plus.jpg" width="100" alt="Picture 2" title="galaxy y plus">
<figcaption>samsung galaxy y plus<br>Rs 6,294/-<br><a class="buy" href="wow.do?para1=galaxy y plus">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="galaxy y.jpg" width="100" alt="Picture 2" title="galaxy y">
<figcaption>samsung galaxy y<br>Rs 7,890/-<br><a class="buy"  href="wow.do?para1=galaxy y">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="galaxys4.jpg" width="100" alt="Picture 2" title="galaxy s4">
<figcaption>samsung galaxy s4<br>Rs 41,500/-<br><a class="buy"  href="wow.do?para1=galaxy s4">Buy</a></figcaption>
</figure>
</div>
<%}%>
<%if((s5.equals("5000-10000")))
{
%>
<div id="figcap">
<figure>

<img src="galaxy y plus.jpg" width="100" alt="Picture 2" title="galaxy y plus">
<figcaption>samsung galaxy y plus<br>Rs 6,294/-<br><a class="buy" href="wow.do?para1=galaxy y plus">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="galaxy y.jpg" width="100" alt="Picture 2" title="galaxy y">
<figcaption>samsung galaxy y<br>Rs 7,890/-<br><a class="buy"  href="wow.do?para1=galaxy y">Buy</a></figcaption>
</figure>
</div>



            <%}%>

            <%if((s5.equals("10000-20000")))
{
%>
<div id="figcap">
<figure>

<img src="galaxy grand.jpg" width="100" alt="Picture 2" title="galaxy grand">
<figcaption>samsuung galaxy grand<br>Rs 19,499/-<br><a class="buy"  href="wow.do?para1=galaxy grand">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="galaxy s duos.jpg" width="100" alt="Picture 2" title="galaxy s duos">
<figcaption>samsung galaxy s duos<br>Rs 11,890/-<br><a class="buy"  href="wow.do?para1=galaxy s">Buy</a></figcaption>
</figure>
</div>
<%}%>
 <%if((s5.equals("20000 & above")))
{
%>

            <div id="figcap">
<figure>

<img src="galaxys4.jpg" width="100" alt="Picture 2" title="galaxy s4">
<figcaption>samsung galaxy s4<br>Rs 41,500/-<br><a class="buy"  href="wow.do?para1=galaxy s4">Buy</a></figcaption>
</figure>
</div>
<div id="figcap">
<figure>

<img src="galaxy s2.jpg" width="100" alt="Picture 2" title="galaxy s2">
<figcaption>samsung galaxy s2<br>Rs 22,900/-<br><a class="buy"  href="wow.do?para1=galaxy s2">Buy</a></figcaption>
</figure>
</div>
            <%}%>


        <%
if(s4.equals("ios")||s4.equals("Windows"))
 {%>
<h1><font family="agency fb">Search not found.Please search again.</font></h1>
<%}%>

        </div>
    </body>
</html>
