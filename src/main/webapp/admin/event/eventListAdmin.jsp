<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 이벤트 목록을 판매자가 관리. 이벤트 삭제 등 -->
<style type="text/css">
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
</style>


<br>
<br>
	<div align="center">
	    <input type="hidden" id="pg" value="${pg }" >
	    <input type="button" value="이벤트 등록" id="eventWriteBtn" >
    </div>
	<div >
		<table class="event_list" align="center" cellpadding="8" border="0"></table>
	</div>
    <br>
    <div align="center" id="eventListPagingDiv"></div>
    <br>
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>   
<script type="text/javascript">
$(document).ready(function() {
	getEventList($('#pg').val());
});

function getEventList(pg) {
	$.ajax({
		type: 'post',
		url: '/furniture/admin/event/getEventList',
		data: { 'pg' : pg }, 
		dataType: 'json',
		success: function(data) {
			console.log(data);
			
		    $('.event_list tr:gt(0)').remove();
		    $('.event_list tr:eq(0)').remove();
			
			$.each(data.eventList, function(index,items){
				$('<tr/>').append($('<td/>',{
					rowspan: 4,
					style: 'width: 400px;'
				})
				.append($('<a/>', {
					href: '/furniture/main/eventView?id='+items.id+'&eventPg='+pg
				}).append($('<img/>', {
					style: 'width: 400px; height: 200px',
					src: "/furniture/storage/event/"+items.event_img_banner
				})))).appendTo($('.event_list'));
				
				$('<tr/>').append($('<td/>',{
					style: 'color: darkblue; width: 400px; height: 80px; font-size: 1.3em; font-weight: bold; margin: 5px;',
					text: items.event_subject
				}))
				.appendTo($('.event_list'));
	
				$('<tr/>').append($('<td/>',{
					text: items.event_content
				}))
				.appendTo($('.event_list'));
				
				$('<tr/>').append($('<td/>',{
					style: 'color: darkblue;',
					text: items.event_startDate + " ~ " + items.event_endDate,
				}).append($('<input/>', {
					type: 'button', 
					value: '삭제',
					class: 'deleteEventBtn',
					style: 'float:right; display:inline-block;'
				})).append($('<input/>', {
					type: 'hidden',
					value: items.id,
					class: 'eventId',
					id: 'event_' + items.id 
				})))
				.appendTo($('.event_list'));
				
				$('<tr/>').append($('<td/>', {
					colspan: 2,
					text: '',
					style: 'border-bottom: 1px solid lightgray;'
				})).appendTo($('.event_list'));
				
				
			});//each 

				$('.deleteEventBtn').click(function() {
					var id = $(this).siblings(".eventId").val();
					//alert($(this).siblings(".eventId").val());
					
					$.ajax({
						type: 'post',
						url: '/furniture/admin/event/deleteEvent',
						data: { 'id' :  id },
						success: function() {
							alert('삭제되었습니다^^');
							getEventList(1);
						},
						error: function(err) {
					    	console.log(err);
						}

					});
				});
			
            $('#eventListPagingDiv').html(data.eventListPaging.pagingHTML);
		},
		error: function(err) {
	    	console.log(err);
		}
	});

} // getEventList


$('#eventWriteBtn').click(function() {
	location.href="/furniture/admin/event/eventWriteForm"
});


</script>	


