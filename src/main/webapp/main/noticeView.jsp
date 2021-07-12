<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">




<style type="text/css">
body {
	font-family: "AppleSDGothicNeoM00", serif;
}

#wholeDiv {
	margin: 0 auto;
	align-items: center;
	width: 800px;
}

#noticeSubject {
	font-size: 1.5em;
	font-weight: bold;
}

#noticeCreatedAt {
	float: right;
}
#noticeListBtn{
	border-radius:5px;
	border: 1px solid darkblue; 
	background-color: rgba(0,0,0,0); 
	color: darkblue; 
	padding: 5px;
}
#noticeListBtn:hover{
	color:white;
	background-color: darkblue;
}
</style>


<form id="noticeViewForm">

	<br>
	<div id="wholeDiv">
		<input type="hidden" name="id" value="${noticeDTO.id }"> <input
			type="hidden" name="pg" value="${pg }"> <br> <br>

		<div id="noticeSubject">${noticeDTO.notice_subject }</div>
		<div id="noticeCreatedAt">${noticeDTO.created_at }</div>
		<br>
		<hr>
		<div id="noticeContent"><pre>${noticeDTO.notice_content }</pre></div>
		<br>
		<br>
		<div align="center">
			<input type="button" value="목록으로" id="noticeListBtn" >
		</div>
		<br>
		<br>
	</div>
</form>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$('#noticeListBtn').click(function() {
	location.href='/furniture/main/notice'
});
</script>

