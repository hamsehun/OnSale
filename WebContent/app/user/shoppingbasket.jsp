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
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">

<style>
.item {
	width: 90px;
	height: 90px;
	float: left;
}

.align-center {
	float: left;
}

#itemhead {
	text-align: center;
}

.button_type {
	display: block;
	width: 100%;
	height: 60px;
	margin: 5px 0 0;
	line-height: 1;
	font-size: 18px;
	font-weight: 500;
	border-radius: 3px;
}

.all_button {
	color: #fff;
	border: 0;
	background-color: #fe0605;
}

.choice_button {
	color: #fff;
	background-color: #333;
	border: 0;
}

input[type="checkbox"]+label:before, input[type="radio"]+label:before {
	background-image: url(${pageContext.request.contextPath}/images/checkbox.png) !important;
	max-width: 24px !important;
	max-height: 24px !important;
	min-width: 24px !important;
	min-height: 24px !important;
	border: none !important;
	left: 7px !important;
	top: 32px !important;
}

input[type="checkbox"]:checked + label:before, input[type="radio"]:checked + label:before {
    background-image: url(${pageContext.request.contextPath}/images/checkon.png) !important;
}

.count{
	width: 76px !important;
    height: 28px !important;
    padding: 0 21px !important;
    font-size: 12px !important;
    color: #333 !important;
    text-align: center !important;
    border-radius: 2px !important;
    border: 1px solid #ddd;
}

.add_button{
	position: absolute;
    top: 0;
    right: 0;
    width: 28px;
    height: 26px;
    background: url(${pageContext.request.contextPath}/images/btn_count_up.png) 50% 50% no-repeat;
    padding: 0 0 !important;
   	box-shadow: none;
}

.min_button{
	width: 28px;
    height: 26px;
    position: absolute;
    top: 0;
    right: auto;
    left: 0;
	background: url(${pageContext.request.contextPath}/images/btn_count_down.png) 50% 50% no-repeat;
	padding: 0 0 !important;
    box-shadow: none;
}

tr {
	background-color: white !important;
}
#sideBarPurchase{
float: right; 
margin-top: 39%;
}
#sideBarInner{
position: fixed;
width: 300px;
height: 421px;
margin-left: 2%;
border: 1px solid #e6e6e6;
padding: 30px 20px;
}
#sideBarInner2{
width: 100%; 
padding: 0 15px 15px; 
margin: 15px 0 5px; 
background: #f9fafb; 
border: 1px solid #eee; 
border-radius: 3px;
}
#sideBarInner3{
margin-top: 15px;
}
#sideBarItemCnt{
font-size: 12px;
}
#sideBarCost{
float: right; 
font-size: 12px;
}
#sideBarDelivery{
padding: 10px 0;
}

