<%@ page language='java' contentType='text/html; charset=UTF-8'
    pageEncoding='UTF-8'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1, user-scalable=no' />
<link rel='stylesheet' href='${pageContext.request.contextPath}/assets/css/main.css' />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
		<style>
			body {
				font-family: 'Nanum Gothic Coding', monospace;
			}
			section#choiceTypeOfUser nav{
				display: flex;
				justify-content: space-between;
			}
			div#phone, div#owner, div#user {
			    border: 1px solid #e0e0e0;
			    margin-right: 10%;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    width: 40%;
			    height: 105px;
			}
			
			div.title {
				width: 70px;
			    height: 70px;
			    background: url(../../images/join_title_icon.gif) no-repeat;
			    background-size: 70px;
			    content: '';
			}

			div.owner {
				width: 140px;
			    height: 140px;
			    background: url(../../images/join_owner.png) no-repeat;
			    background-size: 140px;
			    content: '';
			}

			div.user {
				width: 140px;
			    height: 140px;
			    background: url(../../images/join_user.png) no-repeat;
			    background-size: 140px;
			    content: '';
			}

			div.phone {
				width: 70px;
			    height: 70px;
			    background: url(../../images/phone.png) no-repeat;
			    background-size: 70px;
			    content: '';
			}
			
			hr {
				margin:0;
			}
			
			hr.dark{
				border-bottom-color: #000;
				
			}
			
			input[type='checkbox'] + label:before, input[type='radio'] + label:before {
				order: solid 1px;
			    content: '';
			    display: inline-block;
			    font-size: 0.8em;
			    height: 1em;
			    left: -5px;
			    line-height: 2.0625em;
			    position: inherit;
			    text-align: center;
			    top: 0;
			    width: 1em;
			}
			
			input[type='checkbox']:checked + label:before, input[type='radio']:checked + label:before {
			    content: '';
			}
			
			input[type='checkbox'] + label, input[type='radio'] + label{
				font-size: 0.7em;
			}
			
			div.area {
				margin-bottom: 5%;
			}
			
			ul#dash {
				margin:0;
			}
			
			ul#dash li{
				list-style: none;
				font-size: 0.7em;
			}
			
			a.showTerm{
				background-color: #646ECB !important;
				position: absolute;
    			right: 47px;
			}
			
			a.showTerm:hover{
				background-color: #444 !important;
			}
			
			input.phone	{
				width: 80px;
    			height: 30px;
    			display: inline;
			}
			
			div.info label {
				margin:0;
				display:inline-block;
				width:200px;
				font-size: 0.7em;
			}
			
			div.welcome {
				margin-bottom: 40px;
			}
			
			p#checkPhone {
			    display: inline-block;
			    margin: 0 0 0 2%;
			    font-size: 0.7em;
			}
			
			div.info div div {
				vertical-align: middle;
				display: inline-block;
				line-height: 30px;
				padding: 7px 0;
			}
			
			div.info input[type='text'], div.info input[type='password']{
				border-color: #bfb9b9;
				font-size: 0.8em;
			}
			
			div.info input[type='button'] {
				border-radius: 0;
			    line-height: 0;
			    height: 30px;
			    background: #646ECB;
			}
			
			div.info input[type='text']:not(.phone), div.info input[type='password'] {
				height: 30px;
				width: 270px;
			}
			
			button[type='button'] {
				width: 100%;
				right: 0;
				background: #646ECB;
			}
			
			button[type='button']:hover {
				background: #E1DBF5;
			}
			
			div.info div div.address{
				display:block;
				font-size:0.8em;
				padding-left: 204px;
				margin-top: -19px;
			}
			
			div.addMartWrap {
				display: flex;
    			justify-content: space-between;
			}
			
			input#addMart {
				height: 30px;
    			line-height: 30px;
    			border-radius:0;
    			font-size:0.7em;
    			background: #646ECB;
			}
			
			input#addMart:hover {
				background: #444;
			}
			
			input.searchAddress {
				font-size: 0.7em;
				color:#fff !important;
			}
			
			div.stepBtns {
				display: flex;
    			justify-content: space-between;
			}
			
			p#confirmMsg {
				font-size: 0.8em;
			    font-weight: bold;
			    margin: 0;
			    line-height: 20px;
			    padding-left: 15px;
			}
			
		</style>
