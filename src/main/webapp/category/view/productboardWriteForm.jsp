<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 파일을 업로드 하려면 enctype="multipart/form-data"가 꼭 있어야하는데 이는 post 방식으로만 처리한다  -->
<!--
	jsp주석을 걸면 내부적으로 실행이 안되고  html주석을 걸면  살행이 된다
	1. 단순 서브밋(action을 타고가라)
	2. 
  -->
  <%-- 1. 단순 submit ~action --%>
<%-- <form id="imageboardWriteForm" enctype="multipart/form-data" action="imageboardWrite"> --%>
<form id="productboardWriteForm">
	<table border="1" cellspacing="0" cellpadding="3">
		<tr>
			<td width="100" align="center">제품명</td>
			<td>
				<input type="text" size="30" name="product_name" id="product_name" placeholder="제품명 입력">
			<!-- <input type="text" size="30" name="id" id="id" value="img_"> -->
			</td>
		</tr>
		<tr>
			<td width="100" align="center">가격</td>
			<td>
				<input type="text" size="30" name="product_price" id="product_price" placeholder="가격 입력">
			</td>
		</tr>
		<tr>
			<td width="100" align="center">카테고리1</td>
			<td>
				<input type="text" size="30" name="product_category1" id="product_category1" placeholder="카테고리1">
				
			</td>
		</tr>
		<tr>
			<td width="100" align="center">카테고리2</td>
			<td>
				<input type="text" size="30" name="product_category2" id="product_category2" placeholder="카테고리2">
			</td>
		</tr>
		<!-- 썸네일 이미지 -->
		<tr>
			<td colspan="2">
				<input type="file" name="thumbImg" size="50">			
			</td>
		</tr>	
		<!-- 상세페이지  이미지 -->
		<tr>
			<td colspan="2">
				<input type="file" name="detailImg[]"  id="product_img_detail"multiple size="50">			
			</td>
		</tr>	
		<tr>
			<td colspan="2" align="center">		
			<input type="button" value="이미지 등록" id="productboardWriteBtn"> 
			<input type="reset" value="다시작성 ">	
			</td>				
		</tr>
	</table>
</form>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../js/categoryboard.js"></script>
