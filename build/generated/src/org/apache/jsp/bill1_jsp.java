package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.jasper.tagplugins.jstl.core.Param;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;

public final class bill1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"buy5\">\n");
      out.write("<center>\n");
      out.write("<br>\n");
      out.write("    <a class=\"buy4\" href=\"bil2.do\">Continue</a>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<a  class=\"cart\" href=\"bil.do\">Checkout</a>\n");
      out.write("</center>\n");

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
           String p3=request.getParameter("para3");
              int i6=s5.executeUpdate(" delete from cart where model='"+p3+"';");

            rs=s.executeQuery(" select * from mobiledatabase where model='"+s3+"';");
            rs.next();
            int i1=s4.executeUpdate("insert into cart values("+0+",'"+rs.getString("model")+"','"+rs.getString("brand")+"','"+rs.getInt("price")+"');");
            rs1=s4.executeQuery(" select * from cart ;");
            while(rs1.next())
            {

                 ctr++;
           out.println("<tr>");
           out.println("<h2><td>"+ctr+"</td></h2>");
           out.println("<h2><td>"+rs1.getString("model")+"</td></h2>");
           out.println("<h2><td>"+rs1.getString("brand")+"</td></h2>");
           out.println("<h2><td>"+rs1.getInt("price")+"</td></h2>");
String p2=rs1.getString("model");
           
      out.write("\n");
      out.write("           <h2><td><a href=\"bil1.do?para3=");
      out.print( p2 );
      out.write("\">remove</a></td></h2>\n");
      out.write(" ");
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


      out.write("\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
