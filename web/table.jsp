<%-- 
    Document   : table
    Created on : Jul 20, 2013, 2:06:53 PM
    Author     : paras diwan
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.IOException,java.io.PrintWriter, javax.servlet.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
<%

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
            Statement s=c.createStatement();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet table</title>");
            out.println("<style type='text/css'>");
            
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div id='table'>");
            out.println("<table name=wow class='w' border=3 align='center'>");
            out.println("<tr>");

           out.println("<h2><th><a href=showlist.do?para=id>id</a></th></h2>");
           out.println("<h2><th><a href='showlist.do?para=model'>model</a></th></h2>");
           out.println("<h2><th><a href='showlist.do?para=brand'>brand</a></th></h2>");
           out.println("<h2><th><a href=showlist.do?para=os>os</a></th></h2>");
           out.println("<h2><th><a href=showlist.do?para=price>price</a></th></h2>");
           out.println("<h2><th><a href=showlist.do?para=range>range</a></th></h2>");
           out.println("</tr>");
            String s2=request.getParameter("para");
            ResultSet rs;
            if(s2==null)
            {
            rs=s.executeQuery(" select * from mobiledatabase;");
             while(rs.next())
            {

           out.println("<tr>");
           out.println("<h2><td>"+rs.getInt("id")+"</td></h2>");
           out.println("<h2><td>"+rs.getString("model")+"</td></h2>");
           out.println("<h2><td>"+rs.getString("brand")+"</td></h2>");
           out.println("<h2><td>"+rs.getString("os")+"</td></h2>");
           out.println("<h2><td>"+rs.getInt("price")+"</td></h2>");
           out.println("<h2><td>"+rs.getString("range")+"</td></h2>");
           out.println("</tr>");

        }
            }
        else if(s2!=null)
            {
             ResultSet rs1=s.executeQuery("select * from mobiledatabase order by "+s2+";");
             while(rs1.next())
            {

           out.println("<tr>");
           out.println("<h2><td>"+rs1.getInt(1)+"</td></h2>");
           out.println("<h2><td>"+rs1.getString(2)+"</td></h2>");
           out.println("<h2><td>"+rs1.getString(3)+"</td></h2>");
           out.println("<h2><td>"+rs1.getString(4)+"</td></h2>");
           out.println("<h2><td>"+rs1.getInt(5)+"</td></h2>");
           out.println("<h2><td>"+rs1.getString(6)+"</td></h2>");
           out.println("</tr>");

        }

 }         out.println("</table>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");


        }catch(Exception e)
        {
        out.print("class not found!!! please try again.");
        }
        finally {
            out.close();
        }
    
%>
</body>
</html>
