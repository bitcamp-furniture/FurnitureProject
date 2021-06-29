$('#askBtn').click(function(){
	window.open("askWrite.jsp", "문의", "width=700, height=800, left=200, top=70");
});


$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/profile/getAskList',
		data: 'askPg='+$('#askPg').val(),
		dataType: 'json',
		success: function(data){
			console.log(data);
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					align:'center',
					text: items.seq
				})).append($('<td/>',{
					align:'center',
					text: items.ask_category
				})).append($('<td/>',{
					align:'center'
				}).append($('<a/>',{
					href: '#',
					align:'center',
					text: items.subject,
					id: 'subjectA'
				}))
				).append($('<td/>',{
					align:'center',
					text: items.created_at
				})).append($('<td/>',{
					align:'center',
					text: items.reply
				})).appendTo($('#askListTable'));
				
		});//each
		
			$(document).on('click','#subjectA', function(){
				//alert($(this).parent().prev().prev().text());
				
				var seq = $(this).parent().prev().prev().text();
				window.open("/furniture/profile/askView?seq="+seq+"&askPg="+$('#askPg').val(), "a", "width=800, height=500, left=100, top=50");
				
				});
			
		$('#askPagingDiv').html(data.askPaging.pagingHTML);

	
		},
		error: function(err){
			console.log(err);
		}
			
			
			
		});
});

function askPaging(askPg){
    $("#askListTable tr:gt(0)").remove();
    console.log(askPg);
	$.ajax({
		type: 'post',
		url: '/furniture/profile/getAskList',
		data: 'askPg='+askPg,
		dataType: 'json',
		success: function(data){
			console.log(data);

			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					align:'center',
					text: items.seq
				})).append($('<td/>',{
					align:'center',
					text: items.ask_category
				})).append($('<td/>',{
					align:'center'
				}).append($('<a/>',{
					href: '#',
					align:'center',
					text: items.subject,
					id: 'subjectA'
				}))
				).append($('<td/>',{
					align:'center',
					text: items.created_at
				})).append($('<td/>',{
					align:'center',
					text: items.reply
				})).appendTo($('#askListTable'));

		});//each

			$(document).on('click','#subjectA', function(){
				//alert($(this).parent().prev().prev().text());

				var seq = $(this).parent().prev().prev().text();
				window.open("/furniture/profile/askView?seq="+seq+"&askPg="+$('#askPg').val(), "a", "width=800, height=500, left=100, top=50");

				});

		$('#askPagingDiv').html(data.askPaging.pagingHTML);

		},
		error: function(err){
			console.log(err);
		}



		});


//		location.href = 'askList?pg='+pg;



}