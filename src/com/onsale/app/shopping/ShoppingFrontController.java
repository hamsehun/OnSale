package com.onsale.app.shopping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.ActionForward;



public class ShoppingFrontController extends HttpServlet {
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
		if(command.equals("/shopping/ShoppingMall.sh")) {
			try {forward = new ShoppingMallOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/ShoppingMallDetailOk.sh")) {
			try {forward = new ShoppingMallDetailOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/ItemReviewList.sh")) { 
			try {forward = new ItemReviewListOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/ShoppingSearchMartOK.sh")) {
			try {forward = new ShoppingSearchMartOK().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/ItemReviewWrite.sh")) {
			try {forward = new ItemReviewWriteOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/ShoppingMartItemsOK.sh")) {
			try {forward = new ShoppingMartItemsOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/ItemReviewDeleteOk.sh")) {
			try {forward = new ItemReviewDeleteOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/ShoppingMartItemsOK.sh")) {
			try {forward = new ShoppingMartItemsOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/ItemReviewModifyOk.sh")) {
			try {forward = new ItemReviewModifyOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/cartinput.sh")) {
			try {forward = new cartinputOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/cartList.sh")) {
			try {forward = new CartListOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/deleteCart.sh")) {
			try {forward = new DeleteCartOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/addSideBar.sh")) {
			try {forward = new addSideBarOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/AreaOK.sh")) {
			try {forward = new AreaOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/KategorieOK.sh")) {
			try {forward = new KategorieOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/shopping/PurchaseListOk.sh")) {
			try {forward = new PurchaseListOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
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