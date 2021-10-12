package com.onsale.app.shopping;

import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.vo.UserBoardVO;
import com.onsale.app.shopping.dao.ShoppingDAO;

public class PurchaseListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String user_email = (String)req.getSession().getAttribute("session_email");
		PrintWriter out = resp.getWriter();
		ShoppingDAO dao = new ShoppingDAO();
		ActionForward forward = new ActionForward();
		
		List<Map<String, String>> myPurchaseList = dao.getPurchase(user_email);
		
		JSONArray myPurchases = new JSONArray();
		
		for (int i = 0; i < myPurchaseList.size(); i++) {
			JSONObject purchase = new JSONObject();
			
			purchase.put("shopitem_file_name", myPurchaseList.get(0).get("SHOPITEM_FILE_NAME"));
			purchase.put("shopitem_name", myPurchaseList.get(0).get("SHOPITEM_NAME"));
			purchase.put("purchase_num", myPurchaseList.get(0).get("PURCHASE_NUM"));
			purchase.put("purchase_date", myPurchaseList.get(0).get("PURCHASE_DATE"));
			purchase.put("item_cnt", myPurchaseList.get(0).get("ITEM_CNT"));
			purchase.put("purchase_cost", myPurchaseList.get(0).get("PURCHASE_COST"));
			myPurchases.add(purchase);
			
			//값을 다 가져오는데 오류남
			/*System.out.println(purchase.get("shopitem_file_name"));
			System.out.println(purchase.get("shopitem_name"));
			System.out.println(purchase.get("purchase_num"));
			System.out.println(purchase.get("purchase_date"));
			System.out.println(purchase.get("item_cnt"));
			System.out.println(purchase.get("purchase_cost"));*/
		}
		
	      out.print(myPurchases.toJSONString());
	      out.close();
		  return null;
		
	}

}
