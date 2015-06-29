/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nikit
 */
public class imgservlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

             String sd=request.getParameter("para1");
          Class.forName("com.mysql.jdbc.Driver");
        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
             java.sql.Statement s = c.createStatement();
            ResultSet rs = s.executeQuery("select image from mobiledatabase where id="+sd+";");
            rs.next();
            java.sql.Blob b = rs.getBlob("image");
             byte[] rb = new byte[(int) b.length()];
            InputStream readImg = rs.getBinaryStream("image");
            int index = readImg.read(rb, 0, (int) b.length());
            System.out.println("index" + index);
            response.reset();
            response.setContentType("image/jpg");
            response.getOutputStream().write(rb, 0,(int)(b.length()));
            response.getOutputStream().flush();
            /*java.sql.Blob b = rs.getBlob("image"t);
             byte[] bs = new byte[(int) b.length()];
             bs = b.getBytes(1, (int) b.length());
             response.setContentType("image/png");
             response.getOutputStream().write(bs);
             response.getOutputStream().close();*/
        } catch (Exception e) {
            out.print(e.getMessage());
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
