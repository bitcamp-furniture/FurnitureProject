<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
#reviewWriteForm{
	width: 100%;
}
</style>

<br>
<h2 align="center">리뷰 등록</h2>
<br>
<form class="reviewWriteForm" id="reviewWriteForm">
<input type="hidden" name="product_id" value="${productDTO.id }">
<input type="hidden" name="product_name" value="${productDTO.product_name }">
	<table border="0" cellspacing="0" cellpadding="3" align="center">
		<tr>
			<td>${productDTO.id }</td>
			<td>${productDTO.product_name }</td>
		</tr>
		<tr>
			<td width="100" align="left">평점 선택</td>
			<td><select id="review_stars" name="review_stars">
					<option value="5">★★★★★</option>
					<option value="4">★★★★</option>
					<option value="3">★★★</option>
					<option value="2">★★</option>
					<option value="1">★</option>
			</select>
			</td>
		</tr>
		<tr>
			<td align="center">이벤트 내용</td>
			<td>
				<textarea cols="50" rows="15" name="review_content" id="review_content" placeholder="받으신 상품은 어떠셨나요? 당신의 경험을 공유해 주세요."></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<label for="bannerLabel">&nbsp;후기 이미지&nbsp;&nbsp;</label> 
				<input type="file" size="50" name="review__Image">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
			<div id="reviewFormDiv"></div>
			<input type="button" value="등록" id="reviewWriteBtn"> 
			<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$('#reviewWriteBtn').click(function() {
	if ($('#review_content').val() == '') {
		$('#reviewFormDiv').text('내용을 입력하세요');
		$('#reviewFormDiv').css('color', '#0040FF');
		$('#reviewFormDiv').css('font-size', '8pts');
		$('#reviewFormDiv').css('font-weights', 'normal');
	} else {

		var reviewWriteData = new FormData($('.reviewWriteForm')[0]);
		console.log(reviewWriteData);
		$.ajax({
			type : 'post',
			url : '/furniture/profile/reviewWrite',
			enctype : 'multipart/form-data',
			processData : false,
			contentType : false,
			data : reviewWriteData,
			success : function() {
	        	alert("작성해 주셔서 감사합니다!");
				window.close();
			},
			error : function(err) {
				console.log(err);
			}
		});
	}
});
</script>