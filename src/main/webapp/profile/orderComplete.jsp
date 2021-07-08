<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    


<c:set var= "order_number" value="${orderDetailDTO.order_number}"/>
<c:set var= "member_name" value="${memberDTO.name}"/>

<h1> <c:out value="${member_name}"/>님 주문해주셔서 감사합니다~! </h1>
<h4> 주문번호 : <c:out value="${order_number}"/></h4>
