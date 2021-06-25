<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style type="text/css">
.listBtn {
   box-shadow:inset 0px 1px 0px 0px #ffffff;
   background-color:#2F3894;
   border-radius:6px;
   border:1px solid #dcdcdc;
   display:inline-block;
   cursor:pointer;
   color:#ffff;
   font-family:Arial;
   font-size:13px;
   font-weight:bold;
   padding:6px 24px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="askViewForm">
		<input type="hidden" name="seq" id="seq" value="${seq }">
		<input type="hidden" name="pg" id="pg" value="${pg }"> 
		<input type="hidden" name="email" id="email" value="${email}">

		<table class="table">
		<!-- <table border="1" width="500" frame="hsides" rules="rows" cellpadding="5" > -->
			<tr>
				<td colspan="4"><h5><span id="subjectSpan"></span></h5></td>
			 </tr>

			<tr>
				<td>주문번호 : <span id="order_numberSpan"></span></td>
				<td>상담구분 : <span id="ask_categorySpan"></span></td>
				<td>작성자 : <span id="nameSpan"></span></td>
				<td>작성일 : <span id="created_atSpan"></span></td>
			</tr>
			
			<tr>
				<td colspan="4" height="300">
					<div style="width: 100; height: 200; overflow: auto;">
					<pre style="white-space: pre-line; word-break: normal;">
					<span id="contentSpan"></span>
					<img id="image1" width="400" height="300" alt="No Image">
					</pre>
					</div>
				</td>
			<tr>
			</tr>
		</table>
	</form>
	<form>
		<table class="table">
				<tr>
				<td colspan="1"><h4>└답변</h4></td>
			</tr>
			
			<tr>
				<td colspan="1" height="150">
					<div style="width: 100; height: 200; overflow: auto;">
					<pre style="white-space: pre-line; word-break: normal;">
					<span id="">안녕하세요 답변해드릴게요 억적후 적적후 예시 저시</span>
				</pre>
					</div>
				</td>
			<tr>
			</tr>
		</table>
	</form>
	<input class="listBtn" type="button" value="목록" onclick="window.open('','_self').close();">
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		$(function(){
			if($('#image1').val == ''){
				$('#image1').display=none;
			}
			$.ajax({
				type : 'post',
				url : '/furniture/profile/getAskView',
				data : 'seq=' + $('#seq').val(),
				dataType : 'json',
				success : function(data){
					//alert(data);
					$('#image1').attr('src', 'storage/' + data.askDTO.image1);
					$('#ask_categorySpan').text(data.askDTO.ask_category);
					$('#subjectSpan').text(data.askDTO.subject);
					$('#seqSpan').text(data.askDTO.seq);
					$('#emailSpan').text(data.askDTO.email);
					$('#contentSpan').text(data.askDTO.content);
					$('#nameSpan').text(data.askDTO.name);
					$('#created_atSpan').text(data.askDTO.created_at);
					$('#order_numberSpan').text(data.askDTO.order_number);

				},
				error : function(err){
					console.log(err);
				}
			});
		});
	</script>
</body>
</html>