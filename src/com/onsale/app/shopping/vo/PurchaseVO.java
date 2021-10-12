package com.onsale.app.shopping.vo;

public class PurchaseVO {
	private int purchase_num;
	private int cart_num;
	private int purchase_cost;
	private String purchase_date;
	
	public PurchaseVO() {;}

	public int getPurchase_num() {
		return purchase_num;
	}

	public void setPurchase_num(int purchase_num) {
		this.purchase_num = purchase_num;
	}

	public int getCart_num() {
		return cart_num;
	}

	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}

	public int getPurchase_cost() {
		return purchase_cost;
	}

	public void setPurchase_cost(int purchase_cost) {
		this.purchase_cost = purchase_cost;
	}

	public String getPurchase_date() {
		return purchase_date;
	}

	public void setPurchase_date(String purchase_date) {
		this.purchase_date = purchase_date;
	}
	
	
	
}
