package com.onsale.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.user.dao.UserDAO;

public class UserCheckPwOk implements Action {

   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
	  String user_email = (String)req.getSession().getAttribute("session_email");
      String user_pw = req.getParameter("user_pw");
      UserDAO dao = new UserDAO();
      PrintWriter out = resp.getWriter();
      
      JSONObject obj = new JSONObject();
      
      if(dao.InfoChangeCheckPw(user_email, user_pw)) {
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