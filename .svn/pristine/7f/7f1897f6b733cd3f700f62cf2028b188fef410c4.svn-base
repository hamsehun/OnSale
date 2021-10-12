package com.onsale.app.martsearch;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.ActionForward;
import com.onsale.app.shopping.ShoppingMallOkAction;



public class MartsearchFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		
		if(command.equals("/martsearch/AreaOK.ma")) {
			try {forward = new AreaOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/martsearch/KategorieOK.ma")) {
			try {forward = new KategorieOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/martsearch/MartInfoOK.ma")) {
			try {forward = new MartInfoOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}
