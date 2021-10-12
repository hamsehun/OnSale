<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
<style>
	body {
		background: #4444441a;
		font-family: 'Nanum Gothic Coding', monospace;
	}

	p.loginMenu {
		width:345px;
		text-align: left;
		font-size: 13px;
	}
	div#container {
		margin:0 auto;
		background: #fff;
    	height: 800px;
    	width: 500px;
    	padding-top: 120px;     	
	}
	
	ul#choiceTab {
		display: flex;
	    justify-content: center;
	    list-style: none;
	    padding: 0px;
	}
	
	#loginBtn {
		border:none;
		width: 345px;
		height: 45px;
		background: #646ECB;
		color: white;
		font-size: 18px;
	}
	
	img#logo {
		display: block;
		margin:0 auto;
		width: 150px;
	}
	
	button.tab {
		font-size:1em;
		width:150px;
		color:#9e9e9e57;
		background:#fff;
		border:2px solid #9e9e9e57;
		border-top: none;
		border-left: none;
		border-right: none;
		padding:10%;
	}
	
	button.active{
		border:3px solid #646ecb;
		color:#444;
		border-top: none;
		border-left: none;
		border-right: none;
		font-weight: bold;
	}
</style>

</head>
<body>
	<script>
		if("${param.flag}" == "false"){
			alert("아이디 또는 비밀번호를 다시 확인해주세요");
		}
	</script>
	<div id="wrap">
	<div id="container">
	<div>
		<img id="logo" src="${pageContext.request.contextPath}/images/logoNanum.png">

		<ul id="choiceTab">
		<li>
			<button class="tab active" type="button" onclick="tab('user')">
				회원	로그인
			</button>
		</li>
		<li>
			<button class="tab" type="button" onclick="tab('owner')">
				사장님 로그인
			</button>
		</li>
		</ul>
	</div>
	<div class="login">
		<form action="${pageContext.request.contextPath}/user/UserLoginOk.me" method="post" name="loginForm">
			<input type="hidden" name="type" id="type" value="user">
			<div style="margin-top: 20px; margin-left: auto; text-align: center; margin-right: auto;">
				<div>
					<input type="text" id="user_email" name="user_email" placeholder="이메일" style="height: 30px; width: 330px;">
				</div>
				
				<div style="margin-top: 8px; margin-left: auto; text-align: center; margin-right: auto;">
					<input type="password" id="user_pw" name="user_pw" placeholder="비밀번호" style="height: 30px; width: 330px;">
				</div>
			</div>
		</form>
		<div class="btLogin" style="text-align: center; margin-top: 32px;">
			<button type="submit" id="loginBtn" onclick="login()">로그인</button>
		</div>

		<div style="display:flex; justify-content:center;">
			<p class="loginMenu">
				<a href="${pageContext.request.contextPath}/user/UserJoin.me" id="joinLink">회원가입</a> 
				<a href="#" id="findIdLink" onclick="showPopup();">ID 찾기</a>
				<a href="#" id="findPwLink" onclick="showPopupPw();">비밀번호 찾기</a>
			</p>
		</div>

	</div>
	</div>
	</div>
</body>
<script src='${pageContext.request.contextPath}/assets/js/jquery.min.js'></script>
 <script>
 //아이디 찾기 팝업
  function showPopup() 
  {
	  window.open("findId.jsp", "findId", "width=550, height=600, left=100, top=50"); 
  }

 //비밀번호 찾기 팝업
  function showPopupPw() 
  {
	  window.open("findPw.jsp", "findPw", "width=550, height=600, left=100, top=50"); 
  }
 
  </script>
  <script>
       $(document).ready(function(){
         	$('#findId').click(function(){
      		var name = $('[name=name]').val();
      	   	var telS = $('[name=telS]').val();
      	 	var xhr = new XMLHttpRequest();
      	 	var query = "?name="+name+"&telS="+telS;
      	 	//alert(query);
      	 	xhr.open("get","${path}/whatsup/find_id_Action.jsp"+query,true);
           	xhr.onreadystatechange=function(){ 
        	   		if(xhr.readyState==4 && xhr.status==200){
        		   		var result = eval("("+xhr.responseText+")");
        		   		//alert(result);
        		   		
  					if(result==Isture){
        		   			alert("아이디는:"+result.id+"입니다");
        	   			}else{ 
        	   				alert("등록된 계정이 없습니다.");
        	   			}
        		   		
        	   		}
           	}
      	 	xhr.send();
      	 	$('[name=proc]').val('findID');
         });
     });
     
  	window.onload = function(){ 
  		
  		
  		var cnum = document.querySelector("[name=cnum]");
  	    var innum = 0;
  	    
  		    $("#bt1").click(function(){ 
  		    	if(cnum==null){
  		    		alert("가입시 등록한 번호를입력해주세요");
  		    	}else{
  		    		 
  		    		var num = Math.floor((Math.random()*899999)+100000);
  			    	innum = num ;
  			    	alert("인증번호:"+innum);
  		    		 }
  		    });
  	    //boolean sign = false; 
  	    $("#bt2").click(function(){ 
  	    	if (cnum.value == innum){
  	    		alert("인증되었습니다");
  	    	
  	    	}else {
  	    		alert("인증실패");
  	    	}
  	    	
  	    });
  	}

  </script>
<script>
	//로그인 유효성 검사
	function login(){
		if(!$("input#user_email").val()){
			alert("아이디를 입력해주세요.");
			return;
		}
		
		if(!$("input#user_pw").val()){
			alert("비밀번호를 입력해주세요.");
			return;
		}
		
		document.loginForm.submit();
	}


	//탭 변경
	function tab(type){
		var tab = $("button.tab");
		
		if(type == 'user'){
			$(tab[0]).addClass("active");
			$(tab[1]).removeClass("active");
		}else{
			$(tab[0]).removeClass("active");
			$(tab[1]).addClass("active");
		}
		$("input#type").val(type);
	}
	
</script>
</html>