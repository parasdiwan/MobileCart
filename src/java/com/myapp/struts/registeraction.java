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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nikit
 */
public class registeraction extends org.apache.struts.action.Action {

    
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
        Statement s=c.createStatement();
                Statement s1=c.createStatement();

        registerform rf=(registerform)form;
       String a=rf.getUser1();
            String b=rf.getUser2();
            String h=rf.getUser3();
            String d=rf.getUser4();
            String f=rf.getUser6();
            String e=rf.getUser5();
            String g=rf.getUser7();
int i2=s.executeUpdate("insert into registration values('" +a+ "','"+b+"','"+h+"','"+f+"','"+g+"')");
int i3=s1.executeUpdate("insert into login values('" +d+ "','"+e+"','user');");
if(i2>0 && i3>0)
 {
      
  //response.sendRedirect("login.jsp");
 return mapping.findForward("OK");
  }
  }
  catch (Exception ex)
  {
      System.out.println(ex.getMessage());
            //Logger.getLogger(loginform.class.getName()).log(Level.SEVERE, null, ex);
        }


return mapping.getInputForward();
       
    }
}
