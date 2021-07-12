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
<form id="orderForm">
	<div class="memberList container">
		<div class="memberList row">
			<div class="col-lg-12">
				<div role="tabpanel">
					<input type="hidden" id="pg" value="${pg }">
					<input type="hidden" name="pg" value="1">
		
				  <!-- Nav tabs -->
				  <ul class="nav nav-tabs" role="tablist">
				    <li role="presentation" class="active" onclick="newOrder()"><a href="#newOrder" aria-controls="newOrder" role="tab" data-toggle="tab">신규주문</a></li>
				    <li role="presentation"><a href="#delivery" aria-controls="delivery" role="tab" data-toggle="tab" id="deliveryReady">배송준비중</a></li>
				    <li role="presentation" onclick="duringDeliver()"><a href="#duringDeliver" aria-controls="duringDeliver" role="tab" data-toggle="tab">배송중</a></li>
				    <li role="presentation" onclick="deliverComplete()"><a href="#deliverComplete" aria-controls="deliverComplete" role="tab" data-toggle="tab">배송완료</a></li>
				    <li role="presentation" onclick="purchaseConfirmed()"><a href="#purchaseConfirmed" aria-controls="orderCancle" role="tab" data-toggle="tab">구매확정</a></li>
				    <li role="presentation" onclick="orderCancle()"><a href="#orderCancle" aria-controls="orderCancle" role="tab" data-toggle="tab">취소처리</a></li>
				  </ul><br>
				  
				  <!-- Tab panes -->
				  <div class="tab-content">
					<button type="button" id="deliveryReadyBtn">배송준비 처리</button>
					<button type="button" id="paymentConfirmBtn">입금확인 처리</button>
					<!-- Single button -->
					<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					    기타주문 처리<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu" id="dropdown">
					    <li><a href="#" onclick="deliveryReadyBtn()">배송준비로 되돌리기</a></li>
					    <li><a href="#" onclick="paymentConfirmBtn()">결제완료로 되돌리기</a></li>
					    <li><a href="#" onclick="deliveryBtn()">배송중으로 되돌리기</a></li>
					    <li><a href="#" onclick="delayBtn()">발송 지연처리</a></li>
					  </ul>
					</div>
					<button type="button" id="cancelSales">판매취소</button>
					
					<!-- 신규주문 -->
				    <div role="tabpanel" class="tab-pane active" id="newOrder">
						<!-- search start -->
						<div class="search">
							<input type="search" name="keyword" id="keyword" value="${keyword }">
							<input type="button" value="검색" id="orderSearchBtn">
						</div>
				    	<br>
						<table class="table" id="newOrderTable">
						  <tr>
						    <th><input type='checkbox' id="check_all"/></th>
						     <th>주문정보</th>
		                     <th>주문번호</th>
		                     <th>주문자</th>
		                     <th>주문상품</th>
		                     <th></th>
		                     <th>옵션</th>
		                     <th>수량</th>
		                     <th>결제금액</th>
		                     <th>운송장번호</th>
		                     <th>배송정보</th>
		                     <th>상태</th>
						  </tr>
						</table>
						<input type="hidden" id="orderControlPg" value="${orderControlPg }">
						<input type="hidden" name="orderControlPg" value="1">
						<div id="orderControlPagingDiv" style="float: left; width: 1000px; text-align: center"></div>
				    </div>
				    
				    <!-- 배송준비중 -->
				    <div role="tabpanel" class="tab-pane" id="delivery">
						<!-- search start -->
						<div class="search">
							<input type="search" name="keyword2" id="keyword2" value="${keyword2 }">
							<input type="button" value="검색" id="orderSearchBtn2">
						</div>
				    	<br>
						<table class="table" id="deliveryTable">
						  <tr>
						    <th><input type='checkbox' id="check_all2"/></th>
						     <th>주문정보</th>
		                     <th>주문번호</th>
		                     <th>주문자</th>
		                     <th>주문상품</th>
		                     <th></th>
		                     <th>옵션</th>
		                     <th>수량</th>
		                     <th>결제금액</th>
		                     <th>운송장번호</th>
		                     <th>배송정보</th>
		                     <th>상태</th>
						  </tr>
						</table>
						<input type="hidden" id="deliveryPg" value="${deliveryPg }">
						<input type="hidden" name="deliveryPg" value="1">
						<div id="deliveryPagingDiv" style="float: left; width: 1000px; text-align: center"></div>
				    </div>
				    
				    <!-- 배송중 -->
				    <div role="tabpanel" class="tab-pane" id="duringDeliver">
				    	<button type="button" id="deliveryCompleteBtn">배송완료 처리</button>
						<!-- search start -->
						<div class="search">
							<input type="search" name="keyword3" id="keyword3" value="${keyword3 }">
							<input type="button" value="검색" id="orderSearchBtn3">
						</div>
				    	<br>
						<table class="table" id="duringDeliverTable">
						  <tr>
						    <th><input type='checkbox' id="check_all3"/></th>
						     <th>주문정보</th>
		                     <th>주문번호</th>
		                     <th>주문자</th>
		                     <th>주문상품</th>
		                     <th></th>
		                     <th>옵션</th>
		                     <th>수량</th>
		                     <th>결제금액</th>
		                     <th>운송장번호</th>
		                     <th>배송정보</th>
		                     <th>상태</th>
						  </tr>
						</table>
						<input type="hidden" id="duringDeliverPg" value="${duringDeliverPg }">
						<input type="hidden" name="duringDeliverPg" value="1">
						<div id="duringDeliverPagingDiv" style="float: left; width: 1000px; text-align: center"></div>
				    </div>
				    
				    <!-- 배송완료 -->
				    <div role="tabpanel" class="tab-pane" id="deliverComplete">
				    	<button type="button" id="purchaseConfirmedBtn">구매확정</button>
						<!-- search start -->
						<div class="search">
							<input type="search" name="keyword4" id="keyword4" value="${keyword4 }">
							<input type="button" value="검색" id="orderSearchBtn4">
						</div>
				    	<br>
						<table class="table" id="deliverCompleteTable">
						  <tr>
						    <th><input type='checkbox' id="check_all4"/></th>
						     <th>주문정보</th>
		                     <th>주문번호</th>
		                     <th>주문자</th>
		                     <th>주문상품</th>
		                     <th></th>
		                     <th>옵션</th>
		                     <th>수량</th>
		                     <th>결제금액</th>
		                     <th>운송장번호</th>
		                     <th>배송정보</th>
		                     <th>상태</th>
						  </tr>
						</table>
						<input type="hidden" id="deliverCompletePg" value="${deliverCompletePg }">
						<input type="hidden" name="deliverCompletePg" value="1">
						<div id="deliverCompletePagingDiv" style="float: left; width: 1000px; text-align: center"></div>
				    </div>
				    
				    <!-- 구매확정 -->
				    <div role="tabpanel" class="tab-pane" id="purchaseConfirmed">
						<!-- search start -->
						<div class="search">
							<input type="search" name="keyword5" id="keyword5" value="${keyword5 }">
							<input type="button" value="검색" id="orderSearchBtn5">
						</div>
				    	<br>
						<table class="table" id="purchaseConfirmedTable">
						  <tr>
						    <th><input type='checkbox' id="check_all5"/></th>
						     <th>주문정보</th>
		                     <th>주문번호</th>
		                     <th>주문자</th>
		                     <th>주문상품</th>
		                     <th></th>
		                     <th>옵션</th>
		                     <th>수량</th>
		                     <th>결제금액</th>
		                     <th>운송장번호</th>
		                     <th>배송정보</th>
		                     <th>상태</th>
						  </tr>
						</table>
						<input type="hidden" id="purchaseConfirmedPg" value="${purchaseConfirmedPg }">
						<input type="hidden" name="purchaseConfirmedPg" value="1">
						<div id="purchaseConfirmedPagingDiv" style="float: left; width: 1000px; text-align: center"></div>
				    </div>
				    
				    <!-- 취소처리 -->
				    <div role="tabpanel" class="tab-pane" id="orderCancle">
						<!-- search start -->
						<div class="search">
							<input type="search" name="keyword6" id="keyword6" value="${keyword6 }">
							<input type="button" value="검색" id="orderSearchBtn6">
						</div>
				    	<br>
						<table class="table" id="orderCancleTable">
						  <tr>
						    <th><input type='checkbox' id="check_all6"/></th>
						     <th>주문정보</th>
		                     <th>주문번호</th>
		                     <th>주문자</th>
		                     <th>주문상품</th>
		                     <th></th>
		                     <th>옵션</th>
		                     <th>수량</th>
		                     <th>결제금액</th>
		                     <th>운송장번호</th>
		                     <th>배송정보</th>
		                     <th>상태</th>
						  </tr>
						</table>
						<input type="hidden" id="orderCanclePg" value="${orderCanclePg }">
						<input type="hidden" name="orderCanclePg" value="1">
						<div id="orderCanclePagingDiv" style="float: left; width: 1000px; text-align: center"></div>
				    </div>
				    

				  </div>
				</div>
			</div>
		</div>
	</div>
						
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="/furniture/admin/js/orderControl.js"></script>
<script src="/furniture/admin/js/orderControlPG.js"></script>
<script src="/furniture/admin/js/deliveryReadyPG.js"></script>
<script src="/furniture/admin/js/duringDeliverPG.js"></script>
<script src="/furniture/admin/js/deliverCompletePG.js"></script>
<script src="/furniture/admin/js/purchaseConfirmedPG.js"></script>
<script type="text/javascript">
/*조회 버튼 클릭 시*/
$(document).on('click', '#checkBtn',function(){
	swal("배송조회", "배송완료된 내역입니다.");
});

</script>
</body>
</html>