</head>
<body class='is-preload' style='padding: 0 25%; min-width: 1680px;'>
	<!-- Header -->
	<jsp:include page='../fix/no_categoryHeader.jsp'/>	
	
	<!-- Section -->
	<section id='main' class='wrapper'>
		<div class='inner'>
		<section id='choiceTypeOfUser'>
			<h2>회원가입</h2>
			<div class='welcome'>
				<div class='title'></div>
				<span class='logo'>온새일</span>에 오신 것을 환영합니다.
				<br>
				<span style='font-size:0.7em'>회원가입하신 후 온새일만의 다양한 서비스를 이용해보세요.</span>
			</div>
			<div style='display:flex; justify-content:space-around; align-items:center'>
				<div id='owner'>
					<div class='user'></div>
					<div style='width: 40%;text-align: center;'>
						<a href="javascript:choiceTypeOfUser('user')" style='text-decoration:none;'>손님 회원가입</a>
					</div>
				</div>
				<div id='user'>
					<div class='owner'></div>
					<div style='width: 40%;text-align: center;'>
						<a href="javascript:choiceTypeOfUser('owner')" style='text-decoration:none;'>사장님 회원가입</a>
					</div>
				</div>
			</div>
		</section>
		<section id='step1' style='display:none;'>
			<h2>본인인증</h2>
			<div class='welcome'>
				<div class='title'></div>
				<span class='logo'>온새일</span>에 오신 것을 환영합니다.
				<br>
				<span style='font-size:0.7em'>아래의 인증방식을 선택하여 인증을 진행해주세요.</span>
			</div>
			<div class='area'>
			<div style='display:flex; justify-content:space-around; align-items:center'>
				<div id='phone'>
					<div class='phone'></div>
					<div style='width: 40%;text-align: center;'>
						<a href='javascript:verifySMS()' style='text-decoration:none; color: red; margin-top:2%;'>인증절차 생략</a>
						<p style="font-size:9px;">글씨를 클릭하면 다음페이지로 이동됩니다.</p>
					</div>
				</div>
				<div>
					<ul style='font-size: 0.6em;'>
						<li>
							법인폰 사용자는 법인폰 개인인증 서비스 신청 후 휴대폰 인증을 하실 수 있습니다.
						</li>
						<li>
							본인인증이 잘 되지 않으시면 본인인증기관 고객센터로 문의 해주세요.
							<br>
							<em>
								NICE평가정보(주) 고객센터 : 1600-1522
								코리아크레딧뷰로(주) 고객센터 : 02-708-1000
							</em>
						</li>
					</ul>
				</div>
			</div>
			</div>
			<div>
				<input id='prev' type='button' value='이전' style='width:200px;' onclick='goPrev()'>
			</div>
		</section>
		<section id='step2-user' style='display:none;'>
			<form id="joinUserForm" method="post" action="${pageContext.request.contextPath}/user/UserJoinOk.me">
				<div class='area'>
				<h2>약관동의</h2>
				<hr class='dark'>
				<input type='checkbox' id='u-term1' class='term-user'>
				<label for='u-term1'>(필수) 온새일 회원 이용약관</label>
				<a class='showTerm button primary small'>내용보기</a>
				<hr>
				<input type='checkbox' id='u-term2' class='term-user'>
				<label for='u-term2'>(필수) 온새일 회원 개인정보 수집 및 이용 동의</label>
				<a class='showTerm button primary small'>내용보기</a>
				<hr>
				<input type='checkbox' id='u-term3' class='term-user'>
				<label for='u-term3'>(필수) 만 14세 이상 회원입니다.</label>
				<hr class='dark'>
				</div>
				
				<div class='area'>
				<h2>회원정보</h2>
				<p style='font-size: 0.6em;'>
					<span style='color:red;'>*</span>
					표시는 필수입력 항목 이오니 반드시 입력해 주세요.
				</p>
				<div class='info'>
					<hr class='dark'>
					<div>
						<label for='user_email'>아이디(이메일 주소)<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='text' id='user_email' name='user_email'>
						</div>
					</div>
					<hr>
					<div>
						<label for='user_pw'>비밀번호<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='password' id='user_pw' name='user_pw'>
						</div>
					</div>
					<hr>
					<div>
						<label for='user_name'>이름<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='text' id='user_name' name='user_name'>
						</div>
					</div>
					<hr>
					<div>
						<label for='user_nickname'>닉네임<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='text' id='user_nickname' name='user_nickname'>
						</div>
					</div>
					<hr>
					<div>
						<label for='user_tel1'>휴대폰 번호<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input class='phone' type='text' id='user_tel1' name='user_tel1'>
							 - <input class='phone' type='text' id='user_tel2' name='user_tel2'>
							  - <input class='phone' type='text' id='user_tel3' name='user_tel3'>
						</div>
						<p id='checkPhone' style='color:blue'>인증 완료</p>
					</div>
					<hr>
					<div>
						<label for='find_address' >주소</label>
						<div>
							<input type='text' id='user_postcode' name="user_postcode" style='width:177px' readonly>
						</div>
						<div style='line-height: 0;'>
							<input type='button' class='searchAddress' class='button primary' onclick="searchAddress('user')" value='검색'>
						</div>
						<div class='address' style='display:none'>
							<div style='display:block'>
								<span style='background:#f6f6f6; color:#888'>
									도로명
								</span> 
								<span id='user_address'></span>
								<input type="hidden" name="user_address">
							</div>
							<div style='display:block'>
								<input type='text' id='user_detailAddress' name="user_detailAddress" placeholder='상세 주소'>
							</div>
						</div>
					</div>
					<hr class='dark'>
				</div>
				</div>
				
				<div class='area'>
				<h2>광고 정보 수신 동의</h2>
				<hr class='dark'>
				<input type='checkbox' id='infoRcvAgree'>
				<label for='infoRcvAgree' class='infoRcvAgree'><strong>(선택) </strong>서비스·이벤트 정보 제공을 위한 개인정보 수집 및 이용 동의</label>
				<hr>
				<input type='checkbox' id='emailRcvYn'>
				<label for='emailRcvYn' class='emailRcvYn'>이메일</label>
				<input type='checkbox' id='smsRcvYn'>
				<label for='smsRcvYn' class='smsRcvYn'>문자</label>
				<div style='font-size:0.5em; padding-left: 2.4em;'>
					광고 정보 수신동의를 하시면 상품 및 이벤트 정보를 받으실 수 있습니다.
				</div>
				<hr>
				<ul id='dash'>
					<li>
						<strong>-</strong> 선택 항목에 동의하지 않더라도 온새일 회원가입 및 기본 서비스를 이용하실 수 있습니다.
					</li>
				</ul>
				<hr class='dark'>
				</div>
				<div  id='step2Btns' class='area stepBtns' style='text-align:center;'>
					<div>
						<input id='prev' type='button' value='이전' style='width:200px;' onclick='goPrev()'>
					</div>
					<div>
						<input id='next' type='button' value='완료' style='width:200px;' onclick="checkStep2('user')">
					</div>
				</div>
			</form>
		</section>
		
		<!--오너 계정 정보 -->
			<form id="joinOwnerForm">
			<section id='step2-owner' style='display:none;'>
				<div class='area'>
				<h2>약관동의</h2>
				<hr class='dark'>
				<input type='checkbox' id='o-term1' class='term-owner'>
				<label for='o-term1'>(필수) 온새일 회원 이용약관</label>
				<a class='showTerm button primary small'>내용보기</a>
				<hr>
				<input type='checkbox' id='o-term2' class='term-owner'>
				<label for='o-term2'>(필수) 온새일 회원 개인정보 수집 및 이용 동의</label>
				<a class='showTerm button primary small'>내용보기</a>
				<hr>
				<input type='checkbox' id='o-term3' class='term-owner'>
				<label for='o-term3'>(필수) 만 14세 이상 회원입니다.</label>
				<hr class='dark'>
				</div>
				
				<div class='area'>
				<h2>회원정보</h2>
				<p style='font-size: 0.6em;'>
					<span style='color:red;'>*</span>
					표시는 필수입력 항목 이오니 반드시 입력해 주세요.
				</p>
				<!-- 				
				- 오너 번호
				- 이메일(아이디)
				- 비밀번호
				- 오너 명
				- 오너 연락처
				-->
				<div class='info'>
					<hr class='dark'>
					<div>
						<label for='mart_owner_email'>아이디(이메일 주소)<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='text' id='mart_owner_email' name='mart_owner_email'>
						</div>
					</div>
					<hr>
					<div>
						<label for='mart_owner_pw'>비밀번호<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='password' id='mart_owner_pw' name='mart_owner_pw'>
						</div>
					</div>
					<hr>
					<div>
						<label for='mart_owner_name'>이름<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='text' id='mart_owner_name' name='mart_owner_name'>
						</div>
					</div>
					<hr>
					<hr>
					<div>
						<label for='mart_owner_tel1'>휴대폰 번호<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input class='phone' type='text' id='mart_owner_tel1' name='mart_owner_tel1'>
							 - <input class='phone' type='text' id='mart_owner_tel2' name='mart_owner_tel2'>
							  - <input class='phone' type='text' id='mart_owner_tel3' name='mart_owner_tel3'>
						</div>
						<p id='checkPhone' style='color:blue'>인증 완료</p>
					</div>
					<hr class='dark'>
				</div>
				</div>
				<div class='area'>
				<h2>광고 정보 수신 동의</h2>
				<hr class='dark'>
				<input type='checkbox' id='infoRcvAgree_owner'>
				<label for='infoRcvAgree_owner' class='infoRcvAgree'><strong>(선택) </strong>서비스·이벤트 정보 제공을 위한 개인정보 수집 및 이용 동의</label>
				<hr>
				<input type='checkbox' id='emailRcvYn_owner' name='checkRcv'>
				<label for='emailRcvYn_owner' class='emailRcvYn'>이메일</label>
				<input type='checkbox' id='smsRcvYn_owner' name='checkRcv'>
				<label for='smsRcvYn_owner' class='smsRcvYn'>문자</label>
				<div style='font-size:0.5em; padding-left: 2.4em;'>
					광고 정보 수신동의를 하시면 상품 및 이벤트 정보를 받으실 수 있습니다.
				</div>
				<hr>
				<ul id='dash'>
					<li>
						<strong>-</strong> 선택 항목에 동의하지 않더라도 온새일 회원가입 및 기본 서비스를 이용하실 수 있습니다.
					</li>
				</ul>
				<hr class='dark'>
				</div>
				<div  id='step2Btns' class='area stepBtns' style='text-align:center;'>
					<div>
						<input id='prev' type='button' value='이전' style='width:200px;' onclick='goPrev()'>
					</div>
					<div>
						<input id='next' type='button' value='다음' style='width:200px;' onclick="checkStep2('owner')">
					</div>
				</div>
				</section>
			<!-- 마트 등록 (1개 필수)-->
			<section id='step3-owner' style='display:none;'>
				<div class='area step3RegisterMartArea'>
				<h2>매장 정보</h2>
				<div class='addMartWrap'>
					<p style='font-size: 0.6em;'>
						<span style='color:red;'>*</span>
						표시는 필수입력 항목 이오니 반드시 입력해 주세요.
					</p>
					<div>
						<input id='addMart' type='button' class='button primary' onclick='appendMart()' value='매장추가'>
					</div>
				</div>
				<!-- 
				-사업자 번호
				-매장 이름
				-매장 연락처
				-매장 주소
				-우편번호
				-배달 가능 여부
				-재난 지원금 사용 가능 여부 
				-->
				<div>
					<div style='margin-top:3%'>#1</div>
					<div style='display:flex'>
						<div><input id='confirm' type='button' class='button primary' onclick='confirmMart(1)' value='확정'></div>
						<p id="confirmMsg">
							매장 정보 입력 후 확정버튼을 반드시 눌러주세요.
							<br>
							<span style="color:red">확정 후 수정이 불가능하오니 신중히 확정해주세요.</span>
						</p>
					</div>
				</div>
				<div class='info'>
					<hr class='dark'>
					<div>
						<label for='mart_business_num1'>사업자 번호<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='text' id="mart_business_num1" name="mart_business_num1">
						</div>
					</div>
					<hr>
					<div>
						<label for='mart_name1'>매장 이름<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input type='text' id="mart_name1" name="mart_name1">
						</div>
					</div>
					<hr>
					<div>
						<label for='mart_tel1-1'>매장 연락처<span style='color:red; font-size:1em;'> *</span></label>
						<div>
							<input class='phone1 phone' type='text' id="mart_tel1-1" name="mart_tel1-1"> - <input class='phone1 phone' type='text' id="mart_tel2-1" name="mart_tel2-1"> - <input class='phone1 phone' type='text' id="mart_tel3-1" name="mart_tel3-1">
						</div>
					</div>
					<hr>
				<div>
					<label>매장 주소<span style='color:red; font-size:1em;'> *</span></label>
					<div>
						<input type='text' id='mart_postcode1' name="mart_postcode1" style='width:177px'>
					</div>
					<div style='line-height: 0;'>
						<input type='button' class='searchAddress' class='button primary' onclick="searchAddress('mart1')" value='검색'>
					</div>
					<div class='address' style='display:none'>
						<div style='display:block'>
							<span style='background:#f6f6f6; color:#888'>
								도로명
							</span> 
							<span id='mart_address1'></span>
							<input type="hidden" name="mart_address1" id="input_mart_address1">
						</div>
						<div style='display:block'>
							<input type='text' id='mart_detailAddress1' name="mart_detailAddress1" placeholder='상세 주소'>
						</div>
					</div>
					<hr>
				</div>
				<div>
					<label>배달 가능 여부<span style='color:red; font-size:1em;'> *</span></label>
					<div>
						<input type='radio' id='mart_delevery_ok1' name='mart_delevery1' value="1">
						<label for='mart_delevery_ok1'>배달 가능 매장</label>
					</div>
					<div>
						<input type='radio' id='mart_delevery_not_ok1' name='mart_delevery1' value="0" checked>
						<label for='mart_delevery_not_ok1'>배달 불가능 매장</label>
					</div>
				</div>
				<hr>
				<div>
					<label>재난 지원금 사용 가능 여부<span style='color:red; font-size:1em;'> *</span></label>
					<div>
						<input type='radio' id='mart_covidfund_ok1' name='mart_covidfund1' value="1">
						<label for='mart_covidfund_ok1'>사용 가능</label>
					</div>
					<div>
						<input type='radio' id='mart_covidfund_not_ok1' name='mart_covidfund1' value="0" checked>
						<label for='mart_covidfund_not_ok1'>사용 불가능</label>
					</div>
				</div>
				</div>
			<hr class='dark'>
			</div>
			<div  id='step3Btns' class='area stepBtns' style='text-align:center;'>
				<div>
					<input id='prev' type='button' value='이전' style='width:200px;' onclick='goPrev()'>
				</div>
				<div>
					<input id='finish' type='button' value='완료' style='width:200px;' onclick='checkStep3()'>
				</div>
			</div>
		</section>
		</form>
		</div>
	</section>
				
	<!-- Footer -->
	<footer id='footer'>
		<div class='inner'>
			<p class='copyright'>&copy; Untitled Corp. All rights reserved. Lorem ipsum dolor sit amet feugiat tempus aliquam.</p>
			<ul class='menu'>
				<li><a href='#'>Terms<span> of Use</span></a></li>
				<li><a href='#'>Privacy<span> Policy</span></a></li>
				<li><a href='#'>Legal<span> Information</span></a></li>
			</ul>
		</div>
	</footer>

