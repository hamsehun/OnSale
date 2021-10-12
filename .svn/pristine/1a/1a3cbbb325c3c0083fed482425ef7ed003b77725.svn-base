<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<html>
   <head>
      <title>Untitled</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
      
      <style>
         
         /* mypage 메뉴 style작성 */
         .leftMenu {
            display: flex;
            width: 100%;
            float:left;
            margin-right: 10px;
         }
         
         .sub_contents {
            width: 100%;
         }
         
         div.sub_button1, div.sub_button2, div.sub_button3, div.sub_button4, div.sub_button5 {
            width: 100%;
            float: left;
         }
         
         .lnb_menu {
            padding-left: 0;
            display: flex;
         }
         
         .lnb_menu input {
            box-shadow: none;
            width: 100%;
            text-align: center;
            font-size: smaller;
            color: #a9a9a9 !important;
            box-shadow: none !important;
            background-color: #E1DBF5;
         }
         
         .lnb_menu input[type="button"]:hover {
            background-color: #E1DBF5;
         }
         
         .lnb_menu input[type="button"]::after {
            background-color: #E1DBF5;
         }
                  
         .lnb_menu > li {
            padding-left: 0;
            width: 25%;
            border-bottom: solid 1px #e3e5e4;
            border-top: 0;
         }
         
         li {
            border-top: 1px solid #e3e5e4;
             list-style: none outside none;
         }
         
         li > a {
             display: block;
             padding: 14px 0 12px;
             border-bottom-color: transparent;
         }
         
         .mini_bar_title {
             width: 100%;
             border-bottom: 4px solid #e3e5e4;
             margin: 0;
         }
         
         .mini_bar_title:after {
            border-bottom: none;
         }
         
         .sub_page {
            width: 100%;
            float: left;
            text-align: center;
         }
         
         .info_box {
            margin: 5% 0 5% 0;
         }
         
         .info_inner {
            width: 95%;
            margin-left: 2.5%;
            margin-bottom: 3%;
            padding-left: 5%;
            padding-right: 5%;
            justify-content: center;
            display: flex;
         }
         
         .info_inner fieldset {
            display: flex;
            width: 70%;
         }
         
         .info_box h1 {
             text-align: center;
             color: #646ECB;
             font-weight: bold;
             padding-botton: 0;
         }
         
         .info_box h1:after {
            border-bottom: none;
         }
         
         .info_box p {
            text-align: center;
         }
         
         #info {
            width: 80%;
            background : #e3e5e4;
            text-align: left;
            margin: auto;
            margin-bottom: 30px;
             padding: 20px;
         }
         
         .info_name {
             float: left;
             text-align: left;
             margin: 0;
             width: 30%;
             line-height: 3em;
             font-weight: bold;
         }
         
         .info_name p, #info_content p {
            margin: 0 !important;
         }
         
         #info_content {
            float: left;
             margin: 0 0 0 5%;
             width: 65%;
         }
         
         #info_content input {
            height: 3em;
         }
         
         .changeinfo_button {
         text-align: center;
         float: left;
         margin-top: 2%;
         width: 100%;
         }
         
         .changeinfo_button input, #postcodify_search_button, .searchAddress, .checkPw {
            background-color: #646ECB !important;
            box-shadow: none !important;
         }
         
         .changeinfo_button input:hover, #postcodify_search_button:hover, .searchAddress:hover, .checkPw:hover {
            background-color: #444 !important;
         }
         
         input.nickname, input.name, input.email {
            border: none;
         }      
         
         .martlist_wrapper ul {
         padding: 0;
          justify-content: center;
          display: flex;
         }
         
         .martlist_wrapper li {
            border-top: 0;
            float: left;
         list-style: none;
         position: relative;
         width: 30%;
         padding-left: 0;
         margin-left: 0.5em;
         }
         
         .martlist_wrapper a {
            padding: 0;
         }
         
         .martlist_wrapper a:hover {
            color: #646ECB;
         }
         
         .martinfo img {
            width: 100%;
         filter: brightness(80%);
         float: left;
         }
         
         .marttag {
             float: left;
             width: 100%;
             background-color: #fafafb;
         }
         
         .marttitle {
             padding: 0.5em;
         }
         
         .marttitle span {
            font-size: smaller;
         }
         
         #martname {
             font-weight: bolder;
            font-size: inherit;
         }
         
         .martdelivery {
            position: absolute;
            left: 3% !important;
            bottom: 33%;
            padding: 1% 5%;
            color: white;
            font-size: 0.65rem;
            font-weigth: bold;
            border-radius: 500px;
            background-color: #9f29ff;
         }
         
         .table-wrapper {
            width: 100%;
         }
         
         .sub_page th, .table-wrapper th {
            padding-top: 0.75em;
            text-align: center;
            font-weight: 700;
         }
         
         .sub_page tr, .table-wrapper tr {
              text-align: center;
         background-color: #f4f4f5;
         }
         
         .sub_page td {
             vertical-align: middle;
             border-right: 1px solid #e6e6e6;
             border-left: 1px solid #e6e6e6;
         }
         
         .sub_page table {
            margin-top: 5%;
         }
         
         .sub_page td, .table-wrapper td {
            background-color: white !important;
         }
         
         .purchasecontent {
            font-size: 0.9em;
            display: block;
         }
         
         .col-12-xsmall {
            width: 100px;
            margin: auto;
         }
         
         .col-12-xsmall input {
             display: inline;
             height: 2em;
             line-height: 0;
             padding: 0.8em;
         }
         
         .orderbutton {
            text-align: center;
         }
         
         .myboard_table {
            margin: auto;
            margin-top: 5%;
         }
         
         .myboard_table thead .sub_page thead {
            border-top: solid 2px #e6e6e6;
            border-bottom: solid 2px #e6e6e6;
         }
         
         #myboard_table_title_content {
            text-align: left;
         }
         
         ul.pagination > li {
            border-top: none;
         }
         
         .pagination {
            margin: 2em 0 2em 0;
            float: left;
            text-align: center;
            width: 100%;
         }
         
         .pagination a:hover {
            color: #646ECB;
         }
         
         .item {
            width: 100%;
            height: 100%;
            float: left;
         }
         
         .align-center {
            float: left;
         }
      
      /* 찜한 매장보기 slide 관련 css */
      .section input[id*="slide"] {
         display:none;
      }
      
      .section .slidewrap {
         max-width: 800px;
         margin:0 auto;
         overflow:hidden;
      }
      
      .section .slidelist {
         white-space:nowrap;
         font-size:0;
      }
      
      .section .slidelist > li {
         display:inline-block;
         vertical-align:middle;
         width:49%;
         margin-right:1%;
         transition:all .5s;
      }
      
      .section .slidelist > li > a {
         display: block;
         position: relative;
      }
      
      .section .slidelist > li > a img {
         width: 100%;
      }
      
      .section .slidelist label {
         position:absolute;
         z-index: 10;
         top: 58%;
         transform:translateY(-50%);
         padding:34px;
      }
      
      .section .slidelist .left {
         left:410px;
         background:url('${pageContext.request.contextPath}/images/left.png') center center / 100% no-repeat;
      }
      
      .section .slidelist .right {
         right:410px;
         background:url('${pageContext.request.contextPath}/images/right.png') center center / 100% no-repeat;
      }
      
      .section [id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
      .section [id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
      .section [id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-400%);}
      
      .section .slide-control [class*="control"] {display:none;}
      .section [id="slide01"]:checked ~ .slidewrap .control01 {display:block;}
      .section [id="slide02"]:checked ~ .slidewrap .control02 {display:block;}
      .section [id="slide03"]:checked ~ .slidewrap .control03 {display:block;}
      </style>      
   </head>
   <body class="is-preload" style="padding: 0 25%;">
   <c:set var="getuserInfo" value="${getuserInfo}"/>
   <!-- 로그인 세션 --> <!-- <script>if("${param.flag}" == "false"){alert("아이디 또는 비밀번호를 다시 확인해주세요");}</script> -->
   <c:if test="${session_email eq null}">
            <script>
                alert("로그인 후 이용하세요.");
                location.replace("${pageContext.request.contextPath}/user/UserLogin.me");
            </script>
   </c:if>
   <!-- Header -->
   <header>
         <jsp:include page="/app/fix/header_ownerlogin.jsp"/>
   </header>
         
         <!-- 마이페이지 관련 내용 -->
      <hr style="border:none">
      <hr style="border:none">
         <article class="leftMenu">
            <div style="width: 20%;">
               <h4>마이페이지</h4>
            </div>
            <div style="width: 100%;">
               <ul class="lnb_menu">
                  <li>
                     <input class="sub_button1" type="button" value="회원정보수정">
                  </li>
                  <li>
                     <input class="sub_button2" type="button" value="찜한마트목록">
                  </li>
                  <li>
                     <input class="sub_button4" type="button" value="구매내역">
                  </li>
                  <li>
                     <input class="sub_button5" type="button" value="작성글관리">
                  </li>
               </ul>
            </div>
         </article>
         
         <section class="sub_contents">
         <!-- 마이페이지 첫화면 회원정보 -->
            <div class="sub_button1">
                  <div class="sub_page">
                     <div class="info_box">
                        <h1 style="padding-bottom:0;">나의 정보</h1>
                        <p>고객님께서 가입하신 온새일 회원 정보입니다.<br>
                           	수정하실 정보가 있다면, 형식에 맞춰 작성 부탁드립니다.</p>
                     </div>
                     
                     <form method="post" action="${pageContext.request.contextPath}/user/UserInfoChangeOk.me" id="userInfoChangeOkForm">
                     <div>
                        <div class="info_inner">
                           <fieldset>
                              <div class="info_name">
                                 <p>닉네임</p>
                              </div>
                              <div id="info_content">
                                 <p>
                                    <input type="text" name="user_nickname" id="user_nickname" style="border: none;" value="${getuserInfo.getUser_nickname()}" readonly>
                                 </p>
                              </div>
                           </fieldset>
                        </div>
                        <div class="info_inner">
                           <fieldset>
                              <div class="info_name">
                                 <p>이름</p>
                              </div>
                              <div id="info_content">
                                 <p>
                                    <input type="text" name="user_name" id="user_name" style="border: none;" value="${getuserInfo.getUser_name()}" readonly>
                                 </p>
                              </div>
                           </fieldset>
                        </div>
                        <div class="info_inner">
                           <fieldset>
                              <div class="info_name">
                                 <p>이메일</p>
                              </div>
                              <div id="info_content">
                                 <p>
                                    <input type="text" name="user_email" id="user_email" style="border: none;" value="<%=session.getAttribute("session_email")%>" readonly>
                                 </p>
                              </div>
                           </fieldset>
                        </div>
                        <div class="info_inner">
                           <fieldset>
                              <div class="info_name">
                                 <p>비밀번호</p>
                              </div>
                              <div id="info_content">
                                 <p style="width:100%; display:flex;">
                                    <input type="password" name="user_pw_original" id="user_pw_original" style="float: left; width: 50%;" placeholder="현재 비밀번호">
                                    <input type="button" class="checkPw" style="float:left; color:white !important;" value="확인" onclick="checkPw()">
                                 </p>
                                 <p>
                                    <span id="pwCheck_text" style="font-size:0.7em; float: left; text-align: left;"></span>
                                 </p>
                              </div>
                           </fieldset>
                        </div>
                        <div class="info_inner">
                           <fieldset>
                              <div class="info_name">
                                 <p>새비밀번호</p>
                              </div>
                              <div id="info_content">
                                 <p>
                                    <input type="password" name="user_pw" id="user_pw" placeholder="새 비밀번호">
                                    <span id="pwCheck_new_text" style="font-size:0.7em; float: left; text-align: left;"></span>
                                 </p>
                              </div>
                           </fieldset>
                        </div>
                        <div class="info_inner">
                           <fieldset>
                              <div class="info_name">
                                 <p>새비밀번호(확인)</p>
                              </div>
                              <div id="info_content">
                                 <p>
                                    <input type="password" name="password_re" id="password_re" placeholder="비밀번호 확인">
                                    <span id="pwCheck_re_text" style="font-size:0.7em; float: left; text-align: left;"></span>
                                 </p>
                              </div>
                           </fieldset>
                        </div>
                        <div class="info_inner">
                           <fieldset>
                        <div class="info_name">
                           <p>휴대폰 번호</p>
                        </div>
                        <div id="info_content">
                           <p style="width:100%; display:flex; line-height: 3em;">
                              <input class="phone" type="text" id="user_tel1" name="user_tel1" placeholder="010">
                               &nbsp;-&nbsp;<input class="phone" type="text" id="user_tel2" name="user_tel2" placeholder="1234">
                               &nbsp;-&nbsp;<input class="phone" type="text" id="user_tel3" name="user_tel3" placeholder="1234">
                           </p style="width:100%; display:flex; line-height: 3em;">
                           <p>
                               <span id="pwCheck_text" style="color:blue; font-size:0.7em; float: left; text-align: left;">인증 완료</span>
                           </p>
                        </div>
                        <br>
                     </fieldset>
                        </div>
                        <div class="info_inner" style="margin-bottom:0;">
                           <fieldset>
                              <div class="info_name">
                           <label for="find_address" style="margin:0;">주소</label>
                        </div>
                        <div id="info_content" style="display:flex;">
                           <p style="width:100%;">
                              <input type="text" name="user_postcode" id="user_postcode" style="float:left; width:50%;" readonly>
                              <input type="button" class="searchAddress" class="button primary" onclick="searchAddress('user')"
                                    style="float:left; margin-right:20%; color:white !important;" value="검색">
                           </p>
                        </div>
                           </fieldset>
                  </div>
                  <div class="info_inner">
                           <fieldset>
                        <div class="address" style="display:none; margin-left: 35%; width: 50%;">
                           <div style="display:block; margin-bottom: 5%; text-align: left;">
                              <span style="background:#f6f6f6; color:#888">
                        		도로명
                              </span>
                              <span id='user_address' name="user_address"></span>
                              <input type="hidden" name="user_address" id="input_user_address">
                           </div>
                           <div style="display:block">
                              <input type='text' id='user_detailAddress' name="user_detailAddress" placeholder='상세 주소'>
                           </div>
                        </div>
                           </fieldset>
                  </div>
                     </div>
                  </div>
                  <div class="changeinfo_button">
                     <input type="button" style="color: white !important; /* margin-right: 1%; */" value="정보 수정하기" onclick="formSubmit_changeInfo()">
                     <!-- <input type="button" style="color: white !important;" value="회원 탈퇴"> -->
                  </div>
                     </form>
            </div>
            
            
            
            <!-- 사용자가 찜한 마트목록 리스트 -->   
            <div class="sub_button2" style="display:none">
               <div class="info_box">
                  <h1 style="padding-bottom:0;">내가 찜한 마트</h1>
                  <p>내 주변의 다양한 마트정보를 한눈에 모아보고<br>
                     	필요한 매장을 선택하여 편안하게 사용해보세요.</p>
               </div>
               
         <div class="martlist_wrapper">
                  <ul style="padding: 0;">
                     <li style="margin-left:0;">
                        <a href="">
                        <div class="martinfo">
                           <img src="${pageContext.request.contextPath}/images/mart1.jpg">
                           <div class="marttag">
                              <div class="martdelivery">
                                 <span>배달가능</span>
                              </div>
                              <div class="marttitle">
                                    <span id="martname">오색할인마트</span><br>
                                    <span>경기 오산시 오산동 854-6</span>
                              </div>
                           </div>
                        </div>
                        </a>
                     </li>
                     <li>
                        <a href="">
                        <div class="martinfo">
                           <img src="${pageContext.request.contextPath}/images/mart2.jpg">
                           <div class="marttag">
                              <div class="martdelivery">
                                 <span>배달가능</span>
                              </div>
                              <div class="marttitle">
                                    <span id="martname">우리할인마트</span><br>
                                    <span>경기 오산시 원동 560-3</span>
                              </div>
                           </div>
                        </div>
                        </a>
                     </li>
                     <li>
                        <a href="">
                        <div class="martinfo">
                           <img src="${pageContext.request.contextPath}/images/mart3.jpg">
                           <div class="marttag">
                              <div class="martdelivery">
                                 <span>재난지원금</span>
                              </div>
                              <div class="marttitle">
                                    <span id="martname">석수할인마트</span><br>
                                    <span>경기 안양시 만안구 석수동 374-7</span>
                              </div>
                           </div>
                        </div>
                        </a>
                     </li>
                  </ul>
            </div>
         </div>
         
         <!-- class .sub_button2 안에 포함했었으나, 현재 배너사용X 태그 밖으로 빼냄  -->
         <!-- slide 관련 내용 -->
         <%-- <div class="section" style="display:none; float: right;">
            <input type="radio" name="slide" id="slide01" checked>
            <input type="radio" name="slide" id="slide02">
            <input type="radio" name="slide" id="slide03">
            <div class="slidewrap">
               <ul class="slidelist">
                  <li>
                     <a>
                        <img src="${pageContext.request.contextPath}/images/mart1.jpg">
                     </a>
                  </li>
                  <li>
                     <a>
                        <img src="${pageContext.request.contextPath}/images/mart1.jpg">
                     </a>
                  </li>
                  <li>
                     <a>
                        <img src="${pageContext.request.contextPath}/images/mart2.jpg">
                     </a>
                  </li>
                  <li>
                     <a>
                        <img src="${pageContext.request.contextPath}/images/mart2.jpg">
                     </a>
                  </li>
                  <li>
                     <a>
                        <img src="${pageContext.request.contextPath}/images/mart3.jpg">
                     </a>
                  </li>
                  <li>
                     <a>
                        <img src="${pageContext.request.contextPath}/images/mart3.jpg">
                     </a>
                  </li>
                  <div class="slide-control">
                     <div class="control01">
                        <label for="slide03" class="left"></label>
                        <label for="slide02" class="right"></label>
                     </div>
                     <div class="control02">
                        <label for="slide01" class="left"></label>
                        <label for="slide03" class="right"></label>
                     </div>
                     <div class="control03">
                        <label for="slide02" class="left"></label>
                        <label for="slide01" class="right"></label>
                     </div>
                  </div>
               </ul>
            </div>
         </div> --%>
         
            
            
            <!-- 사용자가 구매한 상품 리스트 -->
            <div class="sub_button4" style="display:none">
               <div class="sub_page">
                  <table>
                     <thead>
                        <tr>
                           <th style="width:16%;">이미지</th>
                           <th style="width:34%;">상품명</th>
                           <th style="width:18%;">주문날짜</th>
                           <th style="width:18%;">주문번호</th>
                           <th style="width:14%;">금액</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td style="border-left:none; text-align:center;">
                                 <div>
                                    <img src="${pageContext.request.contextPath}/images/test.jpg" class="item">
                                 </div>
                           </td>
                           <td>
                                 <div class="purchasecontent">키친델리 꿀간장고구마&닭강정</div>
                                 <div class="purchasecontent"><strong>[수량 : 2개]</strong></div>
                           </td>
                           <td><div class="purchasecontent">2021.09.25</div></td>
                           <td><div class="purchasecontent">210925000042</div></td>
                           <td style="border-right:none;"><div class="purchasecontent">20,000원</div></td>
                        </tr>
                        <tr>
                           <td style="border-left:none; text-align:center;">
                                 <div>
                                    <img src="${pageContext.request.contextPath}/images/test1.png" class="item">
                                 </div>
                           </td>
                           <td>
                                 <div class="purchasecontent">홈플러스시그니처 멘보샤 320G</div>
                                 <div class="purchasecontent"><strong>[수량 : 1개]</strong></div>
                           </td>
                           <td><div class="purchasecontent">2021.09.25</div></td>
                           <td><div class="purchasecontent">210925000042</div></td>
                           <td style="border-right:none;"><div class="purchasecontent">6,930원</div></td>
                        </tr>
                        <tr>
                           <td style="border-left:none; text-align:center;">
                                 <div>
                                    <img src="${pageContext.request.contextPath}/images/test2.jpg" class="item">
                                 </div>
                           </td>
                           <td>
                                 <div class="purchasecontent">약산 게르마늄생수 1.8L 5박스</strong></div>
                                 <div class="purchasecontent"><strong>[수량 : 1개]</strong></div>
                           </td>
                           <td><div class="purchasecontent">2021.09.25</div></td>
                           <td><div class="purchasecontent">210925000042</div></td>
                           <td style="border-right:none;"><div class="purchasecontent">100,000원</div></td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <!-- 페이지 넘기는 부분 -->
                  <div class="myboard_page">
                  <ul class="pagination" style="text-align:center;">
                        <li><span class="button small disabled" style="box-shadow: none;">&lt;</span></li>
                        <li><a href="#" class="page active">1</a></li>
                        <li><a href="#" class="page">2</a></li>
                        <li><a href="#" class="page">3</a></li>
                        <li><span>…</span></li>
                        <li><a href="#" class="page">8</a></li>
                        <li><a href="#" class="page">9</a></li>
                        <li><a href="#" class="page">10</a></li>
                        <li><a href="#" class="button small" style="box-shadow: none;">&gt;</a></li>
                  </ul>
               </div>
            </div>
            
            
            
            <!-- 사용자가 작성한 게시물 리스트 -->
            <div class="sub_button5" style="display:none">
            <!-- 게시판 -->
               <div class="myboard_table">
                        <section class="main">
                           <div class="table-wrapper">
                              <div class="myboard_list" style="display:flex; justify-content:space-between;">
                                 <span style="font-size:smaller">글 개수 : 개</span>
                              </div>
                              <table>
                                 <caption style="text-align:left; margin-bottom:3%;">
                                 </caption>
                                 <thead>
                                    <tr id="trAlignCenter">
                                       <th style="width: 8%;">번호</th>
                                       <th style="width: 30%;">제목</th>
                                       <th style="width: 12%;">작성자</th>
                                       <th style="width: 12%;">날짜</th>
                                       <th style="width: 8%;">조회수</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>1</td>
                                       <td id="myboard_table_title_content">석수할인마트 토마토 같이 공구하실분</td>
                                       <td>지우맘</td>
                                       <td>2021.09.27</td>
                                       <td>642</td>
                                    </tr>
                                    <tr>
                                       <td>2</td>
                                       <td id="myboard_table_title_content">잠실동 감자 싸게 파는데 아시나요?</td>
                                       <td>체리체리</td>
                                       <td>2021.09.25</td>
                                       <td>75</td>
                                    </tr>
                                    <tr>
                                       <td>3</td>
                                       <td id="myboard_table_title_content">시중 라면 42종 나트륨 순위</td>
                                       <td>복통통이</td>
                                       <td>2021.09.24</td>
                                       <td>341</td>
                                    </tr>
                                    <tr>
                                       <td>4</td>
                                       <td id="myboard_table_title_content">덜 숙성된 귤 더 달달하게 맛있게 먹는법</td>
                                       <td>메탈크러쉬</td>
                                       <td>2021.09.20</td>
                                       <td>241</td>
                                    </tr>
                                    <tr>
                                       <td>5</td>
                                       <td id="myboard_table_title_content">설레임 먹을 때 손시림 방지 꿀 팁</td>
                                       <td>마트홀릭</td>
                                       <td>2021.09.19</td>
                                       <td>312</td>
                                    </tr>
                                    <tr>
                                       <td>6</td>
                                       <td id="myboard_table_title_content">유통기한 지났다고 다 버리지 마세요</td>
                                       <td>용이마마</td>
                                       <td>2021.09.17</td>
                                       <td>186</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                        </section>
                     </div>
      
         <!-- 페이지 넘기는 부분 -->
               <div class="myboard_page">
               <ul class="pagination" style="text-align:center;">
                     <li><span class="button small disabled" style="box-shadow: none;">&lt;</span></li>
                     <li><a href="#" class="page active">1</a></li>
                     <li><a href="#" class="page">2</a></li>
                     <li><a href="#" class="page">3</a></li>
                     <li><span>…</span></li>
                     <li><a href="#" class="page">8</a></li>
                     <li><a href="#" class="page">9</a></li>
                     <li><a href="#" class="page">10</a></li>
                     <li><a href="#" class="button small" style="box-shadow: none;">&gt;</a></li>
               </ul>
            </div>
         </div>
      </section>   

<!-- Footer -->
   <hr style="border:none">
   <hr>
      <footer class="wrapper align-center" style="width: 100%">
         <div>
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

      <!-- Scripts -->
         <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
         <script src='//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js'></script>
         <script>var contextPath = "${pageContext.request.contextPath}";</script>
   </body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

         //이전에 변경된 태그를 담기 위함
         /* var $prev = null;
         
         //해당 태그에 모두 click 이벤트 설정
         $("ul.lnb_menu input").on("click", function(){
            //클릭한 버튼의 class 값 가져오기
            var type = $("this").attr("class");
            
            //이전에 변경된 태그 숨기기
            if($prev != null){$prev.hide();}

            //현재 태그 담기
            $prev = $("div." + type);
            
            //현재 태그 보이기
            $prev.show();
         }); */
         
       //#################################################################################
       //페이지 전환 (임시로 사용)
         $("input.sub_button1").on("click", function(){
            $("section.sub_contents div").hide();
            $("div.sub_button1").show();
            $("div.sub_button1 *").show();
         })
         $("input.sub_button2").on("click", function(){
            $("section.sub_contents div").hide();
            $("div.sub_button2").show();
            $("div.sub_button2 *").show();
         })
         $("input.sub_button4").on("click", function(){
            $("section.sub_contents div").hide();
            $("div.sub_button4").show();
            $("div.sub_button4 *").show();
         })
         $("input.sub_button5").on("click", function(){
            $("section.sub_contents div").hide();
            $("div.sub_button5").show();
            $("div.sub_button5 *").show();
         })
      //#################################################################################
         
       
         
      //#################################################################################
      //마이페이지 열람시 접속한 회원 정보 불러오기
		var user_email = "{getuserInfo.getUser_email()}";
		var email = "${email}";
		 
		function getuserInfo() { 
			$.ajax({
				url : contextPath+"/user/UserGetInfoOk.me",
				type : "get",
				data : {"user_email":user_email},
				dataType : "json",
				success : showList
			});
		}
      //#################################################################################
      
      
      
      //#################################################################################
      //유효성 검사
      function formSubmit_changeInfo(){
            
         //정보수정 전에 현재 비밀번호를 입력하지 않은 경우
         if(!$('input#user_pw_original').val()){
            alert("현재 비밀번호를 입력해주세요");
            $('input#user_pw_original').focus();
            return;
         }
         
         //현재 비밀번호 입력 후 아무런 정보기입도 없이 정보수정을 누를 경우
         if(!$('input#user_pw').val() && !$('input#password_re').val() && !$('input#user_tel1').val() && !$('input#user_postcode').val()){
            alert("수정하실 정보를 입력해주세요");
            return;
         }
         
         //새비밀번호 입력없이, 새비밀번호 확인만 한 경우
         if(!$('input#user_pw').val() && $('input#password_re').val()){
            alert("새비밀번호를 입력해주세요");
            $('input#user_pw').focus();
            return;
         }
         
         //새비밀번호 입력후, 새비밀번호 확인을 안한 경우
         if($('input#user_pw').val() && !$('input#password_re').val()){
            alert("새비밀번호 확인을 진행해주세요");
            $('input#password_re').focus();
            return;
         }
         
         //확인 사항들의 readonly가 false일 경우
		 if($("input#user_pw_original").prop("readonly") == false || $('input#user_pw').prop("readonly") == false || $('input#password_re').prop("readonly") == false){
        	 alert("누락된 확인을 진행해주세요");
        	 return;
         }
         
         //정보수정 완료 submit
         	$('#userInfoChangeOkForm').submit();
         }
       //###############################################################################
       
       
       
       //#################################################################################
        //현재 비밀번호 중복검사
        $('input#user_pw_original').keyup(function(){
        	$("#pwCheck_text").text("");
        });
        
        function checkPw(){
           if(!$('input#user_pw_original').val()){
               alert("현재 비밀번호를 입력해주세요");
               $("#pwCheck_text").text("");
               $('input#user_pw_original').focus();
               return;
            }
			
           var email = $('input#user_email').val();
           var pw = $('input#user_pw_original').val();
           
           $.ajax({
              url: contextPath+"/user/UserCheckPwOk.me",
              type:"post",
              data: {"email": email , "pw" : pw},
              dataType : "json",
              success:function(result){
                 if(result.status == "ok"){
                    //DOM
                    $("#pwCheck_text").text("비밀번호 일치");
                    $("#pwCheck_text").css("color", "blue");
                    $("input#user_pw_original").prop("readonly", true);
                 }else{
                    //DOM
                    $("#pwCheck_text").text("비밀번호 블일치");
                    $("#pwCheck_text").css("color", "red");
                 }
              },
              error:function(request,status,error){
                 console.log("오류");
              }
           })
        }
      //#################################################################################
       
      
      
       //#################################################################################
       //새 비밀번호 형식이 틀린 경우
       $('input#user_pw').on("click", function(){
           $('input#user_pw').prop("readonly", false);
       });
       
       $('input#user_pw').keyup(function(){
          $('#pwCheck_new_text').text("");
          $('#pwCheck_new_text').css("color", "red");
         
          $('input#password_re').prop("readonly", false);
          $("#pwCheck_re_text").text("");
         
         if($('input#user_pw').val()){
            var pwTag = $('input#user_pw');
            var pw = pwTag.val();
            
            //비밀번호 정규식
            //8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
            var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
            var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
            
            if(!reg.test(pw)){
               $("#pwCheck_new_text").text("비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.");
               pwTag.focus();
               return;
            }
            
            //같은 문자를 4번 이상 사용할 수 없다.
            if(/(\w)\1\1\1/.test(pw)){
               $("#pwCheck_new_text").text("같은 문자를 4번 이상 사용하실 수 없습니다.");
               pwTag.focus();
               return;
            }
            
            //비밀번호에 한글이 있다.
            if(hangleCheck.test(pw)){
               $("#pwCheck_new_text").text("비밀번호에 한글을 사용할 수 없습니다.");
               pwTag.focus();
               return;
            }
            
            //비밀번호에 공백을 포함할 수 없다.
            if(pw.search(/\s/) != -1){
               $("#pwCheck_new_text").text("비밀번호에 공백 없이 입력해주세요.");
               pwTag.focus();
               return;
            }else{
               $("#pwCheck_new_text").text("사용 가능한 비밀번호 입니다.");
               $("#pwCheck_new_text").css("color", "blue");
               $('input#user_pw').prop("readonly", true);
            }
      }
         });
       
      //새비밀번호 확인 입력후 창에서 벗어나면 checkPw_re() 실행
       $('input#password_re').on("click", function(){
           $('input#password_re').prop("readonly", false);
       });
      
       $('input#password_re').keyup(function(){
          $("#pwCheck_re_text").text("");
          
          //중복 검사
          if($(this).val() == $('input#user_pw').val()){
             $("#pwCheck_re_text").text("새비밀번호 일치");
             $("#pwCheck_re_text").css("color", "blue");
             $(this).prop("readonly", true);
          }else{
             $("#pwCheck_re_text").text("새비밀번호 블일치");
             $("#pwCheck_re_text").css("color", "red");
          }
       });
      //#################################################################################
       
      
       
      //#################################################################################
      //주소
         function searchAddress(type){
              new daum.Postcode({
                  oncomplete: function(data) {
                      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                  $(".address").show();
                      // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                      var addr = ''; // 주소 변수
                      var extraAddr = ''; // 참고항목 변수
   
                      //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                      // 사용자의 선택에 상관없이 도로명 주소만 가져온다.
                      addr = data.roadAddress;
   
                      // 우편번호와 주소 정보를 해당 필드에 넣는다.
                      document.getElementById(type + '_postcode').value = data.zonecode;
                      document.getElementById(type + "_address").innerHTML = addr;
                      // 커서를 상세주소 필드로 이동한다.
                      document.getElementById(type + "_detailAddress").focus();
                  }
              }).open();
         }
      //#################################################################################
</script>
</html>
