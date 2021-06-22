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


<!-- 이름,생일, 주소를 알려주는 제목 -->
<div id="mypageP" class="mypageP">
<h4>개인 정보</h4>

<!-- 수정버튼 -->
<div id="mypagePrivate">
<button class="mypagePrivateModifyOpenBtn" id="mypagePrivateModifyOpenBtn" type="button">수정</button>
<div class="mypagePrivateName" id="mypagePrivateName"><h5>이름</h5></div>
<div class="mypagePrivateBirth" id="mypagePrivateBirth"><h5>생년월일</h5></div>
<div class="mypagePrivateAddress" id="mypagePrivateAddress"><h5>주소지</h5></div>
</div>


<div id="mypagePrivateModify">
<button class="mypagePrivateModifyClosingBtn" id="mypagePrivateModifyClosingBtn" type="button">닫기</button>
<div><input type="text" name="mypagePrivateModifyName" id="mypagePrivateModifyName" style="border:0;"></div>
<div id="mypageNameDiv"></div>
<div><input type="text" name="mypagePrivateModifyBirth" id="mypagePrivateModifyBirth" style="border:0;"></div>
<div id="mypageBirthDiv"></div>
<div><input type="text" name="mypagePrivateModifyAddress" id="mypagePrivateModifyAddress" style="border:0;"></div>
<div id="mypageAddressDiv"></div>
<input type="button" value="저장" id="mypagePrivateModifyBtn">
</div>
</div>

<!-- 구분선 -->
<hr class="profile__divider">

<!-- 핸드폰, 이메일 구분제목-->
<div id="mypageC" class="mypageC">
<h4>연락처</h4>

<!-- 수정버튼 -->
<div id="mypageContact">
<button class="mypageContactModifyOpenBtn" id="mypageContactModifyOpenBtn" type="button">수정</button>
<div class="mypageContactPhone" id="mypageContactPhone"><h5>휴대폰번호</h5></div>
<div class="mypageContactEmail" id="mypageContactEmail"><h5>이메일</h5></div>
</div>

<div id="mypageContactModify">
<button class="mypageContactModifyClosingBtn" id="mypageContactModifyClosingBtn" type="button">닫기</button>
<div><input type="text" name="mypageContactModifyPhone" id="mypageContactModifyPhone" style="border:0;"></div>
<div id="mypagePhoneDiv"></div>
<div><input type="text" name="mypageContactModifyEmail" id="mypageContactModifyEmail" style="border:0;"></div>
<div id="mypageEmailDiv"></div>
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
<div class="mypagePasswordPassword" id="mypagePasswordPassword"><h5>비밀번호</h5></div>
</div>

<div id="mypagePasswordModify">
<button class="mypagePasswordClosingBtn" id="mypagePasswordClosingBtn" type="button">닫기</button>
<div><input type="text" name="mypagePasswordModifyPassword" id="mypagePasswordModifyPassword" style="border:0;"></div>
<div id="mypagePasswordDiv"></div>
<input type="button" value="저장" id="mypagePasswordModifyBtn">
</div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/mypage.js"></script>

</body>
</html>