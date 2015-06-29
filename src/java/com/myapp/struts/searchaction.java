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

/**
 *
 * @author nikit
 */
public class searchaction extends org.apache.struts.action.Action {
//String status;
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
            throws Exception{

        searchform sf=(searchform)form;
        String s1=sf.getBrands();
        String s2=sf.getOs();
        String s3=sf.getPricerange();
        request.setAttribute("getbrands", s1);
        request.setAttribute("getos", s2);
        request.setAttribute("getpricerange", s3);
if(s1.equals("Htc"))
        {
     
             return mapping.findForward("ok");

        }
 else
        if(s1.equals("Sony"))
        {

         return mapping.findForward("ap");

        }

        else
        if(s1.equals("Samsung"))
        {

         return mapping.findForward("sam");

        }
else
        if(s1.equals("Micromax"))
        {

         return mapping.findForward("mic");

        }
else
        if(s1.equals("Nokia"))
        {

         return mapping.findForward("nk");

        }

        else
        if(s1.equals("Apple"))
        {

         return mapping.findForward("apl");

        }
        else
        if(s1.equals("Brands"))
        {

         return mapping.findForward("ap2");

        }



        else
            return mapping.findForward(SUCCESS);
    }
}
