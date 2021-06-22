<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/cart.css">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="cart row">
    
        <div class="cart-bag col-lg-8"><%--장바구니 --%>
        	<div class="cart-bag-title">
        	<h1>장바구니</h1>
        	<button type="button" class="btn btn-primary">장바구니 비우기</button>
        	</div><%--cart-bag-title end --%>
        	<div class="cart-bag-list"></div>
        	
        </div><%--cart__bag end --%>
        
        
        
        <div class="cart-checkout col-lg-4"><%--주문 내역 --%>
        	<div class="cart-checkout-title">
        		<h4>주문내역</h4>
        	</div>
        	<br>
        	<div class="cart-line">
        	</div>
        	<div class="cart-checkout-totalsum">
        		<span class="cart-checkout-title">총 주문금액</span>
        		<span class="cart-checkout-sum">money</span>
        	</div>
        	<br>
        	<div class="cart-checkout-btn-wrap">
        	<button type="button" class="btn btn-primary">
        	<span>결제하기</span>
        	<img width="30" height="30" alt="left" src="/furniture/img/profile/aw.png">
        	</button>
        	</div>
        	
        
        
        </div><%--cart__checkout end --%>
        
    </div><%--cart end --%>
</div>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/cart.js"></script>


</body>
</html>