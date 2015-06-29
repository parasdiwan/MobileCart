/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nikit
 */
public class LoginAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        try {

         Class.forName("com.mysql.jdbc.Driver");
         Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
         LoginActionForm la=(LoginActionForm)form;
         String u=la.getUser();
         String p=la.getPass();

         HttpSession session=request.getSession();
         session.setAttribute("userid", u);

         Statement s=c.createStatement();
         ResultSet r=s.executeQuery("select role,password from login where username='"+u+"';");
         if(r.next())
         {
             //String u1 = (r.getString("username"));check for username.

           String q = (r.getString("password"));
           String q1 = (r.getString("role"));
      if(q.equals(p))
            {
              if(q1.equals("user"))
              {
                  return mapping.findForward("userpage");
                }
            else
              if(q1.equals("admin"))
                
            {
            return mapping.findForward("adminpage");
            }
                }
 else
     
      {
            return mapping.findForward("ilogin");


 }
          
            }
        } catch (Exception ex) {
            ex.getMessage();
            }





            return mapping.findForward(SUCCESS);
    }
}
