<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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

<form name="orderPayment" id="orderPayment" method="post" enctype="multipart/form-data" action="/profile/orderPayment">
    <input type="hidden" id="id" value="${id}">

    <div class="orderPayment_table">


        <table class="cartTable" width="50%" style="margin: 50px;">
            <tr>
                <td style="text-align: center; vertical-align:middle;">상품</td>
                <td style="text-align: center; vertical-align:middle;">이름</td>
                <td style="text-align: center; vertical-align:middle;">색깔</td>
                <td style="text-align: center; vertical-align:middle;">수량</td>
                <td style="text-align: center; vertical-align:middle;">가격</td>
            </tr>

            <c:forEach var="cart" items="${cartList}">
                <tr>
                    <td class="tg-0pky">
                        <img alt="imgimg" src="/furniture/storage/${cart.product_img_thumb}" width="150" height="150">
                    </td>
                    <td class="tg-0pky" width="100"
                        style="text-align: center; vertical-align:middle;">${cart.product_name}</td>
                    <td class="tg-0pky" width="100"
                        style="text-align: center; vertical-align:middle;">${cart.product_option_color}</td>
                    <td class="tg-0pky" width="100"
                        style="text-align: center; vertical-align:middle;">${cart.product_count}</td>
                    <td class="tg-0pky" width="100"
                        style="text-align: center; vertical-align:middle;">${cart.product_price}</td>
                </tr>
            </c:forEach>
        </table>


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
             <p class="addTitle" style="font-size:13.5px">주소</p>
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



    <div>
        <input type="submit" value="결제하기" id="paymentBtn">
        <input type="reset" value="다시작성">
    </div>


</form>


<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript" src="js/orderPayment.js"></script>
</body>
</html>