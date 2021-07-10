<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/cart.css">


<c:set var= "order_number" value="${orderDetailDTO.order_number}"/>
<c:set var= "member_name" value="${memberDTO.name}"/>

<span id="orderThanks"><h2> <c:out value="${member_name}"/>님 주문해주셔서 감사합니다~! </h2>
<h4> 주문번호 : <c:out value="${order_number}"/></h4>
 
<input type="button" value="마이페이지 " id="orderCheckGo">
</span>


<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/orderPayment.js"></script>
