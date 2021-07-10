<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



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

                <input type="hidden" id="product_name" value="${cartList[0].product_name}">
                <input type="hidden" id="cartList_count" value="${fn:length(cartList)-1}">
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
        <input type="button" value="취소하기" id="paymentCancelBtn">
    </div>


</form>

<form name="order_info" method="post" accept-charset="euc-kr">
    <input type="hidden" name="ordr_idxx" value="${ ordr_idxx }">
    <input type="hidden" name="good_name" value="${ good_name }">
    <input type="hidden" name="good_mny" value="${ good_mny }">
    <input type="hidden" name="buyr_name" value="${ buyr_name }">
    <input type="hidden" name="site_cd" value="${ site_cd }">
    <!-- 고정값 -->
    <input type="hidden" name="req_tx" value="pay">
    <input type="hidden" name="pay_method" value="100000000000"/>
    <input type="hidden" name="currency" value="410">
    <input type="hidden" name="kakaopay_direct" value="Y">
    <input type="hidden" name="module_type" value="01"/>
    <!-- 주문정보 검증 관련 정보 : 표준웹 에서 설정하는 정보입니다 -->
    <input type="hidden" name="ordr_chk" value=""/>
    <!-- 추가파라미터(가맹점에서 별도의 값 전달시 param_opt를 사용하여 값 전달) -->
    <input type="hidden" name="param_opt_1" value="">
    <input type="hidden" name="param_opt_2" value="">
    <input type="hidden" name="param_opt_3" value="">
    <!--
    ※필수
    필수 항목 : 표준웹에서 값을 설정하는 부분으로 반드시 포함되어야 합니다
    값을 설정하지 마십시오
    -->
    <input type="hidden" name="res_cd" value=""/>
    <input type="hidden" name="res_msg" value=""/>
    <input type="hidden" name="enc_info" value=""/>
    <input type="hidden" name="enc_data" value=""/>
    <input type="hidden" name="ret_pay_method" value=""/>
    <input type="hidden" name="tran_cd" value=""/>
    <input type="hidden" name="use_pay_method" value=""/>
    <input type="hidden" name="card_pay_method" value=""/>
</form>



<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="js/orderPayment.js"></script>
<<<<<<< HEAD
<script>
    /*****************/ /*m_Completepayment 설명 */ /************************/
    /* 인증완료시 재귀 함수 */
    /* 해당 함수명은 절대 변경하면 안됩니다. */
    /* 해당 함수의 위치는 payplus.js 보다먼저 선언되어야 합니다. */
    /*Web 방식의 경우 리턴 값이 form 으로 넘어옴 */
    /****************************************************************/
    function m_Completepayment(FormOrJson, closeEvent) {
        var frm = document.order_info;
        GetField(frm, FormOrJson);
        // console.log("frm.res_cd.value = " + frm.res_cd.value);
        // console.log("frm.enc_info.value = " + frm.enc_info.value);
        // console.log("frm.enc_data.value = " + frm.enc_data.value);
        // console.log("frm.card_pay_method.value = " + frm.card_pay_method.value);
        // console.log("frm.ordr_idxx.value = " + frm.ordr_idxx.value);

        /********************************************************************/
        /* FormOrJson은 가맹점 임의 활용 금지 */
        /* frm 값에 FormOrJson 값이 설정 됨 frm 값으로 활용 하셔야 됩니다. */
        /********************************************************************/

        if (frm.res_cd.value == "0000") {
        /*
        [가맹점 리턴값 처리 영역]
        인증이 완료되면 frm에 인증값이 들어갑니다. 해당 데이터를 가지고 승인요청을 진행 해주시면 됩니다.
        */

            $.ajax({
                type:'post',
                url:'/furniture/pay/payment',
                data: {'res_cd':frm.res_cd.value,
                       'enc_info': frm.enc_info.value,
                       'enc_data': frm.enc_data.value,
                       'card_pay_method': frm.card_pay_method.value,
                       'ordr_idxx': frm.ordr_idxx.value
                },
                dataType: 'json',
                success:function(data){
                    alert(JSON.stringify(data));
                    // $('input[name=ordr_idxx]').val(data.Response.ordr_idxx);
                    // $('input[name=good_name]').val(data.Response.good_name);
                    // $('input[name=good_mny]').val(data.Response.good_mny);
                    // $('input[name=buyr_name]').val(data.Response.buyr_name);
                    // $('input[name=site_cd]').val(data.Response.site_cd);

                    //jsf__pay();
                    //location.href='/furniture/profile/orderComplete'

                },
                errer:function(err){
                    console.log(err);
                }
            });//ajax


        } else {
            alert("[" + frm.res_cd.value + "] " + frm.res_msg.value);
            closeEvent();
        }
    }

    /* 이 함수를 실행하여 카카오결제창을 호출 합니다*/
    function jsf__pay() {
        try {
            var form = document.order_info;
            KCP_Pay_Execute(form);
        } catch (e) {
            /* IE 에서 결제 정상종료시 throw로 스크립트 종료 */
        }
    }
</script>
<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script>


</body>

</html>

</container>

