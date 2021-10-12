
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#OwnerBoardComment{
font-size:2em;
 color: #646ECB; 
 font-family: 'Nanum Gothic Coding', monospace;
 margin:0 0 2% 0;
 padding:0px;
}
.OwnerBoardComments{
background-color: #F6F7FC;
}
#CommentAnnouncement{
font-family: 'Nanum Gothic Coding', monospace;
}
.commentSection{
background-color: #F6F7FC;
padding:5% 2% 4% 5% !important;
}
#commentsText{
border-radius: 0; 
resize: none; 
width: 80%; 
float: left;
margin-bottom: 2%;
margin-right: 2%;
background-color: #FFFFFF;
}
#commentConfirm{
width: 13%; 
height: 35px; 
font-family: 'Nanum Gothic Coding', monospace;
font-size: 13px;
background-color:#646ECB; 
}
#commentConfirm:hover{
background-color: #444;
}
</style>
<body class="is-preload"
	style="padding: 0 25%; background-color: white;">
		<c:set var="board" value="${board}"/>
		<c:set var="files" value="${files}"/>
		<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>	
		<!-- Page Wrapper -->
	<div id="page-wrapper">


		<!-- Wrapper -->
		<div class="wrapper">
			<div class="inner">

				<!-- Main -->
				<section class="main">
					<a href="#" class="image main"><img
						src="${pageContext.request.contextPath}/images/boardView.png"
						alt="" /></a>
					<div class="col-12">
						<ul class="actions"
							style="display: flex; justify-content: flex-end;">
							<li><input type="button" value="글쓰기" class="primary userx"
								onclick="location.href='${pageContext.request.contextPath}/board/OwnerBoardWrite.ob?mart_name=${board.getMart_name()}'" /></li>
							<li><input type="button" value="목록" class="primary" onclick="location.href='${pageContext.request.contextPath}/board/OwnerBoardList.ob'" /></li>
							<li><input type="button" class="modifyOwnerBoard" value="수정"
								onclick="location.href='${pageContext.request.contextPath}/board/OwnerBoardModify.ob?owner_board_num=${board.getOwner_board_num()}'" /></li>
							<li><input type="button" class="modifyOwnerBoard" value="삭제"
								onclick="location.href='${pageContext.request.contextPath}/board/OwnerBoardDeleteOk.ob?owner_board_num=${board.getOwner_board_num()}'" /></li>
						</ul>
					</div>
					<header class="major">

						<h2 style="text-align: left;">제목
							${board.getOwner_board_title()}</h2>
						<p style="text-align: left; margin-bottom: 1%">작성자 :
							${board.getMart_name()}</p>
					</header>
					<hr style="margin-top: 0;">
					<c:if test="${files != null}">
						<div>첨부파일</div>
						<c:forEach var="file" items="${files}">
							<a href="${pageContext.request.contextPath}/board/OwnerFileDownload.ob?owner_file_name=${file.getOwner_file_name()}"><c:out
									value="${file.getOwner_file_name_original()}" /></a>
							<br>
						</c:forEach>
					</c:if>
					<hr />
					<h3>
						<pre>${board.getOwner_board_content()}</pre>
					</h3>
				</section>
				<section id="one" class="wrapper major-pad commentSection">
					<div class="OwnerBoardComments">
						<div style="text-align: left;">
							<p id="OwnerBoardComment">댓글</p>
							<p id="CommentAnnouncement">여러분의 소중한 댓글을 작성해주세요.</p>
						</div>
						<form method="post" action="#" class="combined"
							style="width: auto;">
							<textarea name="content" id="commentsText"
								placeholder="비속어를 사용하지 말아주세요." class="invert" rows="2"
								></textarea>

							<input id="commentConfirm" 
								type="button" class="primary" value="등록" onclick="comment()" />
						</form>
					</div>
					<form id="reviews" class="combined"
						style="flex-direction: column; margin: 0; display: contents;">

					</form>

				</section>
			</div>
		</div>
	</div>


	<!-- Footer -->
		<footer class="wrapper align-center">
			<div class="inner">
				<p class="copyright">&copy; Untitled Corp. All rights reserved. Lorem ipsum dolor sit amet feugiat tempus aliquam.</p>
				<ul class="icons">
					<li><a href="https://twitter.com/?lang=en" class="icon brands style2 fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="https://www.facebook.com/" class="icon brands style2 fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="https://www.instagram.com/" class="icon brands style2 fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="https://www.linkedin.com/" class="icon brands style2 fa-linkedin-in"><span
							class="label">LinkedIn</span></a></li>
					<li><a href="#" class="icon style2 fa-envelope"><span
							class="label">Email</span></a></li>
				</ul>
				<p>&copy; Untitled.</p>
			</div>
		</footer>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
var session = "${session}";
var email = "${email}";

$(document).ready(function(){
	var type = '${param.type}'
	if(session != email){
		$(".modifyOwnerBoard").css("display", "none");
	}
	if(type!="owner"){
		$(".userx").css("display", "none");
	}
})


$(document).ready(function(){
	if(session == "null"){
		$(".OwnerBoardComments").css("readonly", "true");
	}
	getList();
	});
	

var Owner_reply_num = "${board.getOwner_reply_num()}";
var pageContext = "${pageContext.request.contextPath}";
var mart_name = "${board.getMart_name()}";
var email = "${email}";
 
function comment(){
	var content = $("textarea[name='content']").val();

	$.ajax({
		url : pageContext + "/shopping/ItemReviewWrite.sh",
		type : "post", 
		data : {
			"content" : content, 
			"shopitem_num" : shopitem_num,
			"user_nickname" : user_nickname, 
		},
		dataType : "text",
 		success : function(){
			/* alert("여기로 바로오지마...") */
			$("textarea[name='content']").val("");
			$('input:radio[name="rating"]').prop('checked', false);
			getList();
		} 
		
	});
}
//댓글 삭제
function deleteComment(review_num){
	if(!check){
	$.ajax({
		url : pageContext + "/board/OwnerBoardReplyWriteOk.ob",
		type : 'post',
		data : {'review_num':review_num},
		success : function(){
			getList();
		}
	});
	}else{
		alert("댓글 수정을 완료하고 삭제 진행해 주시기 바랍니다.");
	}
}
var check = false;
//댓글 수정
function readyToUpdate(index){
	var div = $("#"+index);
	var modify_ready = $("#ready"+index);
	var modify_ok = $("#ok"+index);
	if(!check){
	div.replaceWith("<textarea name='review_content' id = '" +  index + "'class='invert' style='border-radius:0; resize:none;' >"+div.text()+"</textarea>");
	
	modify_ready.hide();
	modify_ok.show();
	check = true;
	}else{
		alert("수정중인 리뷰가 있습니다.");
	}
}
//댓글 수정완료
function update(index, review_num){
	var content = $("textarea#"+index).val();
	$.ajax({
		url : pageContext + "/board/OwnerBoardReplyModifyOk.ob",
		type : "post",
		data : {"item_review_num" : review_num, "item_review_content" : content},
		success : function(){
			check = false;
			getList();
		}
	});
}
</script>
</html>