package com.onsale.app.board;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;

public class UserFileDownload implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		//요청된 파일이 저장되어 있는 경로
		String saveFolder = "D:\\gd_0900_hjw\\jsp\\workspace\\onSale_final\\WebContent\\userFileUpload";
		
		//사용자가 다운로드를 요청한 파일의 이름을 전달받는다.
		String user_file_name = req.getParameter("user_file_name");
		
		//Stream을 사용하기 때문에 충돌을 방지하기 위해서 사전에 객체 생성
		PrintWriter writer = resp.getWriter();
		
		InputStream in = null;
		
		OutputStream out = null;
		
		File file = null;
		
		boolean check = true;
		
		try {
			file = new File(saveFolder, user_file_name);
			
			in = new FileInputStream(file);
			
		} catch (FileNotFoundException e) {
			check = false;
			System.out.println(e + " UserFileDownload.java 오류");
		}
		
		
		resp.reset();
		resp.setContentType("application/octet-stream");	//파일 다운로드 타입 설정
		resp.setHeader("Content-Description", "JSP Generated Data"); //컨텐트 설명 수정
		
		if(check) {
			try {
				user_file_name = new String(user_file_name.getBytes("UTF-8"), "ISO-8859-1");

				resp.setHeader("Content-Disposition", "attachment;filename=\"" + user_file_name + "\"");
				resp.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
				
				resp.setHeader("Content-Length", "" + file.length());
				
				writer.flush();
				
				out = resp.getOutputStream();
				
				byte b[] = new byte[(int)(file.length())];
				
				int data = 0;
				
				while((data = in.read(b)) > 0) {
					out.write(b, 0, data);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(in != null) {
						in.close();
					}
					if(out != null) {
						out.close();
					}
				} catch (Exception e) {
					throw new RuntimeException(e.getMessage());
				}
			}
		}
		return null;
	}
}
















