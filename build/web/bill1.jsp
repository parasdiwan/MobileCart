<%-- 
    Document   : bill1
    Created on : Jul 23, 2013, 1:20:13 PM
    Author     : nikit
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
<center>
<br>
    <a class="buy4" href="bil2.do">Continue</a>
<br>
<br>
<br>
<a  class="cart" href="bil.do">Checkout</a>
</center>
<%
 String p3=request.getParameter("para3");
//out.println(p3);
            //String p4=(String)request.getAttribute("val");
try {
    int ctr=0,sum=0;
String p;
Class.forName("com.mysql.jdbc.Driver");
            Connection c=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
            Statement s=c.createStatement();
         Statement s4=c.createStatement();
Statement s5=c.createStatement();

 
  String s3=request.getParameter("para1");

  out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet table</title>");
            out.println("<style type='text/css'>");

            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center><h2>Items added to cart</h2></center>");

            out.println("<div id='table'>");

            out.println("<table name=wow class='w' border=3 align='center'>");

           out.println("<tr>");
           out.println("<h2><th>S.no</th></h2>");
           out.println("<h2><th>model</th></h2>");
           out.println("<h2><th>brand</th></h2>");
           out.println("<h2><th>price</th></h2>");
           out.println("</tr>");
            String s2=request.getParameter("para");
            ResultSet rs,rs1,rs2;
            rs=s.executeQuery(" select * from mobiledatabase where model='"+s3+"';");
            rs.next();
            int i1=s4.executeUpdate("insert into cart(model,brand,price) values('"+rs.getString("model")+"','"+rs.getString("brand")+"','"+rs.getInt("price")+"');");

           /* if(p3.compareTo(null)!=0)
                {
                int i6=s5.executeUpdate("delete from cart where model='"+p3+"';");
            }*/
            rs1=s4.executeQuery(" select * from cart ;");

                        
              while(rs1.next())
            {

                 ctr++;
           out.println("<tr>");
           out.println("<h2><td>"+rs1.getInt("sno")+"</td></h2>");
           out.println("<h2><td>"+rs1.getString("model")+"</td></h2>");
           out.println("<h2><td>"+rs1.getString("brand")+"</td></h2>");
           out.println("<h2><td>"+rs1.getInt("price")+"</td></h2>");
String p2=rs1.getString("model");
//request.setAttribute("val", p2);
%>
           <h2><td><a href="bil4.do?para3=<%= p2 %>">remove</a></td></h2>

 <%

 sum=sum+rs1.getInt("price");
             out.println("</tr>");

          }
          /*   String p3=request.getParameter("para3");
 if(!p3.equals(null))
        {

              int i5=s5.executeUpdate(" delete from cart where model='"+p3+"';");

          }*/
  
            

           out.println("<tr>");
           out.println("<h2><td></td></h2>");
           out.println("<h2><td></td></h2>");
           out.println("<h2><td></td></h2>");
           out.println("<h2><td>"+sum+"</td></h2>");
           out.println("<h2><td>total</td></h2>");
           out.println("</tr>");

            //request.setAttribute("sum",sum);
           out.println("</table>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }catch(Exception e)
        {
            e.getMessage();
            out.print("class not found!!! please try again.");
        }
        finally {
            out.close();
        }

%>
</div>
</body>
</html>