<!-- Scripts -->
	<script src='${pageContext.request.contextPath}/assets/js/jquery.min.js'></script>
	<script src='${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js'></script>
	<script src='${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js'></script>
	<script src='${pageContext.request.contextPath}/assets/js/browser.min.js'></script>
	<script src='${pageContext.request.contextPath}/assets/js/breakpoints.min.js'></script>
	<script src='${pageContext.request.contextPath}/assets/js/util.js'></script>
	<script src='${pageContext.request.contextPath}/assets/js/main.js'></script>
	<script src='//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js'></script>
	<!-- 아임포트 본인인증 라이브러리 -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script>
	//#################################################################################
	//페이지 이동
		var prevStep = new Array();
		var nextStep = new Array();
		var flag;
		var index = 0;
	
		function choiceTypeOfUser(type){
			prevStep[index] = $('section#choiceTypeOfUser');
			nextStep[index] = $('section#step1');
			flag = type;
			
			prevStep[index].hide();
			nextStep[index].show();
			
			index++;
		}
		
		function verifySMS(){
			prevStep[index] = $('section#step1');
			nextStep[index] = $('section#step2-' + flag);
			
			prevStep[index].hide();
			nextStep[index].show();
			
			index++;
		}
		
		function goNext(){
			prevStep[index] = $('section#step2-' + flag);
			nextStep[index] = $('section#step3-' + flag);
			
			prevStep[index].hide();
			nextStep[index].show();
			
			$('html').scrollTop(0);
			
			index++;
			
		}
		
		function goPrev(){
			index--;
			
			prevStep[index].show();
			nextStep[index].hide();
			
			$('html').scrollTop(0);
		}
	//#################################################################################
		
	
	
	//#################################################################################
	//스텝2 유효성 검사
		function checkStep2(type){
			var termCheck = true;
			var phoneCheck = true;
			 var form = $("#joinUserForm");
			 
			$.each($('input.term-' + type), function(item){
				if(!$(this).is(':checked')){
					termCheck = false;
				}
			});
			
			if(!termCheck){
				alert('약관의 동의가 필요합니다.');
				return;
			}
		
			if(type == 'owner'){
				if(!$('input#mart_owner_email').val()){
					alert('이메일을 입력하세요.');
					$('input#mart_owner_email').focus();
					return;
				}
				if(!$('input#mart_owner_pw').val()){
					alert('비밀 번호를 입력하세요.');
					return;
				}else{
					var pwTag = $('input#mart_owner_pw');
					var pw = pwTag.val();
					
					//비밀번호 정규식
					//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
 					var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
					var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
					
					if(!reg.test(pw)){
						alert('비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.');
						pwTag.focus();
						return;
					}
					
					//같은 문자를 4번 이상 사용할 수 없다.
					if(/(\w)\1\1\1/.test(pw)){
						alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
						pwTag.focus();
						return;
					}
					
					//비밀번호에 한글이 있다.
					if(hangleCheck.test(pw)){
						alert('비밀번호에 한글을 사용할 수 없습니다.');
						pwTag.focus();
						return;
					}
					
					//비밀번호에 공백을 포함할 수 없다.
					if(pw.search(/\s/) != -1){
						alert('비밀번호에 공백 없이 입력해주세요.');
						pwTag.focus();
						return;
					}
				}
				
				if(!$('input#mart_owner_name').val()){
					alert('성함을 입력하세요.');
					$('input#mart_owner_name').focus();
					return;
				}
				
				for(let i=1; i<4; i++){
					if(!$('input#mart_owner_tel' + i).val()){
						phoneCheck = false;
					}
				}

				if(!phoneCheck){
					alert('휴대폰 번호를 입력하세요.');
					return;
				}
				
				goNext();
				
			}else{
				if(!$('input#user_email').val()){
					alert('이메일을 입력하세요.');
					$('input#user_email').focus();
					return;
				}
				
				if(!$('input#user_pw').val()){
					alert('비밀번호를 입력하세요.');
				}else{
					var pwTag = $('input#user_pw');
					var pw = pwTag.val();
					
					//비밀번호 정규식
					//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
 					var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
					var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
					
					if(!reg.test(pw)){
						alert('비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.');
						pwTag.focus();
						return;
					}
					
					//같은 문자를 4번 이상 사용할 수 없다.
					if(/(\w)\1\1\1/.test(pw)){
						alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
						pwTag.focus();
						return;
					}
					
					//비밀번호에 한글이 있다.
					if(hangleCheck.test(pw)){
						alert('비밀번호에 한글을 사용할 수 없습니다.');
						pwTag.focus();
						return;
					}
					
					//비밀번호에 공백을 포함할 수 없다.
					if(pw.search(/\s/) != -1){
						alert('비밀번호에 공백 없이 입력해주세요.');
						pwTag.focus();
						return;
					}
				}
				
				if(!$('input#user_name').val()){
					alert('성함을 입력하세요.');
					return;
				}
				if(!$('input#user_nickname').val()){
					alert('별명을 입력하세요.');
					$('input#user_nickname').focus();
					return;
				}
				if(!$('input#user_postcode').val()){
					alert('주소를 입력하세요.');
					return;
				}
				alert("회원 가입이 완료되었습니다.\n로그인을 진행해주세요!")
				//일반회원 가입 완료 submit
				   form.submit();
			}
		}
	
	
	//#################################################################################
	
	
	
	//#################################################################################
	//스텝3 최종 검사
		var totalCheck = new Array();
 		function checkStep3(){
 			var frm = $("#joinOwnerForm");
 			var check = true;
 			for(let i=0; i<totalCheck.length; i++){
	 			if(!totalCheck[i]){
	 				check = false;
	 				break;
	 			}
 			}
 			if(!check || totalCheck.length == 0){
 				alert("확정되지 않은 매장 정보가 있습니다.");
 				return;
 			}
 			
 			//사장님 회원 가입 완료 submit
 			alert("온새일에 오신것을 환영합니다.\n로그인을 진행해주세요!")
 			frm.submit();
		}
	//#################################################################################


	
	//#################################################################################
	//스텝3 매장 확정
		var appendMartCheck = false;
		function confirmMart(num){
			$.each($("input[type='radio']"), function(item){
				console.log($(this).prop('checked'));
			})
			//사업자번호
			var $mart_business = $("input#mart_business_num" + num);
			//매장이름 
			var $mart_name = $("input#mart_name" + num);
			//매장주소 	 
			var $mart_address = $("input#input_mart_address" + num);
			//상세주소
			var $mart_detailAddress = $("input#mart_detailAddress" + num);

			if(!checkCorporateRegiNumber($mart_business.val())){
				alert("사업자 등록번호를 확인해주세요.");
				$mart_business.focus();
				return;
			}
			
			if(!$mart_name.val()){
				alert("매장 이름을 확인해주세요.");
				$mart_name.focus();
				return;
			}
			
			//매장연락처
			phoneCheck = true;
			for(let i=1; i<4; i++){
				if(!$('input#mart_tel' + i + '-' + num).val()){
					phoneCheck = false;
				}
			}

			if(!phoneCheck){
				alert('매장 연락처를 입력하세요.');
				return;
			}
			
			if(!$mart_address.val()){
				alert("매장 주소를 확인해주세요.");
				$mart_address.focus();
				return;
			}
			
			//전체 input태그 수정 불가
			$('input').prop('readonly', true);
			//검색 버튼 비활성화
			$('input.searchAddress').removeAttr('onclick');
			//라디오 버튼 비활성화
			$("input[type='radio']").prop('readonly', true);
			//라디오에 연결된 label 비활성화
			$("label[for='mart_delevery_ok" + num + "']").on("click", function(e){
				e.preventDefault();
			})
			$("label[for='mart_delevery_not_ok" + num + "']").on("click", function(e){
				e.preventDefault();
			})
			$("label[for='mart_covidfund_ok" + num + "']").on("click", function(e){
				e.preventDefault();
			})
			$("label[for='mart_covidfund_not_ok" + num + "']").on("click", function(e){
				e.preventDefault();
			})
			
			//확정버튼 삭제
			$("input#confirm").remove();
			//메세지 및 스타일 변경
			$("p#confirmMsg").text("확정 완료");
			$("p#confirmMsg").css("padding-left", "0");
			$("p#confirmMsg").css("color", "blue");
			appendMartCheck = true;
			totalCheck[num-1] = true;
		}
	//#################################################################################
	
	
	
	//#################################################################################
	//스텝3 매장 추가
		var num = 1;
		function appendMart(){
			if(!appendMartCheck){ alert("작성하신 매장 정보에 대한 확정이 필요합니다.\n확정을 눌러주세요."); return;} //확정없이 추가할 때
			totalCheck[num] = false;
			appendMartCheck = false; //확정 후 초기화
			
			num++;
			var str = "";
			str += "<div>";
			str += "<div style='margin-top:3%'>#" + num + "</div>";
			str += "<div style='display:flex'>";
			str += "<div><input id='confirm' type='button' class='button primary' onclick='confirmMart(" + num + ")' value='확정'></div>";
			str += "<p id='confirmMsg'>";
			str += "매장 정보 입력 후 확정버튼을 반드시 눌러주세요.";
			str += "<br>";
			str += "<span style='color:red'>확정 후 수정이 불가능하오니 신중히 확정해주세요.</span>";
			str += "</p>";
			str += "</div>";
			str += "</div>";
			str += "<div class='info'>";
			str += "<hr class='dark'>";
			str += "<div>";
			str += "<label for='mart_business_num1'>사업자 번호<span style='color:red; font-size:1em;'> *</span></label>";
			str += "<div>";
			str += "<input type='text' id='mart_business_num" + num + "' name='mart_business_num1" + num + "'>";
			str += "</div>";
			str += "</div>";
			str += "<hr>";
			str += "<div>";
			str += "<label for='mart_name1'>매장 이름<span style='color:red; font-size:1em;'> *</span></label>";
			str += "<div>";
			str += "<input type='text' id='mart_name" + num + "' name='mart_name" + num + "'>";
			str += "</div>";
			str += "</div>";
			str += "<hr>";
			str += "<div>";
			str += "<label for='mart_tel1-" + num + "'>매장 연락처<span style='color:red; font-size:1em;'> *</span></label>";
			str += "<div>";
			str += "<input class='phone" + num + " phone' type='text' id='mart_tel1-" + num + "' name='mart_tel1-" + num + "'> - <input class='phone" + num + " phone' type='text' id='mart_tel2-" + num + "' name='mart_tel2-" + num + "'> - <input class='phone" + num + " phone' type='text' id='mart_tel3-" + num + "' name='mart_tel3-" + num + "'>";
			str += "</div>";
			str += "</div>";
			str += "<hr>";
			str += "<div>";
			str += "<label>매장 주소<span style='color:red; font-size:1em;'> *</span></label>";
			str += "<div>";
			str += "<input type='text' id='mart_postcode" + num + "' name='mart_postcode" + num + "' style='width:177px'>";
			str += "</div>";
			str += "<div style='line-height: 0;'>";
			str += "<input type='button' class='searchAddress' class='button primary' onclick=searchAddress('mart" + num + "') value='검색'>";
			str += "</div>";
			str += "<div class='address' style='display:none'>";
			str += "<div style='display:block'>";
			str += "<span style='background:#f6f6f6; color:#888'>";
			str += "도로명";
			str += "</span>"; 
			str += "<span id='mart_address" + num + "'></span>";
			str += "<input type='hidden' name='mart_address" + num + "' id='input_mart_address" + num + "'>";
			str += "</div>";
			str += "<div style='display:block'>";
			str += "<input type='text' id='mart_detailAddress" + num + "' name='mart_detailAddress" + num + "' placeholder='상세 주소'>";
			str += "</div>";
			str += "</div>";
			str += "<hr>";
			str += "</div>";
			str += "<div>";
			str += "<label>배달 가능 여부<span style='color:red; font-size:1em;'> *</span></label>";
			str += "<div>";
			str += "<input type='radio' id='mart_delevery_ok" + num + "' name='mart_delevery" + num + "'>";
			str += "<label for='mart_delevery_ok" + num + "'>배달 가능 매장</label>";
			str += "</div>";
			str += "<div>";
			str += "<input type='radio' id='mart_delevery_not_ok" + num + "' name='mart_delevery" + num + "' checked>";
			str += "<label for='mart_delevery_not_ok" + num + "'>배달 불가능 매장</label>";
			str += "</div>";
			str += "</div>";
			str += "<hr>";
			str += "<div>";
			str += "<label>재난 지원금 사용 가능 여부<span style='color:red; font-size:1em;'> *</span></label>";
			str += "<div>";
			str += "<input type='radio' id='mart_covidfund_ok" + num + "' name='mart_covidfund" + num + "'>";
			str += "<label for='mart_covidfund_ok" + num + "'>사용 가능</label>";
			str += "</div>";
			str += "<div>";
			str += "<input type='radio' id='mart_covidfund_not_ok" + num + "' name='mart_covidfund" + num + "' checked>";
			str += "<label for='mart_covidfund_not_ok" + num + "'>사용 불가능</label>";
			str += "</div>";
			str += "</div>";
			str += "</div>";
			str += "<hr class='dark'>";
			
			$("div.step3RegisterMartArea").append(str);
		}
	
	//#################################################################################
	
	
	//#################################################################################
	//사업자 번호 유효성 검사
		function checkCorporateRegiNumber(number){
			var numberMap = number.replace(/-/gi, '').split('').map(function (d){
				return parseInt(d, 10);
			});
			
			if(numberMap.length == 10){
				var keyArr = [1, 3, 7, 1, 3, 7, 1, 3, 5];
				var chk = 0;
				
				keyArr.forEach(function(d, i){
					chk += d * numberMap[i];
				});
				
				chk += parseInt((keyArr[8] * numberMap[8])/ 10, 10);
				return Math.floor(numberMap[9]) === ( (10 - (chk % 10) ) % 10);
			}
			return false;
		}
	
	
	//#################################################################################
	//주소
		function searchAddress(type){
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					$('.address').show();
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	                
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                // 사용자의 선택에 상관없이 도로명 주소만 가져온다.
	                addr = data.roadAddress;

	                if(type.length > 4){//매장주소일 경우 인덱스에 맞게 추가
						var index = type.substring(4);//매장번호
	                	type = type.substring(0, 4);//매장번호를 제외한 문자열(mart1 -> mart)
		                
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById(type + '_postcode' + index).value = data.zonecode;
		                document.getElementById(type + '_address' + index).innerHTML = addr;//innerHTML <span>태그
		                document.getElementById('input_' + type + '_address' + index).value = addr;	//파라미터 전송 준비
		                
	                     var mart_address = document.getElementById(type + "_address" + index).innerHTML;
	                     //주소입력을 했을 경우 input 태그에 값을 담아줌
	                     if(mart_address != null){
	                     $("input#input_mart_address" + num).val(mart_address);
	                     }
	                     console.log($("input#input_mart_address" + num));
		                
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById(type + '_detailAddress' + index).focus();
	                }else{
		                document.getElementById(type + '_postcode').value = data.zonecode;
		                document.getElementById(type + '_address').innerHTML = addr;
		                
						var user_address = document.getElementById(type + "_address").innerHTML;
						//주소입력을 했을 경우 input 태그에 값을 담아줌
						if(user_address != null){
							$("input[name='user_address']").val(user_address);
						}
		                
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById(type + '_detailAddress').focus();
	                }
	            }
	        }).open();
		}
			
	//#################################################################################
	
