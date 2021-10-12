<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<!DOCTYPE html>
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
		padding:5% 3% 5% 1%;
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
background-color: #444;
}
</style>	
</head>
<body>
   <div id="im">
		<a href="login.jsp" style="display:none;"><img src="${path}/whatsup/logo.png" style="width:300px; display: none;"></a>
	</div>
	<div id="fi">
   <form method="post">
   <input type = "hidden" name = "proc">
   <table id="findIdTable">
   			<tr><td><b style="font-size:40px; width:74%; margin:13%; color: #646ECB;">
   			<img src="${pageContext.request.contextPath}/images/default_img.png" width="10%;" style="padding:0px;">아이디찾기</b></td></tr>
   			<tr><td><input type="text" placeholder="이름" class="input" name="name" style="width: 72%; margin-right: 5%;"></td></tr>
   			<tr><td style="display:flex;"><input type="text" placeholder="휴대폰번호" class="input2"  name="telS" style="width: 74%; margin-right: 5%;">
   					<input type="button" class="primary btns1" value="인증번호" Style="height:45px; " id="bt1"></td></tr>
   			<tr><td style="display:flex;"><input type="text" placeholder="인증번호" class="input2" name="cnum" style="width: 74%; margin-right: 5%;">
   					<input type="button" class="primary btns1" value="번호확인" Style="height:45px; " id="bt2"></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td></td></tr>
   			<tr><td><input type="button" value="아이디찾기" style="width:430px; height:45px;" class="primary btns3" id="findId"></td></tr>
   	</table>
   </form>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
</html>