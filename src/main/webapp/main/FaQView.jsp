<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">




<style type="text/css">
#wholeDiv {
	margin: 0 auto;
	align-items: center;
	width: 800px;
}

#FaQSubject {
	font-size: 1.2em;
	font-weight: bold;
}

#FaQeCreatedAt {
	float: right;
}
#FaQListBtn{
	border-radius:5px;
	border: 1px solid darkblue; 
	background-color: rgba(0,0,0,0); 
	color: darkblue; 
	padding: 5px;
}
#FaQListBtn:hover{
	color:white;
	background-color: darkblue;
}

</style>


<form id="FaQViewForm">

	<br>
	<div id="wholeDiv">
		<input type="hidden" name="id" value="${FaQDTO.id }"> <input
			type="hidden" name="pg" value="${pg }"> <br> <br>

		<div id="FaQSubject">${FaQDTO.subject }</div>
		<div id="FaQeCreatedAt">${FaQDTO.created_faq }</div>
		<br>
		<hr>
		<div id="FaQContent" width="200"><pre>${FaQDTO.content }</pre></div>
		<br>
		<br>

		<input type="button" value="목록으로" id="FaQListBtn" >
		<br>
	</div>
</form>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$('#FaQListBtn').click(function() {
	location.href='/furniture/main/FaQ'
});
</script>

