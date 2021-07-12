<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="css/wishlist.css">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="wishlist row">
    	<div class="wishlist-title col-lg-12">
    		<div class="wishlist-title-h1">
    		<h1>위시리스트</h1>
    		</div>
    	</div>
    	<div class="cart-line">
        </div>
    	<div class="wishlist-list col-lg-12">
    		<div class="wishlist-list-container" id="wishlist-list-container">
    			<div class="parent">
    				<a  href=#><img class="wishlist-list-img" src="img/tiger.png"></a>
    				<button class="wishlistDeletebutton" type="button">되냐?</button>
    			</div >
    		</div>
   			<div class="wishlist-list-delete">
   				<button class="wishlist-list-delete-btn">전체삭제</button>
   			</div>
    	</div>

    </div><%--row end --%>
</div><%--container end --%>

 

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="js/wishlist.js"></script>
</body>

</html>