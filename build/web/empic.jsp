<%-- 
    Document   : empic
    Created on : Sep 11, 2013, 7:08:39 PM
    Author     : nikit
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
 try{
String id=request.getAttribute("s4").toString();
 Class.forName("com.mysql.jdbc.Driver");
        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");

Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select * from mobiledatabase where id='"+id+"'");
rs.next();
Blob b=rs.getBlob(8);
byte[] bs=new byte[(int)b.length()];
bs=b.getBytes(1, (int)b.length());
response.setContentType("image/jpg");
response.getOutputStream().write(bs);
response.getOutputStream().close();
 }catch(Exception e){
  out.print(e.getMessage());
}
//byte[] bs=rs.getBlob(8).getBytes(1, );
%>