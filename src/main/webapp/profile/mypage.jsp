<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- <script src="/js/mypage.js"></script> -->
<head>
<link rel="stylesheet" href="css/mypage.css" type="text/css">

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<input type="hidden" id="id" value="${id}">

<!-- 이름,생일, 주소를 알려주는 제목 -->
<div id="mypageP" class="mypageP">
	<h4>개인 정보</h4>
	
	<!-- 수정버튼 -->
	<div id="mypagePrivate">
	<button class="mypagePrivateModifyOpenBtn" id="mypagePrivateModifyOpenBtn" type="button">수정</button>
	
	<div>
		<div class="mypagePrivateName" id="mypagePrivateName">이름</div>
		<div id="name"></div>
	</div>
	
	<div>
		<div class="mypagePrivateBirth" id="mypagePrivateBirth">생년월일</div>
		<div id="birth"></div>
	</div>
	
	<div>
		<div class="mypagePrivateAddress" id="mypagePrivateAddress">주소</div>
		<div id="address"></div>
	</div>
</div>

<div id="mypagePrivateModify">
	<button class="mypagePrivateModifyClosingBtn" id="mypagePrivateModifyClosingBtn" type="button">닫기</button>
		<div>
			<div class="mypagePrivateName" id="mypagePrivateName">이름</div>
			<input type="text" id="mypagePrivateModifyName">
		</div>
		<div id="mypageNameDiv"></div>
		
		<div>
			<div class="mypagePrivateBirth" id="mypagePrivateModifyBirth" style="float: left;">생년월일</div>
			<input type="text" id="mypagePrivateModifyBir_yy" placeholder="년(4자)" style="float: left;">
	        
	            <div style="float: left; display: block;">
	                <select id="mypagePrivateModifyBir_mm" style="float: left; display: block;">
	                    <option value="00">월</option>
	                    <option value="01">1</option>
	                    <option value="02">2</option>
	                    <option value="03">3</option>
	                    <option value="04">4</option>
	                    <option value="05">5</option>
	                    <option value="06">6</option>
	                    <option value="07">7</option>
	                    <option value="08">8</option>
	                    <option value="09">9</option>                                    
	                    <option value="10">10</option>
	                    <option value="11">11</option>
	                    <option value="12">12</option>
	                </select>
	            </div>
			<input type="text" id="mypagePrivateModifyBir_dd" placeholder="일(2자)">
        </div>   
		<div id="mypageBirthDiv"></div>
		
		<div style="margin-top: 15px">
			<div class="mypagePrivateAddress" id="mypagePrivateAddress">주소</div>
			<input type="text" id="mypagePrivateModifyZipcode" disabled>
			<input type="button" id="addSearchBtn" value="우편번호 찾기" onclick="execDaumPostcode()">
			<input type="text" id="mypagePrivateModifyAddr1" disabled>
			<input type="text" id="mypagePrivateModifyAddr2">
			<input id="extraAddress" autocapitalize="none" type="hidden">
		</div>
		<div id="mypageAddressDiv"></div>
	<input type="button" value="저장" id="mypagePrivateModifyBtn">
	</div>
</div>
<!-- 구분선 -->
<hr class="profile__divider">

<!-- 핸드폰, 이메일 구분제목-->
<div id="mypageC" class="mypageC">
<h4>연락처</h4>

	<div id="mypageContact">
		<!-- 수정버튼 -->
		<button class="mypageContactModifyOpenBtn" id="mypageContactModifyOpenBtn" type="button">수정</button>
		<div>
			<div class="mypageContactPhone" id="mypageContactPhone">휴대폰번호</div>
			<div id="phone"></div>
		</div>
		<div>
			<div class="mypageContactEmail" id="mypageContactEmail">이메일</div>
			<div id="email"></div>
		</div>
	</div>
	
	<div id="mypageContactModify">
		<button class="mypageContactModifyClosingBtn" id="mypageContactModifyClosingBtn" type="button">닫기</button>
		
		<div>
			<div class="mypageContactPhone" id="mypageContactPhone">휴대폰번호</div>
			<input type="text" id="mypageContactModifyPhone">
		</div>
		<div id="mypagePhoneDiv"></div>
		
		<!-- <div>
			<input type="text" name="mypageContactModifyEmail" id="mypageContactModifyEmail" style="border:0;"></div>
		<div id="mypageEmailDiv"></div> -->
		
		<div><input type="button" value="저장" id="mypageContactModifyBtn"></div>
	</div>
</div>
<hr class="profile__divider">

<!-- 비밀번호 구분제목-->
<div id="mypageP" class="mypageP">
<h4>비밀번호</h4>
<!-- 수정버튼 -->
<div id="mypagePassword">
	<button class="mypagePasswordOpenBtn" id="mypagePasswordOpenBtn" type="button">수정</button>
	<div>
		<div class="mypagePasswordPassword" id="mypagePasswordPassword">비밀번호</div>
		<div id="password"></div>
	</div>
</div>

<div id="mypagePasswordModify">
	<button class="mypagePasswordClosingBtn" id="mypagePasswordClosingBtn" type="button">닫기</button>
	<div>
		<div class="mypagePasswordPassword" id="mypagePasswordPassword">비밀번호</div>
		<input type="text" id="mypagePasswordModifyPassword">
	</div>
	<div id="mypagePasswordDiv"></div>
	<input type="button" value="저장" id="mypagePasswordModifyBtn">
	</div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="js/mypage.js"></script>

</body>
</html>