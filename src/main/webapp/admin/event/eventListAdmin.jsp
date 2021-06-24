<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <h1>하이룽s</h1>
    <!-- 이벤트 목록을 판매자가 관리. 이벤트 삭제 등 -->
    <input type="hidden" id="pg" value="${pg }" >
	<div >
		<table class="event_list">
			<tr>
				<th>번호</th>
				<th>이벤트 배너</th>
				<th>이벤트 내용</th>
			</tr>
		</table>
	</div>
	
	
	
<script type="text/javascript">
$(document).ready(function() {
	console.log(pg);
	//getEventList(pg);
});

function getEventList(pg) {
	console.log(pg);
	
	$.ajax({
		type: 'post',
		url: '/furniture/admin/getEventList',
		data: { 'pg' : pg },
		dataType: 'json',
		success: function(data) {
			console.log(data);
		},
		error: function(err) {
	    	console.log(err);
		}
	});

}
</script>	


