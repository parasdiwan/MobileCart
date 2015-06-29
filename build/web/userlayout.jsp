<%-- 
    Document   : userlayout
    Created on : Jul 20, 2013, 11:47:42 AM
    Author     : nikit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="t"%>
<%
HttpSession session1=request.getSession(false);
String s7=(String)session1.getAttribute("userid");
if(s7.equals(null))
    {
   response.sendRedirect("layout.jsp");
}
else
{
%>
<html>
<head>
<title>User page</title>
<style type="text/css">
#div3{
font-family:agency fb;
border-style:solid;
border-width:thin;
background-image:url(bg3.jpg);
margin-right:1200px;
width:190px;
height:500px;
-webkit-appearence:none;
color:white;
float:left;
position:absolute;
padding:10px;

}
#div3 select{
font-family:agency fb;
font-size:25px;
overflow:hidden;

align:center;}
.ser{
font-family:agency fb;
background:yellow;
font-size:25px;
margin-top:200px;

}
figure  {
  display:block;
  margin-before: 1em;
  margin-after: 1em;
  margin-start: 40px;
  margin-end: 40px;
  }
img {
  border: 1px solid #323232;
  padding: 30px;
  background: #fff;
  border-radius: 12px;
  box-shadow: 3px 3px 5px rgba(50, 50, 50, .5);
  margin-left:50px;
  border-color:white;

}
#fig{
margin-left:300px;
margin-top:0px;
position:absolute;
border-style:solid;
background:white;
width:900px;
border-color:white;
border-radius:20px;
}
figcaption {
  padding: 5px;
  font-family: 'agency fb', cursive;
  font-size:20px;
  font-weight: 700;
  border: white;
  word-wrap:normal;
  text-align:right;
  }
figcaption {
  display: block;
}

a {
  text-decoration:none;
}
.logout{
font-family:agency fb;
background:yellow;
font-size:30px;
width:100px;
margin-left:1200px;
margin-top:0px;
}
.weluser{
float:left;
margin-top:0px;
}
#figcap{
float:left;
text-align: center;
}
.buy {
border-style:solid;
border-radius:5px;
border-color:red;
padding-left:2px;
padding-right:2px;
}
a:hover{
   background-color:yellow;
   color:black;
}
#buy5{
border-style:solid;
border-radius:20px;
background-color:white;
width:600px;
margin-left: 500px;
border-color:white;
}
.buy4{
border-style:solid;
border-radius:20px;
background-color:green;
color:white;
font-family:agency fb;
font-size:30px;
padding:10px;
text-decoration:none;
}
.cart{
border-style:solid;
border-radius:20px;
background-color:blue;
color:white;
font-size:30px;
font-family:agency fb;
padding:10px;
text-decoration:none;
}
 #bill2{
font-family:agency fb;
font-size:40px;
}
body
{
background-image:url('fb3.jpg');
background-repeat:repeat-y;
}
</style>
</head>
<body>

<h1 class="weluser"><font size=40px family="agency fb" color="yellow">Welcome <%= session1.getAttribute("userid") %> </font></h1>
<div>
<form action="logout.do">
<input class="logout" type="submit" value="logout" name="logout">
</form>
</div>
<t:insert attribute="search"/>
<t:insert attribute="figcap3"/>
</body>
</html>
<% }%>