</style>
</head>
<body class="is-preload" style="padding: 0 25%;">
	<c:set var="items" value="${items}"/>
	<c:set var="carts" value="${carts}"/>
	<c:set var="stocks" value="${stocks}"/>

	<!-- Header -->
	<header>
		<jsp:include page="/app/fix/header.jsp" />
	</header>
	<!-- ???????????? ???????????? -->
	<div id="sideBarPurchase">
		<div id="sideBarInner">
			<div>
				<strong style="font-family: 'Nanum Gothic Coding', monospace;">??? ????????????</strong>
				<div style="display: inline; float: right;">
					<strong id="totalprice">0</strong><span style="font-family: 'Nanum Gothic Coding', monospace;">???</span>
				</div>
			</div>
			<div id="sideBarInner2">
				<div id="sideBarInner3" style="margin-top: 15px; overflow: overlay;">
				</div>
			</div>
			<div id="sideBarDelivery"style="padding: 10px 0;">
				<strong style="font-family: 'Nanum Gothic Coding', monospace;">?????????</strong>
				<div id="sideBarDeliveryFee" style="display: inline; float: right;">
					<span>3,000 ???</span>
				</div>
				<hr>
				<div id="sideBarTotal" style="margin-top: 8px;">
					<strong style="font-family: 'Nanum Gothic Coding', monospace;">?????? ??????????????????</strong>
					<div style="float: right;">
						<span id="sideBarTotalCost"style="font-size: 24px; color: #fe0605;">3,000 ???</span>
					</div>
				</div>
			</div>
			<div style="text-align: center;">
				<button class="button_type all_button">
					<i
						style="display: inline-block; line-height: inherit; font-style: normal; color: white; font-family: 'Nanum Gothic Coding', monospace;">????????????
						????????????</i>
				</button>
				<button class="button_type choice_button"  onclick="<!-- requestPay() -->" >
					<i
						style="display: inline-block; line-height: inherit; font-style: normal; color: white; font-family: 'Nanum Gothic Coding', monospace;">????????????
						????????????</i>
				</button>
			</div>
		</div>
	</div>


	<!-- ???????????? -->
	<div>
		<section id="one" class="wrapper major-pad">
			<h4>????????????</h4>
			<c:set var="user" value="${user}"/>
			<div
				style="position: relative; display: table; width: 100%; padding: 24px 30px; color: #333; border: 1px solid #e6e6e6">
				<strong style="display: block; font-size: 35;">?????????</strong><span
					style="font-size: 15px">${user.getUser_address()}</span>
			</div>

			<table style="width: 100%; margin: 0 auto 3%; margin-top: 30px;">
				<thead>
					<tr style="background-color: #f4f4f5 !important;">
						<th style="padding-top: 0.75em; text-align: center; font-family: 'Nanum Gothic Coding', monospace; font-size: 15px;">?????????/????????????</th>
						<th style="text-align: center; width: 100px; font-family: 'Nanum Gothic Coding', monospace; font-size: 15px;">??????</th>
						<th style="text-align: center; font-family: 'Nanum Gothic Coding', monospace; font-size: 15px;">??????</th>
						<th style="text-align: center; font-family: 'Nanum Gothic Coding', monospace; font-size: 15px;">??????</th>
					</tr>
				</thead>
				<tbody id="cart">
					<c:choose>
						<c:when test="${carts != null and fn:length(carts) > 0}">
							<c:forEach var="carts" items="${carts}" varStatus="status">
								<tr>
									<td>
										<div>
											<input type="checkbox" name="box" class="box${status.index}" id="${items[status.index].getShopitem_num()}" style="float: left;"> 
											<label for="${items[status.index].getShopitem_num()}"style="float: left;">
											</label>	
										</div> 
										<img src="${pageContext.request.contextPath}/images/${items[status.index].getShopitem_file_name()}" class="item"> <span
										style="float: left; margin-left: 3%;"><b>${items[status.index].getShopitem_name()}</b></span>
									</td>
									<td
										style="vertical-align: middle; text-align: center; border-right: 1px solid #e6e6e6; border-left: 1px solid #e6e6e6">
										<!-- - + ??????  -->
										<div style="position: relative;">
											<input type="text" value="${carts.getItem_cnt()}" class="count" id="cnt${status.index}">
											<button type="button" class="min_button" id="min${status.index}">
											
											</button>
											
											<button type="button" class="add_button" id="add${status.index}">
											</button>
											<span style="font-size: 15%">?????? ${stocks[status.index]}??? ????????????</span>
										</div>
			
									</td>
									<td
										style="vertical-align: middle; text-align: right; border-right: 1px solid #e6e6e6; border-left: 1px solid #e6e6e6"><div
											style="display: block;">
											<strong id="itemNum${status.index}" style="font-size: 15%"><c:out value="${items[status.index].getShopitem_cost()*carts.getItem_cnt()}"/>???</strong>
										</div></td>
									<td align="center" style="vertical-align: middle;"><div
											style="margin: 0 auto;">
											<button
												style="box-shadow: none; line-height: 0; display: block;" onclick="deleteCart(${carts.getCart_num()})">
												<img src="${pageContext.request.contextPath}/images/btn_delete.png">
											</button>
										</div></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4" style="text-align: center;">??????????????? ????????? ????????? ????????????.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</section>
	</div>


	<!-- Footer -->
	<footer class="wrapper align-center">
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
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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

<c:forEach var="stocks" items="${stocks}" varStatus="status">
<c:set var="items" value="${items}"/>
<c:set var="costs" value="${costs}"/>
<script>
$("#cnt${status.index}").on("keyup",function(){

	var regex = /[^0-9]/g;

	if(regex.test($("#cnt${status.index}").val())){

		alert("????????? ???????????????.");

		$("#cnt${status.index}").val("1");

		return;			

	}else if($("#cnt${status.index}").val()==0){

		alert("1??? ?????? ???????????? ?????????.");

		$("#cnt${status.index}").val("1");

		return;
	}else if(Number($("#cnt${status.index}").val())>"${stocks}"){
		alert("?????? ?????? ?????? ????????? ?????????????????????.");
		$("#cnt${status.index}").val("1");
	}	
});
$("#cnt${status.index}").focusout(function(){
	var total = $('#cnt${status.index}').val()*${items[status.index].getShopitem_cost()};
	$("#itemNum${status.index}").text(total+"???");
})
$("#min${status.index}").on("click", function(){

	var num = $("#cnt${status.index}").val()

	if(Number($("#cnt${status.index}").val())==1){

		alert("1??? ?????? ???????????? ?????????.");

		$("#cnt${status.index}").val("1");
		
		return;

	}

	$("#cnt${status.index}").val(num - 1);			
	var total = (num-1)*${items[status.index].getShopitem_cost()};
	$("#itemNum${status.index}").text(total+"???");
});

