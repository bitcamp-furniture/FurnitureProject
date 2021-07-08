<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IKEZKE</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/memberList.css">
	  
<style>
.memberList th {
	text-align: center;
}
#memberListBody {
	background-color: #eee; 
}
.col-lg-12 {
	background-color: white; 
}
</style>
</head>
<body id="memberListBody">
	<form class="memberList" id="memberList" name="memberList" method="get" action="/furniture/admin/memberListDelete">
					<!-- search start -->
					<div class="search">
						<input type="search" name="keyword" id="keyword" value="${keyword }">
						<input type="button" value="검색" id="memberSearchBtn">
						<input type="button" value="회원 삭제" id="memberDeleteBtn">
					</div><br>
					<table class="memberList table" id="memberListTable" border="1" bordercolor="gray" cellpadding="5" cellspacing="0" frame="hsides" rules="rows">
				        <tr>
				            <th><input type="checkbox" id="check_all" name="check_all" value="check_all" autocomplete="off"></th>
				            <th>이름</th>
				            <th>계정</th>
				            <th>가입일</th>
				            <th>적립금</th>
				            <th>누적 구매금액</th>
				            <!-- <th>메모</th> -->
				        </tr>
					</table><br><br>
					<input type="hidden" id="pg" value="${pg }">
					<input type="hidden" name="pg" value="1">
					<!-- paging start -->
					<div id="memberListPagingDiv" style="text-align:center;"></div>	
	</form>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" 	src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="js/memberList.js"></script>
</body>
</html>