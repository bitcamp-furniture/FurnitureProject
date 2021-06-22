<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3>리뷰 등록</h3>
<%-- 1. 단순 submit ~~ action --%>
<form name="reviewWriteForm" id="reviewWriteForm" method="post" enctype="multipart/form-data" action="imageboardWrite">
	<table border="1" cellpadding="5" cellspacing="0"  width="500px">
	
	
	<!-- 상품명, 별점 , 내용 , 이미지 1개 또는 여러개 -->
	
	
	
	
	
		<tr>
		 	<td align="center" width="100">상품코드</td>
		 	<td>
		  		<input type="text" name="imageId" id="imageId" size="50" value="img_">
		 	</td>
		</tr>
		<tr>
		 	<td align="center">상품명</td>
		 	<td>
		  		<input type="text" name="imageName" id="imageName" size="50" placeholder="상품명 입력">
		 	</td>
		</tr>
 		<tr>	
		 	<td align="center">단가</td>
		 	<td>
		  		<input type="text" name="imagePrice" id="imagePrice" size="50" placeholder="단가 입력">
		 	</td>
		</tr>
		 <tr>
		 	<td align="center">개수</td>
		 	<td>
		  		<input type="text" name="imageQty" id="imageQty" size="50" placeholder="개수 입력">
		 	</td>
		</tr>
		<tr>
		 	<td align="center">내용</td>
		 	<td>
		  		<textarea cols="50" rows="15" name="imageContent" id="imageContent" placeholder="내용입력"></textarea>
		  		
		  		
		 	</td>
			</tr>
			
			
			
			
			
			
<!-- 리뷰 이미지 1개할지, 여러개 할지 다시 상의 해보아야함   -->			






		<tr>
			<td colspan="2">
			<input type="file" name="img" size="50">
		</tr>
		
		<tr>
			<td colspan="2">
			<input type="file" name="img" size="50">
		</tr>
		<tr>
			<td colspan="2"><!-- 파일여러개  -->
			<input type="file" name="img[]" multiple size="50">
		</tr>

		<tr>
			<td colspan="2" align="center">
				<input type="button" value="상품 후기 등록" id="reviewWriteBtn">
				<input type="reset"  value="다시작성">
			</td>
		</tr>
	</table>
</form>





