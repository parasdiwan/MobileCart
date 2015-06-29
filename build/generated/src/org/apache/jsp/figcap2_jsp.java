package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.myapp.struts.searchform;

public final class figcap2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("<body>\n");
      out.write("<div id=\"fig\">\n");
      out.write("<div id=\"figcap\">\n");
      out.write("<figure>\n");
      out.write("<img src=\"htc8s.jpg\" width=\"100\" alt=\"Picture 2\" title=\"htc 8s\">\n");
      out.write("<figcaption>htc 8s<br>Rs 14,994/-<br><a class=\"buy\"  href=\"wow.do?para1=htc8s\">Buy</a></figcaption>\n");
      out.write("</figure>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"figcap\">\n");
      out.write("<figure>\n");
      out.write("<img src=\"htc desire sv.jpg\" width=\"100\" alt=\"Picture 2\" title=\"htc desire sv\">\n");
      out.write("<figcaption>htc desire sv<br>Rs 19,599/-<br><a sv class=\"buy\" href=\"wow.do?para1=desire sv\">Buy</a></figcaption>\n");
      out.write("</figure>\n");
      out.write("</div>\n");
      out.write("<div id=\"figcap\">\n");
      out.write("<figure>\n");
      out.write("\n");
      out.write("<img src=\"desire u.jpg\" width=\"100\" alt=\"Picture 2\" title=\"desire u\">\n");
      out.write("<figcaption>htc desire u<br>Rs 13,800/-<br><a class=\"buy\"  href=\"wow.do?para1=desireu\">Buy</a></figcaption>\n");
      out.write("</figure>\n");
      out.write("</div>\n");
      out.write("    <div id=\"figcap\">\n");
      out.write("<figure>\n");
      out.write("\n");
      out.write("<img src=\"htc one sv.jpg\" width=\"100\" alt=\"Picture 2\" title=\"htc one sv\">\n");
      out.write("<figcaption>htc one sv<br>Rs 43,489/-<br><a class=\"buy\"  href=\"wow.do?para1=one 801e\">Buy</a></figcaption>\n");
      out.write("</figure>\n");
      out.write("</div>\n");
      out.write("<div id=\"figcap\">\n");
      out.write("<figure>\n");
      out.write("\n");
      out.write("<img src=\"htc one x plus.jpg\" width=\"100\" alt=\"Picture 2\" title=\"htc one x plus\">\n");
      out.write("<figcaption>htc one x plus<br>Rs 28,376/-<br><a class=\"buy\"  href=\"wow.do?para1=one xplus\">Buy</a></figcaption>\n");
      out.write("</figure>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" </body>\n");
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
