/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

/**
 *
 * @author nikit
 */
public class Insertaction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
     
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
         try {
        Insertform in=(Insertform)form;
       FormFile pic1=in.getPic();
        String file = getServlet().getServletContext().getRealPath(File.separator)+pic1.getFileName();
        File f = new File(file);
        FileOutputStream fos = new FileOutputStream(f);
        fos.write(pic1.getFileData());
        fos.flush();
        fos.close();

             Class.forName("com.mysql.jdbc.Driver");
        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
        //Statement s=c.createStatement();
         //Date d=new Date();
      //long a=d.getTime();
         InputStream is = new FileInputStream(f);
    //    Statement s1=c.createStatement();

       String u1=in.getId();
       String u2=in.getName();
       String u3=in.getBrand();
       String u4=in.getOs();
       String u5=in.getPrice();

//int i2=s.executeUpdate("insert into registration values('" +a+ "','"+b+"','"+h+"','"+f+"','"+g+"')");
   String u6="null";
   int u7=Integer.parseInt(u5);
if(u7>=5000 && u7<=10000)
{
    u6="5000-10000";
}
 else
if(u7>10000 && u7<=20000)
{
    u6="10000-20000";
}
 else
     if(u7>20000)
{
       u6="20000 & above";

 }
    PreparedStatement s1 = c.prepareStatement("insert into mobiledatabase values(?,?,?,?,?,?,?);");

    s1.setString(1,u1);
        s1.setString(2,u2);
        s1.setString(3,u3);
        s1.setString(4,u4);
        s1.setString(5,u5);
        s1.setString(6,u6);
        s1.setBinaryStream(7, is, (int) f.length());

/*s = c.prepareStatement("insert into mediator(name,price,os,company,date,image) values(?,?,?,?,?,?);");
        InputStream is = new FileInputStream(f);
        s.setString(1,forme.getName());
        s.setInt(2,Integer.parseInt(forme.getPrice()));
        s.setString(3,forme.getOs());
        s.setString(4,forme.getCompany());
        s.setString(5,(new java.sql.Date(a)).toString());
        s.setBinaryStream(6, is, (int) f.length());
        int i=s.executeUpdate();
  */
   //int i3=s1.executeUpdate("insert into mobiledatabase values('"+u1+"','"+u2+"','"+u3+"','"+u4+"','"+u5+"','"+u6+"','null')");
     int i3=s1.executeUpdate();
        if(i3>0)
 {

     return mapping.findForward("OK");
  }
  }
  catch (Exception ex)
  {
      System.out.println(ex.getMessage());
        }
    
     return mapping.findForward("OK");

    
    }
}
