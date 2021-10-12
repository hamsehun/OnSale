package com.onsale.app.board.vo;

public class UserFilesVO {
	private int user_board_num;
	private String user_file_name_original;
	private String user_file_name;
	
	public UserFilesVO() {;}
	
	public int getUser_board_num() {
		return user_board_num;
	}
	public void setUser_board_num(int user_board_num) {
		this.user_board_num = user_board_num;
	}
	
	public String getUser_file_name_original() {
		return user_file_name_original;
	}

	public void setUser_file_name_original(String user_file_name_original) {
		this.user_file_name_original = user_file_name_original;
	}

	public String getUser_file_name() {
		return user_file_name;
	}
	public void setUser_file_name(String user_file_name) {
		this.user_file_name = user_file_name;
	}
	
	
	
}
