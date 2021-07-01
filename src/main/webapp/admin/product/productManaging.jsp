<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 상품관리:
기능:
-삭제
-등록(링크버튼)
-정렬(카테고리별/가격순/등록순/
-상품상세페이지로 이동(a, 링크)
 -->
<style type="text/css">
 	#wholeDiv{
 		width: 800px;
 	}
</style>

<br><br>
<div id="wholeDiv" >
<table id="productManagingTbl" border="1" cellspacing="0" >
	<thead>
		<tr> <!-- 7개 -->
			<th>상품번호</th>
			<th>상품코드</th>
			<th>상품명</th>
			<th>가격</th>
			<th>색상</th>
			<th>카테고리</th>
			<th>고객후기</th>
		</tr>
	</thead>
	
	
	<c:if test="${productList != null}" >
		<c:forEach var="productDTO" items="${productList }" >
			<tr>
				<td>${productDTO.id }</td>
				<td>${productDTO.product_name }</td>
				<td>${productDTO.product_price }</td>
				<%--<td>${productDTO.color }</td> --%>
				<td>${productDTO.product_category_name }</td>
				<%--<td>${productDTO.ss }</td> --%>
			</tr>
		</c:forEach>
	</c:if>
 
	
</table>
</div>



<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	//$('#productManagingTbl')
</script>
