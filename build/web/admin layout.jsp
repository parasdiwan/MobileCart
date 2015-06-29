<%-- 
    Document   : admin layout
    Created on : Jul 19, 2013, 7:46:50 PM
    Author     : paras diwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="t" uri="/WEB-INF/struts-tiles.tld" %>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    <style type="text/css">
#d1{
margin-top:150px;
border-style:solid;
border-radius:20px;
width:200px;
background:white;
float:left;
position:absolute;
}
#d1 #d2 ul{
list-style:none;
}
#d1 #d2{
}
#d1 #d2 ul li a{
text-decoration:none;
margin:05px;
border-color:black;
font-family:agency fb;
font-size:25px;
border-style:solid;
width:80px;
text-align:center;
display:block;
color:white;
background-image:url(bg2.jpg);
float:left;

}
#d1 #d2 ul li a:hover{
background:white;
}
#d2 ul li a:hover#onlink{
background:blue;
color:black;
border-bottom:1px solid white;
}
.w11{
font-family:agency fb;
background:yellow;
font-size:30px;
width:100px;
margin-right:20px;
}

#update{

font-family:agency fb;
border-radius:20px;
border-width:thin;
background-image:url(bg3.jpg);
margin-left:500px;
position:absolute;
width:300px
}
#insert{
font-family:agency fb;
border-radius:20px;
border-width:thin;
background-image:url(bg3.jpg);
margin-left:500px;
position:absolute;
width:300px
}
.w12{
font-family:agency fb;
background:yellow;
font-size:30px;
width:100px;
margin-right:20px;
}
#delete{
font-family:agency fb;
border-radius:20px;
border-width:thin;
background-image:url(bg3.jpg);
margin-left:500px;
position:absolute;
width:300px
}
.w12{
font-family:agency fb;
background:yellow;
font-size:30px;
width:100px;
margin-right:20px;
}
    #body2{
    font-family:agency fb;
border-radius:20px;
border-width:thin;
background-image:url(bg3.jpg);
margin-left:500px;
position:absolute;
width:300px
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
#table{border-style:solid;width:500px;border-color:black;margin-left:400px;padding:10px;margin-top:0px;border-radius:20px;background-image:url(bg3.jpg);}
.w{border-style:solid;border-width:1px;border-color:brown;padding:20px;margin-top:0px;border-radius:20px;background-color:white;}
body
{
background-image:url('fb3.jpg');
background-repeat:repeat-y;
}
    </style>
</head>
<body>
<h1><font size=40px family="agency fb" color="yellow">Welcome Administrator</font></h1>
<div>
<form action="logout.do" method="POST">
<input class="logout" type="submit" value="logout" name="logout">
</form>
</div>
<div id="d1">
<div id="d2">
<ul>
<h2><li class="w1"><a href="showlist.do" id="onlink">Show list</a></li></h2>
<h2><li class="w2"><a  href="updateprice.do" id="onlink">update price</a></li></h2>
<h2><li class="w3"><a href="deletemobile.do" id="onlink">delete mobile</a></li></h2>
<h2><li class="w4"><a href="insertmobile.do" id="onlink">insert mobile</a></li></h2>
<div>
<div>
</ul>
<t:insert attribute="body1"/>
</body>
</html>
<% }%>
