$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/admin/product/getOrderControl',
		data: 'orderControlPg'+$('#orderControlPg').val(),
		dataType: 'json',
		success: function(data){
			alert(JSON.stringify(data));
			
			$.each(data.list, function(index, items){

				$('<tr/>').append($('<td/>',{
					align:'center',
					text: items.order_date
				})).append($('<td/>',{
					align:'center',
					text: items.order_number
				})).append($('<td/>',{
					align:'center',
					text: items.product_name
				})).append($('<td/>',{
					align:'center',
					text: items.product_color
				})).append($('<td/>',{
					align:'center',
					text: items.product_qty
				})).append($('<td/>',{
					align:'center',
					text: items.total_amount
				})).append($('<td/>',{
					align:'center',
					text: items.order_status
				})).appendTo($('#orderControlTable'));
		});//each
			
			//페이징 처리
            $('#orderControlPagingDiv').html(data.orderControlPaging.pagingHTML);

        }, //success
        error: function (err) {
            console.log(err);
        }
    });//ajax
});

/*배송준비중 클릭 시*/
$('#deliveryReady').click(function(){
	var count = $('input[name=check]:checked').length;
	
	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else{
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/deliveryReady',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {
				alert('배송준비중으로 수정되었습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});
		
	}
});

/*입금확인 처리 버튼 클릭 시*/
$('#paymentConfirm').click(function(){
	var count = $('input[name=check]:checked').length;
	
	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else{
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/paymentConfirm',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {
				alert('입금 확인으로 수정되었습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});
		
	}
});

