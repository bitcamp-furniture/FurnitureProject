<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<style type="text/css">
body {
	font-family: "AppleSDGothicNeoM00", serif;
}

a{
	text-decoration: none;
}
#subjectA:link {  text-decoration: none; }
#subjectA:visited {  text-decoration: none; }
#subjectA:hover { color:darkblue; text-decoration: underline; cursor: pointer; }
#subjectA:active {  text-decoration: none; }
#list a:hover{  text-decoration: underline; }
noticeListTable th{
	align-items: center;
}
#paging {
	margin: 5px;
	padding: 5px 11px;
	color: darkblue;
	cursor: pointer;
}

#paging:hover {
	background-color: darkblue;
	color: white;
	border-radius: 5px;
}

#currentPaging {
	margin: 5px;
	padding: 5px 11px;
	background-color: darkblue;
	color: white;
	border-radius: 5px;
	cursor: pointer;
}
#noticeListTable th{
  text-align: center;
}
</style>



<div align="center">
	<br>
	<h3>공지사항</h3>
	<br>
	<input type="hidden" value="${pg }" id="pg" >
	<div align="center">
		<table id="noticeListTable" border="1" width="800" cellpadding="5" frame="hsides" rules="rows" >
			<tr>
				<th width="50" >글번호</th>
				<th width="300" >제목</th>
				<th width="100" >등록일</th>
			</tr>
		</table>
	</div>		
	<br>
		<div id="noticePagingDiv"></div>
		    
	<br>
		<c:if test="${sessionScope.verify != null }">
			<!-- <input style="float: left; margin-left: 200px;" type="button" value="공지 등록" id="noticeWriteBtn" > -->
		    <!-- <a  href="/furniture/main/noticeWriteForm">공지 등록</a> -->
		</c:if>
	<br>
	<br>
    
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		type: 'post',
		url: '/furniture/main/getNoticeList', 
		data: 'pg='+$('#pg').val(),
		dataType: 'json',
		success: function(data) {
			console.log(data);
			
			$.each(data.noticeList, function(index, items) {
				$('<tr/>').append($('<td/>', {
					align: 'center',
					text: items.id
				})).append($('<td/>', {
					}).append($('<a/>', {
						text: items.notice_subject,
						id: 'subjectA',
						href: '/furniture/main/noticeView?id='+items.id,
						class: 'subject_'+items.id  
				}))).append($('<td/>', {
					align: 'center',
					text: items.created_at
				})).appendTo($('#noticeListTable'));
				
				
				
			}); // each
			
			// 페이징 처리 boardPagingDiv
			$('#noticePagingDiv').html(data.noticeListPaging.pagingHTML);
			
		},
		error: function(err) {
			console.log(err);
		}
	});
}); 

</script>