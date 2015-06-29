<%-- 
    Document   : layout
    Created on : Jul 18, 2013, 1:22:16 AM
    Author     : paras diwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="t" uri="/WEB-INF/struts-tiles.tld" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MOBILEkart.com</title>
    
<style type="text/css">
.w1{
font-family:agency fb;
border-style:solid;
color:white;
border-width:10px;
float:right;
margin-right:15px;
background-color:white;
display:block;
text-color:"white";
width:79px;
}
.w2{
font-family:agency fb;
border-style:solid;
border-width:10px;
color:white;
margin-right:10px;
margin-left:1095px;
margin-bottom:0px;
background-color:white;
position:absolute;
margin-top:90px;
margin-top:0px;
width:70px;
display:block;
float:right;
}
.w3{
font-family:agency fb;
border-style:solid;
border-width:10px;
color:white;
margin-top:90px;
margin-right:10px;
margin-left:997px;
margin-bottom:0px;
background-color:white;
position:absolute;
margin-top:0px;
width:70px;
display:block;
float:right;
text-align:center;
}

.w4{
font-family:agency fb;
border-style:solid;
margin-top:90px;
border-width:10px;
color:white;
margin-right:10px;
margin-left:889px;
margin-bottom:0px;
background-color:white;
position:absolute;
text-align:center;
margin-top:0px;
width:80px;
display:block;
}

.w5{
font-family:agency fb;
margin-top:90px;
border-style:solid;
text-align:center;
border-width:10px;
color:white;
margin-right:10px;
margin-left:780px;
margin-bottom:0px;
background-color:white;
position:absolute;
margin-top:0px;
width:80px;
display:block;
}
.hrtag{
height:5px;
margin-top:0px;
background-color:white;
}

#v1{
border-style:solid;
border-width:thin;
background-image:url(bg3.jpg);

}
a:link{
text-color:"green";
}
a:hover{
color:red;
}
#div5{
float:left;
position:absolute;
}
#div1{
font-family:agency fb;
border-radius:20px;
border-width:thin;
background-image:url(bg3.jpg);
margin-left:1000px;
margin-top:200px;
position:absolute;
width:300px;
height:200px;
}
.w9{
font-family:agency fb;
background:yellow;
font-size:30px;
width:100px;
margin-right:50px;

}
#div2{
font-family:agency fb;
margin-top:50px;
border-radius:20px;
border-width:thin;
background-image:url(bg3.jpg);
margin-left:1000px;
float:right;
position:absolute;
width:300px;
height:480px;
}
.w10{
font-family:agency fb;
background:yellow;
font-size:30px;
width:100px;
}
.w11{
font-family:agency fb;
background:yellow;
font-size:30px;
width:100px;

}
#div4{
font-family:agency fb;
margin-top:50px;
border-style:solid;
border-width:thin;
background-image:url(bg3.jpg);
margin-top:540px;
}
#div7{
margin-left:820px;
margin-top:100px;
float:right;
position:absolute;
}
<%-- from here starts the code for the new header.work on it in order to improve  --%>

#d1{
position:absolute;
margin-top:55px;
width:1310px;
margin-left:0px;
}
#d1 #d2 ul{
list-style:none;

}
#d1 #d2 {
height:38px;
border-bottom:solid;
}
#d1 #d2 ul li a{
text-decoration:none;
float:left;
margin:05px;
border-color:black;
font-family:agency fb;
font-size:25px;
border-style:solid;
border-bottom:none;
border-radius:10px;
width:80px;
text-align:center;
display:block;
color:white;

background-image:url(bg2.jpg);
}
#d1 #d2 ul li a:hover{
background:white;
}
#d2 ul li a:hover#onlink{
background:white;
color:black;
border-bottom:1px solid white;
}
#ml{
border-style:solid;
margin-right:20px;
background:white;
border-color:white;
height:113px;
}
body
{
background-image:url('fb3.jpg');
background-repeat:repeat-y;
}
</style>
</head>
<body>
 
    <t:insert attribute="header"/>
    <t:insert attribute="image"/>
    <t:insert attribute="body"/>
    <t:insert attribute="footer"/>
</body>
</html>
