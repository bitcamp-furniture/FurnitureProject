<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="css/order.css" type="text/css">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form id="orderDeleteForm" method="post" action="imageboardDelete">
<input type="hidden" id="pg" value="">
<table class="order table" id="orderListTable">
	<tr>
		<th>주문번호</th>
		<th>이미지</th>
		<th>상품정보</th>
		<th>수량</th>
		<th>구매금액</th>
		<th>배송상태</th>
		<th>*</th>
	</tr>
	<tr>
		<td>1</td>
		<td><img alt="imgimg" src="img/tiger.png" width="75" height="75"> </td>
		<td>구ggi 체얼</td>
		<td>1</td>
		<td>1000</td>
		<td>배송중</td>
		<td>후에 버튼 추가</td>
	</tr>
</table>

	
<div style="width: 700px; text-align: center;" id="imageboardPagingDiv"></div>

</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/order.js"></script>

</body>
</html>