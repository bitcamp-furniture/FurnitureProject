<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="memberList container">
	<div class="memberList row">
		<div class="col-lg-12">
			<div role="tabpanel">
	
			  <!-- Nav tabs -->
			  <ul class="nav nav-tabs" role="tablist">
			    <li role="presentation" class="active"><a href="#newOrder" aria-controls="newOrder" role="tab" data-toggle="tab">신규주문</a></li>
			    <li role="presentation"><a href="#deposit" aria-controls="deposit" role="tab" data-toggle="tab">입금대기</a></li>
			    <li role="presentation"><a href="#payment" aria-controls="payment" role="tab" data-toggle="tab">결제완료</a></li>
			    <li role="presentation"><a href="#delivery" aria-controls="delivery" role="tab" data-toggle="tab">배송준비중</a></li>
			    <li role="presentation"><a href="#duringDeliver" aria-controls="duringDeliver" role="tab" data-toggle="tab">배송중</a></li>
			    <li role="presentation"><a href="#deliverComplete" aria-controls="deliverComplete" role="tab" data-toggle="tab">배송완료</a></li>
			  </ul><br>
			  
			  <!-- Tab panes -->
			  <div class="tab-content">
			    <div role="tabpanel" class="tab-pane active" id="home">
			    	<!-- 신규주문 -->
				    <button type="button" class="" id="ee">발송처리</button>
					<button type="button" class="">배송준비 처리</button>
					<button type="button" class="">입금확인 처리</button>
					<button type="button" class="">기타주문 처리</button>
					<button type="button" class="">판매취소</button>
					<button type="button" class="">반품처리</button>
					<button type="button" class="">교환처리</button>
					<br><br><br>
					
					<table class="table" id="orderControlTable">
					  <tr>
					    <th><input type='checkbox' id="allCheck"/></th>
					    <th>주문날짜</th>
					    <th>주문번호</th>
					    <th>주문상품</th>
					    <th>옵션</th>
					    <th>수량</th>
					    <th>주문자</th>
					    <th>결제금액</th>
					    <th>상태</th>
					  </tr>
					</table>
			    </div>
			    <div role="tabpanel" class="tab-pane" id="profile">1</div>
			    <div role="tabpanel" class="tab-pane" id="messages">2</div>
			    <div role="tabpanel" class="tab-pane" id="settings">3</div>
			  </div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/orderControl.js"></script>
</body>
</html>