<%-- 
    Document   : buy
    Created on : Jul 22, 2013, 7:25:00 PM
    Author     : nikit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <div id="buy5">
<img width="300px" id="buy3"src="buymob.png">
<center>
    <h1><font family="agency fb" color="green">In stock</font></h1>
<br>
<a  class="cart" href="bil1.do?para1=${param.para1}">Add to cart</a>
<br>
</center>

<%
try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
            Statement s=c.createStatement();
            String s1=request.getParameter("para1");
           request.setAttribute("para1", s1);

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet table</title>");
            out.println("<style type='text/css'>");

            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center><h2>Key Features</h2></center>");

            out.println("<div id='table'>");

            out.println("<table name=wow class='w' border=3 align='center'>");
           
           
            ResultSet rs;
            
            rs=s.executeQuery("select * from description where model='"+s1+"';");
           if(rs.next())
            {

           out.println("<tr>");
           out.println("<h2><th>model</th></h2>");
            out.println("<h2><td>"+rs.getString(1)+"</td></h2>");
           out.println("</tr>");
out.println("<tr>");
           out.println("<h2><th>os</th></h2>");
            out.println("<h2><td>"+rs.getString(2)+"</td></h2>");
           out.println("</tr>");
           out.println("<tr>");
           out.println("<h2><th>processor</th></h2>");
            out.println("<h2><td>"+rs.getString(3)+"</td></h2>");
           out.println("</tr>");
          out.println("<tr>");
           out.println("<h2><th>sim</th></h2>");
            out.println("<h2><td>"+rs.getString(4)+"</td></h2>");
           out.println("</tr>");
out.println("<tr>");
           out.println("<h2><th>internal memory</th></h2>");
            out.println("<h2><td>"+rs.getString(5)+"</td></h2>");
           out.println("</tr>");
out.println("<tr>");
           out.println("<h2><th>external memory</th></h2>");
            out.println("<h2><td>"+rs.getString(6)+"</td></h2>");
           out.println("</tr>");
out.println("<tr>");
           out.println("<h2><th>battery type</th></h2>");
            out.println("<h2><td>"+rs.getString(7)+"</td></h2>");
           out.println("</tr>");
out.println("<tr>");
           out.println("<h2><th>talk time</th></h2>");
            out.println("<h2><td>"+rs.getString(8)+"</td></h2>");
           out.println("</tr>");
out.println("<tr>");
           out.println("<h2><th>standby time</th></h2>");
            out.println("<h2><td>"+rs.getString(9)+"</td></h2>");
           out.println("</tr>");
out.println("<tr>");
           out.println("<h2><th>Primary camera</th></h2>");
            out.println("<h2><td>"+rs.getString(10)+"</td></h2>");
           out.println("</tr>");
out.println("<tr>");
           out.println("<h2><th>secondary camera</th></h2>");
            out.println("<h2><td>"+rs.getString(11)+"</td></h2>");
           out.println("</tr>");
 out.println("</table>");

           }
            }catch(Exception e)
                {
        e.getMessage();
        }
            
        
%>
</div>


</body>
</html>
