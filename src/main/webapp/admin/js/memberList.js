/*게시판 글 띄우기*/
$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/admin/getMemberList',
		data: 'pg='+$('#pg').val(),
		dataType: 'json',
		success: function(data) {
			//alert(JSON.stringify(data));
			$('#memberListTable tr:gt(0)').remove();
			$("input[name=check_all]").prop("checked", false);
			
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					
					}).append($('<input/>',{
						align:'center',
						type: 'checkbox',
						class: 'normal',
						name: 'check',
						value: items.id
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
					text: items.point.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")				
				})).append($('<td/>',{
					align: 'center',
					text: items.amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
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

/*검색*/
$('#memberSearchBtn').click(function(){
	if($('#keyword').val()==''){
		alert('검색어를 입력하세오');
	}else{
		$.ajax({
			type:'post',
			url: '/furniture/admin/getSearchMemberList',
			data: $('#memberList').serialize(),
			dataType: 'json',
			success: function(data){
				//alert(JSON.stringify(data));
				$('#memberListTable tr:gt(0)').remove();
				$("input[name=check_all]").prop("checked", false);
				
				$.each(data.list, function(index, items){
					$('<tr/>').append($('<td/>',{
						
						}).append($('<input/>',{
							align: 'center',
							type: 'checkbox',
							name: 'check',
							value: items.id
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
				
				$('#memberListPagingDiv').html(data.memberListPaging.pagingHTML);
				
			},
			error: function(err){
				console.log(err);
			}
		});
	}
	
});

/*전체 선택 or 해체*/
$('#check_all').click(function(){
	if($('#check_all').prop('checked')){
		$('input[name=check]').prop('checked', true);
	}else{
		$('input[name=check]').prop('checked', false);
	}
});

/*선택 삭제*/
$('#memberDeleteBtn').click(function(){
	var count = $('input[name=check]:checked').length;
	
	if(count == 0){
		alert("삭제할 항목을 선택하세요.");
	}else{
		if(confirm("정말로 삭제하시겠습니까?")){
		$('#memberList').submit();
		}
	}
});

/*페이징*/
function memberListPaging(pg){
	var keyword = document.getElementById('keyword').value;
	if(keyword==''){
		$.ajax({
			type: 'post',
			url: '/furniture/admin/getMemberList',
			data: 'pg='+pg,
			dataType: 'json',
			success: function(data) {
				//alert(JSON.stringify(data));
				$('#memberListTable tr:gt(0)').remove();
				$("input[name=check_all]").prop("checked", false);

				$.each(data.list, function(index, items){
					$('<tr/>').append($('<td/>',{
						
						}).append($('<input/>',{
							align:'center',
							type: 'checkbox',
							name: 'check',
							value: items.id
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
	}else{
		$('input[name=pg]').val(pg);
		$('#memberSearchBtn').trigger('click');
		$('input[name=pg]').val(1);
	}
}
