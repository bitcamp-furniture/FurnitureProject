<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 파일을 업로드 하려면 enctype="multipart/form-data"가 꼭 있어야하는데 이는 post 방식으로만 처리한다  -->
<!--
	jsp주석을 걸면 내부적으로 실행이 안되고  html주석을 걸면  살행이 된다
	1. 단순 서브밋(action을 타고가라)
	2. 
-->
<style type="text/css">
h2{
	 font-weight: normal;
	 font-family: sans-serif;
	 font-size: 30px;
	 
}
#imgSize{
	text-align: center;
	color: #848484;
	font-size: 14px;
}


</style>
  
<%-- 1. 단순 submit ~action --%>
<%-- <form id="imageboardWriteForm" enctype="multipart/form-data" action="imageboardWrite"> --%>
<br>
<h2 align="center">이벤트 등록</h2>
<hr size="5" color="#0101DF" noshade></hr>
<br>
<form id="eventWriteForm">
	<table border="0" cellspacing="0" cellpadding="3" align="center">
		<tr>
			<td width="100" align="center">이벤트 제목</td>
			<td>
				<input type="text" size="30" name="event_subject" id="event_subject" placeholder="이벤트 제목 입력">
				<div id=event_subjectDiv></div>
			<!-- <input type="text" size="30" name="id" id="id" value="img_"> -->
			</td>
		</tr>
		<tr>
			<td width="100" align="center">이벤트 기간</td>
			<td>
				<input type="date" size="30" name="event_startDate" id="event_startDate"> ~
				<input type="date" size="30" name="event_endDate" id="event_endDate">
				<div id="event_endDateDiv"></div>
			</td>
		</tr>
		<%-- 배너 이미지 --%>
		<%-- accept =".gif,.jpg,.png" 파일 확장자를 판매자에서 제한해야할지 말아야할지 --%>
		<tr>
			<td colspan="2">
				<div id="imgSize">-권장 이미지 가로는 400 세로는 200</div>
				<label for="bannerLabel">&nbsp;배너 이미지&nbsp;&nbsp;</label>
				<input type="file" size="30" name="event_img_banner" id="event_img_banner">
					<div id="event_img_bannerDiv"></div>
			</td>
		</tr>
		<%-- 상세 이미지는 2개로 제한해야한다 --%>
		<%-- accept =".gif,.jpg,.png" 파일 확장자를 판매자에서 제한해야할지 말아야할지 --%>
		<tr>
			<td colspan="2">
				<div id="imgSize">&emsp;&emsp;&emsp;&emsp;-권장 이미지 가로는 1080 세로는 1480입니다</div>
				<label for="detailLabel">&nbsp;상세 이미지&nbsp;&nbsp;</label>
				<input type="file" size="30" name="event_img_detail" id="event_img_detail">
				<div id="event_img_detailDiv"></div>
			</td>
			
		</tr>
		<tr>
		 	<td align="center">이벤트 내용</td>
		 	<td>
		  		<textarea cols="50" rows="15" name="imageContent" id="imageContent" placeholder="내용입력"></textarea>
		 		<div id="imageContentDiv"></div>
		 	</td>
		</tr>
		<tr>
			<td colspan="2" align="right">		
			<input type="button" value="등록" id="eventWriteBtn"> 
			<input type="reset" value="수정 ">	
			</td>				
		</tr>
	</table>
</form>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../js/eventWrite.js"></script>
<script>
	//시작 날짜를 현재날짜로 잡았다 
	//유효성 검사에서 현재날짜보다 이전이면 현재 날짜 이후부터 시작해야합니다 라는 alert을 띄우기
	document.getElementById('event_startDate').valueAsDate = new Date();

</script>
