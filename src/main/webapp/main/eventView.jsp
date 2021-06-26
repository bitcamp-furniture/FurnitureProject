<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- id랑 pg를 받아와서

제목
이미지(디테일만)    
삭제버튼 -->
<style type="text/css">
	#wholeDiv{
		margin: 0 auto;
		width: 700px;
	}
</style>


<form id="eventViewForm" >

<div id="wholeDiv">
	<input type="hidden" name="id" value="${id }">
	<input type="hidden" name="pg" value="${eventPg }">
	
	
	<div id="eventSubject" >${eventDTO.event_subject }</div>
	
	<div id="eventDetailImg">
		<img src="/furniture/storage/event/${eventDTO.event_img_detail }">
	</div>
	
	<div id="eventContent">${eventDTO.event_content }</div>
	
	<div id="eventTime">${eventDTO.event_startDate } ~ ${eventDTO.event_endDate }</div>
	
	<div id="eventProductList"></div> 
	<!-- 여기서 ajax로 리스트 불러와서 붙이기 -->
	
	<div id="eventProductPaging"></div>

</div>
</form>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

</script>






<%-- 

<script type="text/javascript">
$(function() {
	$.ajax({
		type: 'post',
		url: '/spring/imageboard/getImageboardView',
		data: 'seq=${seq}',
		dataType: 'json',
		success: function(data) {
			console.log(data);
			var tot = data.imageboardDTO.imagePrice*data.imageboardDTO.imageQty
			
			$('#image1').attr('src', '../storage/'+data.imageboardDTO.image1);
			$('#imageNameSpan').text(data.imageboardDTO.imageName);
			$('#imagePriceSpan').text(data.imageboardDTO.imagePrice.toLocaleString());
			$('#imageQtySpan').text(data.imageboardDTO.imageQty);
			$('#totalSpan').text(tot.toLocaleString());
			$('#imageContentSpan').text(data.imageboardDTO.imageContent);
		},
		error: function(err) {
			console.log(err);
		}
	});
});
</script>

	<tr>
		<td colspan="3"><h2>${boardDTO.subject }</h2></td>
	</tr>
	<tr>
		<td>글번호: ${boardDTO.seq }</td>
		<td>작성자: ${boardDTO.id }</td>
		<td>조회수: ${boardDTO.hit }</td>
	</tr>
	<tr style="padding-bottom: 5px; border-bottom-style: none;" > <!-- pre태그 대신 td에 스타일을 줘도 먹힌다@! -->
		<td id="cont" colspan="3" height="250" valign="top"><pre>${boardDTO.content }</pre></td>
	</tr>
</table>
</div>
<br>
<div align="center">
		<input type="button" value="목록" onclick="location.href='boardList.do?pg=${param.pg }'"> 
		<c:if test="${boardDTO.id == sessionScope.memId}">
			<input type="button" value="수정" onclick="mode(1)"> 
			<input type="button" value="삭제" onclick="mode(2)"> 
		</c:if>
		<input type="button" value="답글" onclick="mode(3)"> 

</div>	 --%>

<!-- <script type="text/javascript">
function mode(num){
	if(num==1){ // 수정
		document.boardViewForm.method="post";
		document.boardViewForm.action="boardModifyForm.do";
		document.boardViewForm.submit();
		
	}else if(num==2){ // 삭제
		var really = confirm("정말로 삭제합니까?");
		if(really){
			document.boardViewForm.method="post";
			document.boardViewForm.action="boardDelete.do";
			document.boardViewForm.submit();
		}
	} else if(num==3){ // 답글
		document.boardViewForm.method="post";
		document.boardViewForm.action="boardReplyForm.do";
		document.boardViewForm.submit();
	}
}

</script>
 -->


