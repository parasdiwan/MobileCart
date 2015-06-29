<%-- 
    Document   : bill2
    Created on : Jul 23, 2013, 1:21:00 PM
    Author     : nikit
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
<center>

<h2 id="bill2">Thankyou for shopping with mobilekart.com.</h2>
<img src="billimg.png" width="400px"></center>
<center><h2 id="bill2">Bill</h2></center>
<%
try {
int ctr=0;
double sum1=0;
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
            

            //out.println("<div id='table'>");

         //  out.println("<table name=wow class='w' border=0 border-color=white align='center'>");


          /* out.println("<tr>");
           out.println("<h2><th>S.no</th></h2>");
           out.println("<h2><th>model</th></h2>");
           out.println("<h2><th>brand</th></h2>");
           out.println("<h2><th>price</th></h2>");
           out.println("</tr>");
            */
            String s2=request.getParameter("para1");
            //String s6=(String)request.getAttribute("sum");
            ResultSet rs,rs1,rs2;

            rs=s.executeQuery(" select * from cart;" );
            while(rs.next())
            {
               sum1=sum1+ (rs.getInt("price"));
            }


          /*  int i1=s4.executeUpdate("insert into cart values("+0+",'"+rs.getString("model")+"','"+rs.getString("brand")+"','"+rs.getInt("price")+"');");
            rs1=s4.executeQuery(" select * from cart ;");
            while(rs1.next())
            {
                 ctr++;
          out.println("<tr>");
           out.println("<h2><td>"+ctr+"</td></h2>");
           out.println("<h2><td>"+rs1.getString("model")+"</td></h2>");
           out.println("<h2><td>"+rs1.getString("brand")+"</td></h2>");
           out.println("<h2><td>"+rs1.getInt("price")+"</td></h2>");
           sum=sum+rs1.getInt("price");
           out.println("</tr>");
        }


           out.println("<tr>");
           out.println("<h2><td></td></h2>");
           out.println("<h2><td></td></h2>");
           out.println("<h2><td></td></h2>");
           out.println("<h2><td>"+sum+"</td></h2>");
           out.println("<h2><td>Total</td></h2>");
           out.println("</tr>");
           out.println("</table>");
 *
*/
   
            
            sum1=sum1+(0.15*sum1);
        out.println("<br><center>");
        out.println("<h3 >Shipping charges : Rs 0</h3>");
        out.println("<h3 >vat charges : 15%</h3>");
       out.println("<h3 >Total:Rs "+sum1+"/-</h3></center>");

           out.println("</div>");
           out.println("</body>");
           out.println("</html>");

int i3=s4.executeUpdate(" delete from cart ;");
int i4=s5.executeUpdate("ALTER TABLE cart AUTO_INCREMENT = 0;");

        }catch(Exception e)
        {
        out.print("class not found!!! please try again.");

        }
        finally {
            out.close();
        }

%>
</div>
</body>
</html>
