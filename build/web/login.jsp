<%-- 
    Document   : login
    Created on : Jul 18, 2013, 1:18:36 AM
    Author     : nikit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://struts.apache.org/tags-html" prefix="t"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="h"%>

<h:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<h:javascript formName="LoginActionForm"/>
</head>
<body>
     
<div id="div1">
    <h:form action="nikit3.do" onsubmit="return validateLoginActionForm(this);">
<center>
<h1><font color="white"><u>USER LOGIN</u></font></h1>
<font color="white" size="5px">Username :</font><h:text property="user"/>
<br>
<font color="white" size="5px">Password :</font><h:password property="pass"/>
<br>
<h:submit styleClass="w9" property="login" value="login"/>
<input class="w10" type="reset" name="reset" value="reset">
</center>
</h:form>
</div>
</body>
</h:html>
