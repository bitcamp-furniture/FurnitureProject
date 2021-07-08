<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/askAnswer.css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="askAnswerForm">
		<input type="hidden" name="seq" id="seq" value=${param.seq}>

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
					<br>
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
					<textarea cols="50" rows="15" name="answer" id="answer" placeholder="답변 입력"></textarea>
				</pre>
					</div>
				</td>
			<tr>
				<td>
					<input id="answerBtn" type="button" value="답변 작성" >
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src = "./js/askAnswer.js"></script>

</body>
</html>