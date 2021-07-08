<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/cart.css">
    <meta charset="UTF-8">
    <title>주문/결제 orderPayment</title>
</head>
<body>


<h1>주문/결제 orderPayment</h1>
<br>
<br>
<br>
<form name="orderPayment" id="orderPayment" method="post" enctype="multipart/form-data" >

    <div class="orderPayment_table">

        <table class="cartTable" width="50%" style="margin: 50px;">
            <tr>
                <td style="text-align: center; vertical-align:middle;">상품</td>
                <td style="text-align: center; vertical-align:middle;">이름</td>
                <td style="text-align: center; vertical-align:middle;">색깔</td>
                <td style="text-align: center; vertical-align:middle;">상품가격</td>
                <td style="text-align: center; vertical-align:middle;">수량</td>
                <td style="text-align: center; vertical-align:middle;">주문금액</td>
                
            </tr>

            <c:forEach var="cart" items="${cartList}">
            
                <c:set var= "total" value="${total + cart.product_price}"/>
                <c:set var="product_amounts" value="${cart.product_price * cart.product_count}"/>
                <c:set var="total_product_qty" value="${total_product_qty + cart.product_count}"/>
               
                <tr>
                
                    <td class="tg-0pky">
                       <%--  <input type="hidden" id="product_id" name="product_id" value="${cart.product_id}">
	                    <input type="hidden" id="product_img_thumb" name="product_img_thumb" value="${cart.product_img_thumb}">
	                    <input type="hidden" id="product_name" name="product_name" value="${cart.product_name}">
	                    <input type="hidden" id="product_color" name="product_color" value="${cart.product_option_color}">
	                    <input type="hidden" id="product_price" name="product_price" value="${cart.product_price}">
	                    <input type="hidden" id="product_qty" name="product_qty" value="${cart.product_count}">
          	            <input type="hidden" id="product_amounts" name="product_amounts" value="${product_amounts}"> --%>
	                    
                    
                        <img alt="imgimg" src="/furniture/storage/${cart.product_img_thumb}" width="150" height="150">
                    </td>
                    <td class="tg-0pky" name="product_name" width="100" style="text-align: center; vertical-align:middle;" >
                    ${cart.product_name}</td>
                    <td class="tg-0pky" name="product_color" width="100"style="text-align: center; vertical-align:middle;" >
                    ${cart.product_option_color}</td>
                    <td class="tg-0pky" name="product_price" width="100" style="text-align: center; vertical-align:middle;">
                        <fmt:formatNumber value="${cart.product_price}" pattern="#,###.##"/></td>
                    <td class="tg-0pky" name="product_qty" width="100" style="text-align: center; vertical-align:middle;">
                    ${cart.product_count}</td> 
                    <td class="tg-0pky" name="product_amounts" width="100" style="text-align: center; vertical-align:middle;">
                        <fmt:formatNumber value="${product_amounts}" pattern="#,###.##"/></td>    
                </tr>
               
       
                
            </c:forEach>
            

            
             <tr>
                <td style="text-align: center; vertical-align:middle;" colspan="3">합계</td>
                <td style="text-align: center; vertical-align:middle;" >
					<fmt:formatNumber value="${product_amounts + cart.product_count}" pattern="#,###.##"/></td>
                <td style="text-align: center; vertical-align:middle;" >
					${total_product_qty}</td>
                <td style="text-align: center; vertical-align:middle;">
                    <fmt:formatNumber value="${total}" pattern="#,###.##"/></td>
            </tr>
        </table>

                <input type="hidden" id="total" value="${total}">



    </div>   <!--   orderPayment_table_cart-->


    <!-- 구분선 -->
    <hr class="profile__divider">


    <table class="deliveryTable" width="50%" style="margin: 50px;">
        <tr>
            <td style="text-align: center; vertical-align:middle;">배송지정보</td>
			<td></td>            
        </tr>
        
       <tr>
            <td style="text-align: center; vertical-align:middle;">주소</td>
            <td>
             <p class="addTitle" style="font-size:13.5px"></p>
		       <input class="postcode" id="zipcode" name="zipcode" placeholder="" formcontrolname="zipcode" autocorrect="off" autocapitalize="none" type="text" value="${memberDTO.zipcode}"style="width:270px" readonly>
		       <input type="button" class="addSearchBtn" value="배송지수정" onclick="execDaumPostcode()" style="text-align:center;"><br><br>
		       <input class="address" id="addr1" name="addr1" placeholder="" formcontrolname="addr1" autocorrect="off" autocapitalize="none" type="text" value="${memberDTO.addr1}" readonly><br><br>
		       <input class="detailAddress" id="addr2" name="addr2" value="${memberDTO.addr2}" placeholder="상세주소 입력" formcontrolname="addr2" autocorrect="off" autocapitalize="none" type="text"><br><br>
		       <input class="extraAddress" id="extraAddress" formcontrolname="addr2" autocorrect="off" autocapitalize="none" type="hidden">
		       <div id="addressDiv"></div><br>
            </td>
        </tr> 
       
        
        
        
        <tr>
            <td style="text-align: center; vertical-align:middle;">수령인</td>
            <td style="text-align: center; vertical-align:middle;">
                <input type="text" value="${memberDTO.name}"><td>
        </tr>
        <tr>
            <td style="text-align: center; vertical-align:middle;">연락처</td>
            <td style="text-align: center; vertical-align:middle;">
                <input type="text" value="${memberDTO.phone}"><td>                
        </tr>
        

    </table>


    <!-- 구분선 -->
    <hr class="profile__divider">

	<table class="pointTable" width="50%" style="margin: 50px;">
        <tr>
            <td style="text-align: center; vertical-align:middle;">포인트 </td>
			<td></td>            
        </tr>
        
       <tr>
            <td style="text-align: center; vertical-align:middle;">보유포인트</td>
            <td style="text-align: center; vertical-align:middle;" id="memberpointval"> ${memberDTO.point}</td>
        </tr> 
	<input type="hidden" id="memberpoint" value="${memberDTO.point}">
        <tr>
            <td style="text-align: center; vertical-align:middle;">
            <input type="text" id="pointText" value="0">
            
            </td>
            <td style="text-align: center; vertical-align:middle;">
            <input type="button" id="pointCheckbox" value="전액 사용">
                <td>
        </tr>
    </table>


 <!-- 구분선 -->
    <hr class="profile__divider">

	<table class="payTable" width="50%" style="margin: 50px;">
        <tr>
            <td style="text-align: center; vertical-align:middle;">결제방법 </td>
			<td></td>            
        </tr>
        
       <tr>
            <td style="text-align: center; vertical-align:middle;">카카오페이</td>
            <td style="text-align: center; vertical-align:middle;">
            <input type="radio" id="payRadio" checked="checked" value="카카오페이"></td>
        </tr> 

        
    </table>

 <!-- 구분선 -->
    <hr class="profile__divider">

	<table class="pointsavingTable" width="50%" style="margin: 50px;">
        <tr>
            <td style="text-align: center; vertical-align:middle;">포인트 적립 </td>
			<td></td>            
        </tr>
        
       <tr>
            <td style="text-align: center; vertical-align:middle;">예상포인트</td>
            <td style="text-align: center; vertical-align:middle;">
            <c:set var= "savingPoint" value="${total * 0.01}"/>
			<fmt:formatNumber value="${savingPoint}" pattern="#,###.##"/>
            </td>
        </tr> 
    </table>

 <!-- 구분선 -->
    <hr class="profile__divider">

	<table class="paymentDetailsTable" width="50%" style="margin: 50px;">
        <tr>
            <td style="text-align: center; vertical-align:middle;">결제 상세 </td>
        	<td style="text-align: center; vertical-align:middle;">
			<span id="totalPay"><fmt:formatNumber value="${total}" pattern="#,###.##"/> </span></td>			          
        </tr>
        
       <tr>
            <td style="text-align: center; vertical-align:middle;"></td>
            <td style="text-align: center; vertical-align:middle;"></td>
        </tr> 
    </table>





    <div>
        <input type="button" value="결제하기" id="paymentBtn">
    </div>


</form>



<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript" src="js/orderPayment.js"></script>
</body>
</html>