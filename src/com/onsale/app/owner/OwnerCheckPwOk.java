package com.onsale.app.owner;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.dao.OwnerDAO;

public class OwnerCheckPwOk implements Action {

   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	  String mart_owner_email = (String)req.getSession().getAttribute("session_email");
      String mart_owner_pw = req.getParameter("mart_owner_pw");
      OwnerDAO dao = new OwnerDAO();
      PrintWriter out = resp.getWriter();
      
      JSONObject obj = new JSONObject();
      
      if(dao.ownerInfoChangeCheckPw(mart_owner_email, mart_owner_pw)) {
//         out.println("ok");
         obj.put("status", "ok");
      }else {
//         out.println("non-ok");
         obj.put("status", "not-ok");
      }
      
      out.println(obj.toJSONString());
      out.close();
      return null;
   }
}