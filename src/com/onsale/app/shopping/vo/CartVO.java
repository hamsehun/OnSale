package com.onsale.app.shopping.vo;

public class CartVO {
	private int cart_num;
	private int user_num;
	private int shopitem_num;
	private int item_cnt;
	
	public CartVO() {;}

	public int getCart_num() {
		return cart_num;
	}

	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}

	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public int getShopitem_num() {
		return shopitem_num;
	}

	public void setShopitem_num(int shopitem_num) {
		this.shopitem_num = shopitem_num;
	}

	public int getItem_cnt() {
		return item_cnt;
	}

	public void setItem_cnt(int item_cnt) {
		this.item_cnt = item_cnt;
	}
	
	
	
}
