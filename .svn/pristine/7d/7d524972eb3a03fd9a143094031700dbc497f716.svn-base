<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />

<style>
.is-preload{
font-family: 'Nanum Gothic Coding', monospace;
}
/* component */

.star-rating {
 
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-rating input {
  display:none;
}

.star-rating label {
  color:#ccc;
  cursor:pointer;
}

.star-rating :checked ~ label {
  color:#f90;
}

.star-rating label:hover,
.star-rating label:hover ~ label {
  color:#fc0;
}
.star::before{
	display: none !important; 
}
.star{
	padding: 0 !important;
	margin-right: 15% !important;
}
</style>

</head>

<body class="is-preload">
<c:set var="detail" value="${detail}" />

<!-- Header -->
	<header>
			<jsp:include page="/app/fix/header.jsp"/>
	</header>

	<section id="contact" class="wrapper split" style="margin-top:5%;">

		<div class="inner" style="display: flex;">

			<div>
			
				<img src="${pageContext.request.contextPath}/images/${detail.getShopitem_file_name()}" style="width: 50%; float: right;">

			</div>

			<div style="overflow: overlay;">

				<div>
					<h2>${detail.getMart_name()}</h2>
					<h4>${detail.getShopitem_name()}</h4>
					
					<h3 id="cost">${detail.getShopitem_cost()}원</h3>

				</div>

				<div>

					<form id="inputcart" method="post" action="${pageContext.request.contextPath}/shopping/cartinput.sh">

						<fieldset>

							<legend>${detail.getShopitem_name()}</legend>
							<input name="shopitem_name" style="display:none;" value="${detail.getShopitem_name()}"/>

							<div class="col-6 col-12-xsmall"
								style="display: flex; margin-left: 0;">

								<div>

									<input type="button" value="-" id="minus" class="minus ownerx">

								</div>

								<div style="width: 10%;">

									<input type="text" value="1" class="num ownerx" name = "item_cnt" 
										style="text-align: center;" />

								</div>

								<div>

									<input type="button" value="+" class="plus ownerx">

								</div>
							</div>
								<p class="ownerx">최대 ${detail.getShopitem_stock()}개 구매가능</p>
								
								<input name="shopitem_stock" style="display: none;" value="${detail.getShopitem_stock()}"/>
								
							<br>

							<div class="col-12" style="display: flex; font-family: 'Nanum Gothic Coding', monospace;">

								<div>
									<input type="button" value="장바구니" id="cart" class="ownerx"
										style="width: 200%; padding: 0; font-family: 'Nanum Gothic Coding', monospace;" />
								</div>

								<div>
									<input type="submit" value="구매하기" class="ownerx"
										style="width: 200%; padding: 0; margin-left: 100%; font-family: 'Nanum Gothic Coding', monospace;" />
								</div>

							</div>

						</fieldset>
						<input style="display: none;" name="shopitem_num" value="${detail.getShopitem_num()}"/>
						<input style="display: none;" name="shopitem_file_name" value="${detail.getShopitem_file_name()}"/>
						<input style="display: none;" name="shopitem_cost" value="${detail.getShopitem_cost()}">
					
					</form>

				</div>

			</div>

		</div>


	</section>

	<section id="one" class="wrapper major-pad"
		style="padding: 0 25%; border: none; margin-bottom: 8%; margin-top: 3%;">
		<div class = "reviewText">
			<div style="text-align: left; margin: 0px 0px 2em 0px;">
	
				<span style="font-size: x-large; color: #646ECB; font-family: 'Nanum Gothic Coding', monospace;">리뷰</span>
	
				<p style="font-family: 'Nanum Gothic Coding', monospace;">여러분의 소중한 리뷰를 작성해주세요.</p>
			
			</div>
	
			<form method="post" action="#" class="combined" style="width: auto;">
				<div class="star-rating">
				  <input type="radio" id="5-stars"  name="rating" value="5" />
				  <label for="5-stars" class="star">&#9733;</label>
				  <input type="radio" id="4-stars"  name="rating" value="4" />
				  <label for="4-stars" class="star">&#9733;</label>
				  <input type="radio" id="3-stars"  name="rating" value="3" />
				  <label for="3-stars" class="star">&#9733;</label>
				  <input type="radio" id="2-stars"  name="rating" value="2" />
				  <label for="2-stars" class="star">&#9733;</label>
				  <input type="radio" id="1-star"  name="rating" value="1" />
				  <label for="1-star" class="star">&#9733;</label>
				</div>
				<textarea name="content" id="content" placeholder="비속어를 사용하지 말아주세요."
					class="invert" rows="1"
					style="border-radius: 0; resize: none; width: 85%; float: left;"></textarea>
	
				<input id="register" style="width: 15%; height: 48px; font-family: 'Nanum Gothic Coding', monospace;" type="button"
					class="primary" value="등록" onclick="comment()" />
	
			</form>
		</div>
		<form id="reviews" class="combined"
			style="flex-direction: column; margin: 0; display: contents;">

		</form>

	</section>

   <!-- Footer -->
   <footer class="wrapper" style="text-align: center;">
      <div class="inner">
         <p class="copyright">&copy; Untitled Corp. All rights reserved.
            Lorem ipsum dolor sit amet feugiat tempus aliquam.</p>
         <ul class="icons">
            <li><a href="https://twitter.com/?lang=en"
               class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="https://www.facebook.com/"
               class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a></li>
            <li><a href="https://www.instagram.com/"
               class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="https://www.linkedin.com/"
               class="icon brands style2 fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
            <li><a href="#" class="icon style2 fa-envelope"><span
                  class="label">Email</span></a></li>
         </ul>
         <p>&copy; Untitled.</p>
      </div>
   </footer>



	<!-- Scripts -->

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>

	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>

	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>


</body>

<script>

$(".num").on("keyup",function(){

	var regex = /[^0-9]/g;

	if(regex.test($(this).val())){

		alert("숫자만 입력하세요.");

		$(this).val("1");

		return;			

	}else if($(this).val()==0){

		alert("1개 이상 주문가능 합니다.");

		$(this).val("1");

		return;

	}else if($(this).val()>${detail.getShopitem_stock()}){
		alert("최대 구매 가능 수량을 초과하였습니다.");
		$(this).val("1");
	}
})
$(".num").focusout(function(){
	var total = $(".num").val()*${detail.getShopitem_cost()};
	$("#cost").text(total+"원");
})


$("input.minus").on("click", function(){

	var num = $(".num").val()

	if(Number($(".num").val())==1){

		alert("1개 이상 주문가능 합니다.");

		$(".num").val("1");

		return;

	}

	$(".num").val(num - 1);	
	var total = (Number(num)-1)*${detail.getShopitem_cost()};
	$("#cost").text(total+"원");
})



$("input.plus").on("click", function(){

	var num = $(".num").val()

	if($(".num").val()<${detail.getShopitem_stock()}){
	$(".num").val(Number(num) + 1);
	var total = (Number(num)+1)*${detail.getShopitem_cost()};
	$("#cost").text(total+"원");
	}else{
		alert("최대 구매 가능 수량을 초과하였습니다.");
		$(".num").val("1");
	}
})

$(document).ready(function(){
	if(email==""&&email.length==0){
		$(".reviewText").css("display","none");
		$(".ownerx").css("display","none");
	}
	if("${param.type}"=="owner"){
		$(".reviewText").css("display","none");
		$(".ownerx").css("display","none");
	}
	getList();
	});
	


var shopitem_num = "${detail.getShopitem_num()}";
var pageContext = "${pageContext.request.contextPath}";
var user_nickname = "${nickname}";
var email = "${email}";
 
	
	
	function getList() { 
	$.ajax({
		url : pageContext + "/shopping/ItemReviewList.sh",
		type : "get",
		data : {"shopitem_num":shopitem_num},
		dataType : "json",
		success : showList
		});
	}
function showList(reviews){
	var text = "";
	
	if(reviews != null && reviews.length !=0){ 
		$.each(reviews, function(index, review){
			text += "<div id = 'review'>";			
			if(review.item_review_likes==1){
				text+= "<span>&#9733;</span>"
			}else if(review.item_review_likes==2){
				text+= "<span>&#9733;&#9733;</span>"
			}else if(review.item_review_likes==3){
				text+= "<span>&#9733;&#9733;&#9733;</span>"
			}else if(review.item_review_likes==4){
				text+= "<span>&#9733;&#9733;&#9733;&#9733;</span>"
			}else{
				text+= "<span>&#9733;&#9733;&#9733;&#9733;&#9733;</span>"
			}			
			text += "<p class='writer'>"+ review.user_nickname +"</p>";
			text += "<div class='content'name='review_content' id='"+ (index + 1) +"' style='width:100%;'><pre>"+ review.item_review_content +"</pre></div>";
			text += "<p class='writeDate'>"+ review.item_review_date +"</p>";
			if(email == review.user_email){
				text += "<input type='button' id='ready"+(index + 1)+"' class='primary' onclick='readyToUpdate("+ (index + 1) +")' value='수정'>";
				text += "<input type='button' id='ok"+(index + 1)+"' class='primary' onclick='update("+ (index + 1)+","+ review.item_review_num +")' style='display:none;' value='수정완료'>";
				text += "<input type='button' class='primary' onclick='deleteComment("+review.item_review_num+")' value='삭제'>";
			} 
			text += "</div>";
		});
	}else{
		text = "<p>리뷰가 없습니다.</p>";
	} 
	$("#reviews").html(text);
}
//댓글등록
function comment(){
	var content = $("textarea[name='content']").val();
	var item_review_likes = $('input[name="rating"]:checked').val();
	if(!$('input:radio[name="rating"]').is(':checked')){
		alert("별점을 입력해 주시기 바랍니다.");
		return;
	}
	if(content==""&&content.length==0){
		alert("리뷰 내용을 작성해 주시기 바랍니다.");
		return;
	}
	$.ajax({
		url : pageContext + "/shopping/ItemReviewWrite.sh",
		type : "post", 
		data : {
			"content" : content, 
			"shopitem_num" : shopitem_num,
			"user_nickname" : user_nickname, 
			"item_review_likes" : item_review_likes,
			"email" : email
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
		url : pageContext + "/shopping/ItemReviewDeleteOk.sh",
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
		url : pageContext + "/shopping/ItemReviewModifyOk.sh",
		type : "post",
		data : {"item_review_num" : review_num, "item_review_content" : content},
		success : function(){
			check = false;
			getList();
		}
	});
}

//장바구니
$("input#cart").on("click", function(){
	
	if(email==""&&email.length==0){
		alert("로그인 후 이용해 주세요.");
		$(".num").val("1");
		return;
	}
	var result = confirm('${detail.getShopitem_name()}'+"(을)를 장바구니에 담을까요?");
	if(result){$("#inputcart").submit();}
	else{return;}
})
</script>

</html>