<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="hidden" id="askPg" value="${askPg }">
<table class="ask table" id="askListTable" border="1" bordercolor="#2F3894" cellpadding="5" cellspacing="0" frame="hsides" rules="rows">
	<tr>
		<th style="text-align: center;">글 번호</th>
		<th style="text-align: center;">상담구분</th>
		<th style="text-align: center;">상담제목</th>
		<th style="text-align: center;">작성일</th>
		<th style="text-align: center;">답변유무</th>
	</tr>
</table>
<div id="askPagingDiv" style="float: left; width: 750px; text-align: center;"></div>


<script type="text/javascript" 	src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/adminQNA.js"></script>

</body>
</html>