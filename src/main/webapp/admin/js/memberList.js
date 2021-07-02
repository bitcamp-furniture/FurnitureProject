$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/admin/getMemberList',
		data: 'pg='+$('#pg').val(),
		dataType: 'json',
		success: function(data) {
			//alert(JSON.stringify(data));
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					
					}).append($('<input/>',{
						align:'center',
						type: 'checkbox',
						name: 'selected'
					}))
				).append($('<td/>',{
					align: 'center',
					text: items.name
				})).append($('<td/>',{
					align: 'center',
					text: items.email
				})).append($('<td/>',{
					align: 'center',
					text: items.created_at
				})).append($('<td/>',{
					align: 'center',
					text: items.point					
				})).append($('<td/>',{
					align: 'center',
					text: items.amount					
				})).appendTo($('#memberListTable'));
				
			});
			
			//페이징 처리
			$('#memberListPagingDiv').html(data.memberListPaging.pagingHTML);
		},
		error: function(err){
			console.log(err);
		}
	});
});


function memberListPaging(pg){
	location.href = 'memberList?pg='+pg;	
}