$("#add${status.index}").on("click", function(){

	var num = $("#cnt${status.index}").val()

	if($("#cnt${status.index}").val()<Number("${stocks}")){
		$("#cnt${status.index}").val(Number(num) + 1);
		var total = (Number(num)+1)*${items[status.index].getShopitem_cost()};
		$("#itemNum${status.index}").text(total+"???");
	}else{
		alert("?????? ?????? ?????? ????????? ?????????????????????.");
		$("#cnt${status.index}").val("1");
	}
});
$(document).ready(function(){
	$("input.box${status.index}").change(function(){
		if($("input.box${status.index}").is(":checked")){
			var text = '';
			var name = '${items[status.index].getShopitem_name()}';
			var cost = ${items[status.index].getShopitem_cost()};
			var num = $("#cnt${status.index}").val();
			text += "<div id='${status.index}'>"
			text += "<span id='sideBarItemCnt"+${status.index}+"' style = 'font-size: 12px; font-family: 'Nanum Gothic Coding', monospace;'>"+name+"&nbsp;"+num+"???</span>";
			text += "<span id='sideBarCost"+${status.index}+"' style='float: right; font-size : 12px;'>"+(cost*num)+"</span>???"
			text += "</div>"
			$("#sideBarInner3").append(text)
			var beforePrice = $("#totalprice").text();
			var price = Number(beforePrice)+(cost*num);
			$("#totalprice").text(price);
			var deliveryPrice = 3000;
			$("#sideBarTotalCost").text(deliveryPrice+price);
			return;
		}else{
			$("#${status.index}").remove();
			var cost = $("#sideBarCost${status.index}").text();
			var beforeTotal = $("#totalprice").text();
			$("#totalprice").text(parseInt(beforeTotal)-parseInt(cost));
			if($("#totalprice").text()=="NaN"){
				$("#totalprice").text("0");
			}
			$("#sideBarTotalCost").text(parseInt(beforeTotal)-parseInt(cost)+3000+"???");
			if($("#sideBarTotalCost").text()=="NaN"){
				$("#sideBarTotalCost").text("0");
			}
			return;
		}
	})
})
	 
	
</script>
</c:forEach>
<script>
var pageContext = "${pageContext.request.contextPath}";
	function deleteCart(cart_num){
		var result = confirm("?????? ?????????????????????????");
		if(result){
		$.ajax({
			url :pageContext+"/shopping/deleteCart.sh",
			type : "post",
			data : {"cart_num" : cart_num},
			success : location.reload()
		})}else{return;}
	}
</script>
 <!-- ?????? ??????????????? -->
	<script>
	/* var IMP = window.IMP;
	  IMP.init("imp22926195"); // "iamport"
	function requestPay(){
	  IMP.request_pay({
    pg: "html5_inicis", // PG??? ??????
    pay_method: "card", // ?????? ??????
    merchant_uid: 'merchant_' + new Date().getTime(), //??????????????? ????????? ??? ?????? ?????????id
    name: "?????? ?????? 16??????", // ?????????
    amount: 2500000, // ??????
    buyer_email: "test@gmail.com",
    buyer_name: "tester", // ????????? ??????
    buyer_tel: "010-4242-4242", // ????????? ????????? 
    buyer_addr: "??????????????? ????????? ?????????",// ????????? ?????????
    buyer_postcode: "01181", // ????????? ????????????
    m_redirect_url : 'https://example.com/mobile/complete', // ????????? ????????? ????????? url
    digital: true, // ?????? ???????????? ????????? ????????????(????????? ???????????? ?????? ????????????)
    app_scheme : '' // ????????? app scheme
  }, function (rsp) { // callback
    if (rsp.success) { // ?????? ?????? ???: ?????? ?????? ?????? ???????????? ????????? ????????? ??????
        // jQuery??? HTTP ??????
        jQuery.ajax({
          url: "https://www.myservice.com/payments/complete", // ????????? ??????
          method: "POST",
          headers: { "Content-Type": "application/json" },
          data: {
              imp_uid: rsp.imp_uid,
              merchant_uid: rsp.merchant_uid
              //?????? ????????? ???????????? ????????? ?????? ??????
          }
      }).done(function(data) { // ?????? ??????
          switch(data.status) {
            case: "vbankIssued":
              // ???????????? ?????? ??? ??????
              break;
            case: "success":
              // ?????? ?????? ??? ??????
              break;
          }
        });
    } else {
      alert("????????? ?????????????????????. ?????? ??????: " +  rsp.error_msg);
    }
  });} */
</script>
</html>