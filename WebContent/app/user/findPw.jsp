<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Slate by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<style>
			body {
		background: #ffffff;
		font-family: 'Nanum Gothic Coding', monospace;
	}
#findIdTable{
display:flex; 
margin-left:3.5%;
background-color: #ffffff;
}	
			
#findIdTable tr, td{
background-color:#ffffff;
border:none;
}
input[type='button']{
background-color: #646ECB;
height: 40px;
}		
input[type='button']:hover{
background-color: #646ECB;
}	
			
		</style> 
	</head>
	<body class="is-preload" style="padding:5% 3% 5% 1%">

	<div id="fi">
   <form method="post">
   <input type = "hidden" name = "proc">
   <table id="findIdTable">
   			<tr><td><b style="font-size:40px; width:74%; margin:8%; color: #646ECB;">
   				<img src="${pageContext.request.contextPath}/images/default_img.png" width="10%;" style="padding:0px;">비밀번호 찾기</b></td></tr>
   			<tr><td><input type="text" placeholder="이메일" class="input" name="name" style="width: 74%; margin-right: 5%;"></td></tr>
   			<tr><td style="display:flex;"><input type="text" placeholder="휴대폰번호" class="input2"  name="telS" style="width: 74%; margin-right: 5%;">
   					<input type="button" class="primary btns1" value="인증번호"></td></tr>
   			<tr><td style="display:flex;"><input type="text" placeholder="인증번호" class="input2" name="cnum" style="width: 74%; margin-right: 5%;">
   					<input type="button" class="primary btns1" value="번호확인"></td></tr>
   			<tr><td><hr style="height:2px;"/></td></tr>
   			<tr><td><input type="text" placeholder="새 비밀번호 입력" class="input" name="name" style="width: 74%; margin-right: 5%;"></td></tr>
   			<tr><td style="display:flex;"><input type="text" placeholder="새로운 비밀번호 확인" class="input2"  name="telS" style="width: 74%; margin-right: 5%;">
   					
   			
   			
   			<tr><td></td></tr>
   	
   			<tr><td></td></tr>
    			<tr><td><input type="button" class="primary btns3" value="비밀번호 변경" style="width:74%; height:45px;" id="findPw">
    			</td></tr>
   	</table>
   </form>
   </div>
	</body>
</html>