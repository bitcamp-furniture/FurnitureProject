<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/cart.css">


<container class="orderPaymentcon" >

<h1 class="title">주문/결제 orderPayment</h1>

<form name="orderPayment" id="orderPayment" method="post" enctype="multipart/form-data" >

    <div class="orderPayment_table">

        <table class="cartTable" width="50%" >
            <tr>
                <td width="100px" style="text-align: center; vertical-align:middle;"><h4>상품</h4></td>
                <td width="50px" style="text-align: center; vertical-align:middle;"><h4>이름</h4></td>
                <td width="50px" style="text-align: center; vertical-align:middle;"><h4>색깔</h4></td>
                <td width="50px" style="text-align: center; vertical-align:middle;"><h4>상품가격</h4></td>
                <td width="50px" style="text-align: center; vertical-align:middle;"><h4>수량</h4></td>
                <td width="50px" style="text-align: center; vertical-align:middle;"><h4>주문금액</h4></td>
                
            </tr>

            <c:forEach var="cart" items="${cartList}">
            
               
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
	                    
                    
                        <img  src="/furniture/storage/${cart.product_img_thumb}" width="150" height="150">
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
                <c:set var= "total" value="${total + product_amounts}"/>
       
                
            </c:forEach>
            

            
             <tr>
                <td style="text-align: center; vertical-align:middle;" colspan="4"><h4>합계</h4></td>
                
                <td style="text-align: center; vertical-align:middle;" >
					<h4>${total_product_qty}</h4></td>
                <td style="text-align: center; vertical-align:middle;">
                    <h4><fmt:formatNumber value="${total}" pattern="#,###.##"/></h4></td>
            </tr>
        </table>

                <input type="hidden" id="total" value="${total}">



    </div>   <!--   orderPayment_table_cart-->


    <!-- 구분선 -->
    <hr class="profile__divider">


    <table class="deliveryTable" width="50%" >
        <tr>
            <td class="tg-0pky" vertical-align:middle;"><h4>배송지정보</h4></td>
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
            <td class="tg-0pky" style="text-align: center; vertical-align:middle;">수령인</td>
            <td class="tg-0pky"style="text-align: center; vertical-align:middle;">
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

	<table class="pointTable" width="50%" >
        <tr>
            <td width="300px"  vertical-align:middle;"><h4>포인트</h4> </td>
			<td></td>            
        </tr>
        
       <tr>
            <td style="text-align: center; vertical-align:middle;">보유포인트</td>
            <td style="text-align: center; vertical-align:middle;" id="memberpointval"> 
            <fmt:formatNumber value="${memberDTO.point}" pattern="##,##0"/></td>
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

	<table class="payTable" width="50%" >
        <tr >

            <td width="300px" vertical-align:middle;"><h4>결제방법 </h4></td>
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

	<table class="pointsavingTable" width="50%" >
        <tr >
            <td width="300px" vertical-align:middle;"><h4>포인트 적립 </h4></td>
			<td></td>            
        </tr>
        
       <tr>
            <td style="text-align: center; vertical-align:middle;">예상포인트</td>
            <td style="text-align: center; vertical-align:middle;">
            <c:set var= "savingPoint" value="${total * 0.01}"/>
			<fmt:formatNumber value="${savingPoint}" pattern="##,##0"/>
			<input type="hidden" id="savingPoint" value="${savingPoint}">
            </td>
        </tr> 
    </table>

 <!-- 구분선 -->
    <hr class="profile__divider">

	<table class="paymentDetailsTable" width="50%" >
        <tr >
            <td width="300px" style="text-align: center; vertical-align:middle;"><h4>결제 상세 </h4></td>
        	<td style="text-align: center; vertical-align:middle;">
			</td>			          
        </tr>
        
       <tr>
       		<td style="text-align: center; vertical-align:middle;">주문 금액</td>
            <td style="text-align: center; vertical-align:middle;">
				<fmt:formatNumber value="${total}" pattern="#,###.##"/>
			</td>
       </tr>
        <tr>
        	<td style="text-align: center; vertical-align:middle;">포인트 사용</td>
        	
            <td style="text-align: center; vertical-align:middle;">
             <span id="pointUsing" value="0"></span></td>
       </tr>
        <tr>
        	<td style="text-align: center; vertical-align:middle;">결제 금액</td>
        	
            <td style="text-align: center; vertical-align:middle;">
			<span id="totalPay"><fmt:formatNumber value="${total}" pattern="#,###.##"/> </span></td>
       </tr>
            
    </table>





    <div class="paymentBtnDiv">
        <input type="button" value="결제하기" id="paymentBtn" >
    </div>


</form>



<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript" src="js/orderPayment.js"></script>
</container>