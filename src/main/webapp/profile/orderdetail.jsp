<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="css/orderdetail.css" type="text/css">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="up table" id="orderDetailTableUp">
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
<br><br>
<h3>주문/결제 상세 정보</h3>
<table class="down table" id="orderDetailTableDown">
  <tr>
    <th class="tg-0pky">
    <h5>주문금액</h5>
    </th>
    <th class="tg-0pky">
    <h5>결제상세</h5>
    </th>
    <th class="tg-0pky" rowspan="5">
    <h3>주문 금액</h3>
    <p>2000원</p>
    </th>
  </tr>
  <tr>
    <td class="tg-0pky">
    30000원
    </td>
    <td class="tg-0pky">
    카드간편결제 00원
    </td>
  </tr>
  <tr>
    <td class="tg-0lax" colspan="2">
    <h3>포인트 혜택</h3>
    </td>
  </tr>
  <tr>
    <td class="tg-0lax"><strong>구매적립</strong></td>
    <td class="tg-0lax"><strong>리뷰적립</strong></td>
  </tr>
  <tr>
    <td class="tg-0pky">기본적립 00원</td>
    <td class="tg-0pky">최대 00원</td>
  </tr>
</table>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/orderdetail.js"></script>

</body>
</html>