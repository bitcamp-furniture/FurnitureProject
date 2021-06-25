<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <input type="hidden" id="pg" value="${pg }" >
	<div >
		<table class="event_list" align="center" cellpadding="8"></table>
	</div>
    <br>
    <div align="center" id="eventListPagingDiv"></div>
    <br>
    <br>
    <br>
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>   
<script type="text/javascript">
$(document).ready(function() {
	getEventList($('#pg').val());
});

function getEventList(pg) {
	$.ajax({
		type: 'post',
		url: '/furniture/main/getEventList',
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
					href: '#'
				}).append($('<img/>', {
					src: items.event_img_banner
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
					text: items.event_startDate + " ~ " + items.event_endDate
				}))
				.appendTo($('.event_list'));
				
				$('<tr/>').append($('<td/>', {
					colspan: 2,
					text: '',
					style: 'border-bottom: 1px solid lightgray;'
				})).appendTo($('.event_list'));
				
			});//each 

			
            $('#eventListPagingDiv').html(data.eventListPaging.pagingHTML);

		},
		error: function(err) {
	    	console.log(err);
		}
	});

}
</script>	


