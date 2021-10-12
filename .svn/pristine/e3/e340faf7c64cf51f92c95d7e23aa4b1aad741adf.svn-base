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
#userBoardComment{
font-size:2em;
 color: #646ECB; 
 font-family: 'Nanum Gothic Coding', monospace;
 margin:0 0 2% 0;
 padding:0px;
}
.UserBoardComments{
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
<body class="is-preload" style="padding: 0 25%; background-color: white;">
		<!-- 로그인 세션 -->
			<c:if test="${session_email eq null}">
			<script>
				alert("로그인 후 이용하세요.");
				location.replace("${pageContext.request.contextPath}/user/UserLogin.me");
			</script>
		</c:if>
	
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
							<li><input type="button" value="글쓰기" class="primary ownerx"
								onclick="location.href='${pageContext.request.contextPath}/board/UserBoardWrite.ub?user_nickname=${board.getUser_nickname()}'" /></li>
							<li><input type="button" value="목록" class="primary"
								onclick="location.href='${pageContext.request.contextPath}/board/UserBoardList.ub'" /></li>
							<li><input type="button" class="modifyUserBoard ownerx" value="수정 "
								onclick="location.href='${pageContext.request.contextPath}/board/UserBoardModify.ub?user_board_num=${board.getUser_board_num()}'" /></li>
							<li><input type="button" class="modifyUserBoard ownerx" value="삭제 "
								onclick="location.href='${pageContext.request.contextPath}/board/UserBoardDeleteOk.ub?user_board_num=${board.getUser_board_num()}'" /></li>
						</ul>
					</div>
					<header class="major">

						<h2 style="text-align: left;">제목
							${board.getUser_board_title()}</h2>
						<p style="text-align: left; margin-bottom: 1%">작성자 :
							${board.getUser_nickname()}</p>
					</header>
					<hr style="margin-top: 0;">
					<c:if test="${files != null}">
						<div>첨부파일</div>
						<c:forEach var="file" items="${files}">
							<a href="${pageContext.request.contextPath}/board/UserFileDownload.ub?user_file_name=${file.getUser_file_name()}"><c:out
									value="${file.getUser_file_name_original()}" /></a>
							<br>
						</c:forEach>
					</c:if>
					<hr />
					<h3>
						<pre>${board.getUser_board_content()}</pre>
					</h3>
				</section>
				<section id="one" class="wrapper major-pad commentSection">
					<div class="UserBoardComments">
						<div style="text-align: left;">
							<p id="userBoardComment">댓글</p>
							<p id="CommentAnnouncement">여러분의 소중한 댓글을 작성해주세요.</p>
						</div>
						<form method="post" action="#" class="combined"
							style="width: auto;">
							<textarea name="content" id="commentsText"
								placeholder="비속어를 사용하지 말아주세요." class="invert" rows="2"></textarea>

							<input id="commentConfirm" 
								type="button" class="primary" value="등록" onclick="comment()" />
						</form>
					</div>
					<form id=replies class="combined"
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
var type = '${param.type}'
var session = "${session}"
var email = "${email}";
var user_board_num = "${board.getUser_board_num()}";
var pageContext = "${pageContext.request.contextPath}";
var user_reply_num = "${board.getUser_reply_num()}";
var pageContext = "${pageContext.request.contextPath}";
var user_nickname = "${nickname}";
var session = "${session}";
var email = "${email}";

$(document).ready(function(){
	if(session != email){
		$(".modifyUserBoard").css("display", "none");
	}
	if(session == "null"){
		$(".UserBoardComments").css("readonly", "true");
	}if(type!="user"){
		$("input.ownerx").css("display", "none");
	}
	getList();
	
})

				function getList(){
					$.ajax({
						url : pageContext + "/board/UserBoardReplyList.bo?user_board_num=" + user_board_num,
						type : "get",
						dataType : "json",
						success : showList
					});
				}
				
				function showList(replies){
					var text = "";
					
					if(replies != null && replies.length != 0){
						$.each(replies, function(index, reply){
							text += "<div id='reply'>";
							text += "<p class='writer'>" + reply.user_nickname + "</p>";
							text += "<div class='comment_content' id='" + (index + 1) + "' style='width:100%'><pre>" + reply.user_reply_content + "</pre></div>"
							
							if("${session}" == reply.user_nickname){
								text += "<input type='button' id='ready"+(index + 1)+"' class='primary' onclick='readyToUpdate("+ (index + 1) +")' value='수정'>";
								text += "<input type='button' id='ok"+(index + 1)+"' class='primary' onclick='update("+ (index + 1)+","+ reply.user_reply_num+")' style='display:none;' value='수정완료'>";
								text += "<input type='button' class='primary' onclick='deleteComment("+reply.user_reply_num+")' value='삭제'>";
							} 
							text += "</div>";
						});
					}else{
						text = "<p>댓글이 없습니다.</p>";
					}
					
					$("#replies").html(text);
				}
			
				//댓글 등록
				function comment(){
					var content = $("textarea[name='comment_content']").val();
					$.ajax({
						type : 'post',
						data : {'content' : content, 'user_board_num' : user_board_num},
						success : function(){
							$("textarea[name='comment_content']").val("");
							getList();
						}
					});
				}
			
				//댓글 삭제
				function deleteComment(user_reply_num){
					if(!check){
					$.ajax({
						url : pageContext + "/board/UserBoradReplyDeleteOk.ub",
						type : 'post',
						data : {'user_reply_num' : user_reply_num},
						success : function(){
							getList();
						}
					});	
					}else{
						alert("댓글 수정을 완료하고 삭제 진행해 주시기 바랍니다.");
					}
				}
				
				//댓글 수정
				function readyToUpdate(index){
					var div = $("#"+index);
					var modify_ready = $("#ready"+index);
					var modify_ok = $("#ok"+index);
					if(!check){
					div.replaceWith("<textarea name='comment_content' id = '" +  index + "'class='invert' style='border-radius:0; resize:none;' >"+div.text()+"</textarea>");
					
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
						url : pageContext + "/board/UserBoardReplyModifyOk.ub",
						type : "post",
						data : {"user_reply_num" : user_reply_num, "user_reply_content" : user_reply_content},
						success : function(){
							check = false;
							getList();
						}
					});
				}
				
			</script>
</html>