/* 	function verifySMS(){
		var options = {
				  headers: {
				    Authorization:
					'HMAC-SHA256 apiKey=NCSH219UAVOTNBPQ, date=2019-07-01T00:41:48Z, salt=jqsba2jxjnrjor, signature=1779eac71a24cbeeadfa7263cb84b7ea0af1714f5c0270aa30ffd34600e363b4',
					'Content-Type' : 'application/json'
				},
				body : {
					phoneNumber : '01071450138'
				},
				method : 'POST',
				url : 'http://api.coolsms.co.kr/senderid/v1/numbers'
			};

			$.ajax(options).done(function(response) {
				console.log(response);
			});

		} */

		/* 	IMP.init('imp33714527'); //아임포트 가맹점식별코드
		
		 IMP.certification({
		 }, function(rsp) {
		 if ( rsp.success ) {
		 // 인증성공
		 console.log(rsp.imp_uid);
		 console.log(rsp.merchant_uid);
		
		 $.ajax({
		 type : 'POST',
		 url : '/certifications/confirm',
		 dataType : 'json',
		 data : {
		 'imp_uid' : rsp.imp_uid
		 }
		 }).done(function(rsp) {
		 // 이후 Business Logic 처리하시면 됩니다.
		 });
		
		 } else {
		 // 인증취소 또는 인증실패
		 var msg = '인증에 실패하였습니다.';
		 msg += '에러내용 : ' + rsp.error_msg;

		 alert(msg);
		 }
		 }); */

		/* 	<script>
		 IMP.init("imp00000000");
		 IMP.certification(
		 //파라미터 생략시 빈 object는 입력해줘야한것 같음. 제거 시 모듈 동작 안함.
		 {},
		 function (rsp) {
		 //본인인증 성공 프로세스
		 if (rsp.success) {
		
		 }
		 //본인인증 실패 프로세스
		 else{
		 alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
		 }
		 }
		 );
		
		 IMP.certification(
		 function (rsp) { 
		 //인증 성공시
		 if (rsp.success) { 
		 // jQuery로 본인 웹서버로 요청
		 $.ajax({
		 type: 'POST',
		 url: '인증정보 조회할 본인 웹서버 API 경로',
		 dataType: 'json',
		 data: {'imp_uid' : rsp.imp_uid},
		 });
		 }else{
		 alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
		 }
		 });
		
		
		
		 //callback rsp 인자 값
		 {
		 error_code: null
		 error_msg: null
		 imp_uid: "고유인증값"
		 merchant_uid: "주문번호(신경안써도됌)"
		 pg_provider: "danal" //PG사
		 pg_type: "certification" //PG타입(본인인증)
		 success: true // 성공
		 }
		
		 //web.php
		 Route::post('/iamport/certificate', [Controller::class,'certificate']);
		 //Controller
		 function certificate(Request $request){
		 //아임포트 관리자 페이지의 시스템설정->내정보->REST API 키 값을 입력한다.
		 $imp_key = "REST API 키";
		 //아임포트 관리자 페이지의 시스템설정->내정보->REST API Secret 값을 입력한다.
		 $imp_secret = "REST API Secret";
		 //본인인증 모듈을 호출한 페이지에서 ajax로 넘겨받은 imp_uid값을 저장한다.
		 $imp_uid = $request->input('imp_uid');
		
		 try{
		 $getToken  = Http::withHeaders([
		 'Content-Type' => 'application/json'
		 ])->post('https://api.iamport.kr/users/getToken', [
		 'imp_key' => $imp_key,
		 'imp_secret' => $imp_secret,
		 ]);
		 /**
		 * 본인인증한 사람의 정보를 얻기 위해서는 아임포트 API 통신을해야 한다.
		 * api access_key를 얻기위해 아임포트에서 제공되는 imp_key,imp_secret을 이용하여
		 * 아래 api로 token을 얻는다.
		 * return 값이 json이므로 decode하여 원하는 값을 들고온다.
		 */
		/* 			         $getTokenJson = json_decode($getToken, true);
		
		 //API TOKEN
		 $access_token = $getTokenJson['response']['access_token'];
		 $getCertifications=Http::withHeaders([
		 'Authorization' => $access_token
		 ])->get('https://api.iamport.kr/certifications/'.$imp_uid);
		 $getCertificationsJson = json_decode($getCertifications,true);
		 $responseData = $getCertificationsJson['response'];
		 $result = ['code'=>200, 'message'=>'success','data'=>$responseData];
		 }catch(Exception $e){
		 $result = [
		 'code' => 410,
		 'message' => $e->getMessage()
		 ];
		 }
		 return response()->json($result);
		
		 }
		
		 //$responseData 상세 값
		
		 {
		 "birth":, //무슨 표기법으로 표시한지 모르겠음.
		 "birthday":"YYYY-MM-DD",
		 "carrier":"SKT", //통신사
		 "certified":true, //인증 성공 여부
		 "certified_at":인증날짜,
		 "foreigner":false, //외국인 여부
		 "gender":"male", // 성별
		 "imp_uid":"인증고유값",
		 "name":"이름",
		 "origin":"요청URL",
		 "pg_provider":"danal", //PG사
		 "pg_tid":"요청일시",
		 "phone":"휴대폰번호",
		 }
		 */
	</script>

</body>
</html>