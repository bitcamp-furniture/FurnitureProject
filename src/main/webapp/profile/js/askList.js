$('#askBtn').click(function(){
	window.open("askWrite.jsp", "문의", "width=700, height=800, left=200, top=70");
});


$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/profile/getAskList',
		data: 'pg='+$('#pg').val(),
		dataType: 'json',
		success: function(data){
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					align:'center',
					text: items.seq
				})).append($('<td/>',{
					align:'center',
					text: items.ask_category
				})).append($('<td/>',{
					align:'center',
					text: items.subject
				})).append($('<td/>',{
					align:'center',
					text: items.created_at
				})).append($('<td/>',{
					align:'center',
					text: items.reply
				})).appendTo($('#askListTable'));
				
		});//each
		
		$('#boardPagingDiv').html(data.askPaging.pagingHTML);
	
		},
		error: function(err){
			console.log(err);
		}
			
			
			
		});
});

function askPaging(pg){

		location.href = 'askList?pg='+pg;


	
}