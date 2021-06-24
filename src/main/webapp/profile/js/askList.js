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
					align:'&nbsp;center',
					text: items.seq
				})).append($('<td/>',{
					align:'&nbsp;center',
					text: items.ask_category
				})).append($('<td/>',{
				}).append($('<a/>',{
					href: '#',
					align:'center',
					text: items.subject,
					id: 'subjectA'
				}))
				).append($('<td/>',{
					align:'&nbsp;center',
					text: items.created_at
				})).append($('<td/>',{
					align:'&nbsp;center',
					text: items.reply
				})).appendTo($('#askListTable'));
				
		});//each
		
			$(document).on('click','#subjectA', function(){
				//alert($(this).parent().prev().prev().text());
				
				var seq = $(this).parent().prev().prev().text();
				window.open("/furniture/profile/askView?seq="+seq+"&pg="+$('#pg').val(), "a", "width=800, height=500, left=100, top=50");
				
				});	
			
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