/*신규주문 목록 띄우기*/
$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/admin/product/getOrderControl',
		data: 'pg='+$('#pg').val(),
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));

			$('#newOrderTable tr:gt(0)').remove();
			$("input[name=check_all]").prop("checked", false);

			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					}).append($('<input/>',{
						align: 'center',
						type: 'checkbox',
						class: 'normal',
						name: 'check',
						value: items.id
					}))
				).append($('<td/>',{
					//align:'center',
					text: items.order_date
				})).append($('<td/>',{
					//align:'center',
					text: items.order_number
				})).append($('<input/>',{
					type: 'hidden',
					class: 'order_number '+items.order_number,
					value: items.order_number
				})).append($('<td/>',{
					//align:'center',
					text: items.name
				})).append($('<td/>',{
						align: 'center',
					}).append($('<img/>',{
						//align:'center',
						src: '/furniture/storage/' + items.product_img_thumb,
						width: '80px',
						height: '80px'
						//height="20px" width="20px"
					}))
				).append($('<td/>',{
					//align:'center',
					text: items.product_name
				})).append($('<td/>',{
					//align:'center',
					text: items.product_color
				})).append($('<td/>',{
					//align:'center',
					text: items.product_qty
				})).append($('<td/>',{
					//align:'center',
					text: items.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","),
					name: 'product_price'
				})).append($('<td/>',{

					}).append($('<input/>',{
						type: 'hidden'
					})).append($('<input/>',{
						type: 'hidden',
						id: 'invoiceBtn'
					}))
				).append($('<td/>',{
						//align:'center',
						text: items.name + '\n\n' + '/' + '\n\n' + items.phone
					}).append($('<td>',{
						text: items.addr1 + items.addr2 + '\n\n' + '우)' + items.zipcode
					}))
				).append($('<td/>',{
					//align:'center',
					id: 'order_status',
					name: 'order_status',
					text: OrderStatusType[items.order_status].value

				})).appendTo($('#newOrderTable'));
			});//each

			//페이징 처리
			$('#orderControlPagingDiv').html(data.orderControlPaging.pagingHTML);

		}, //success
		error: function (err) {
			console.log(err);
		}
	});//ajax

	$('#deliveryReadyBtn').attr('disabled', false);
	$('#paymentConfirmBtn').attr('disabled', false);

	$('#dropdown').css('pointer-events', 'none');
	$('#dropdown').css('opacity', '0.6');
	$('#cancelSales').show();
	$('#paymentConfirmBtn').hide();
	$('#deliveryReadyBtn').show();

});

/*신규주문 전체 선택 or 해체*/
$('#check_all').click(function(){
	if($('#check_all').prop('checked')){
		$('input[name=check]').prop('checked', true);
	}else{
		$('input[name=check]').prop('checked', false);
	}
});

/*배송준비 전체 선택 or 해체*/
$('#check_all2').click(function(){
	if($('#check_all2').prop('checked')){
		$('input[name=check]').prop('checked', true);
	}else{
		$('input[name=check]').prop('checked', false);
	}
});

/*배송중 전체 선택 or 해체*/
$('#check_all3').click(function(){
	if($('#check_all3').prop('checked')){
		$('input[name=check]').prop('checked', true);
	}else{
		$('input[name=check]').prop('checked', false);
	}
});

/*배송완료 전체 선택 or 해체*/
$('#check_all4').click(function(){
	if($('#check_all4').prop('checked')){
		$('input[name=check]').prop('checked', true);
	}else{
		$('input[name=check]').prop('checked', false);
	}
});

/*구매확정 전체 선택 or 해체*/
$('#check_all5').click(function(){
	if($('#check_all5').prop('checked')){
		$('input[name=check]').prop('checked', true);
	}else{
		$('input[name=check]').prop('checked', false);
	}
});

/*취소처리 전체 선택 or 해체*/
$('#check_all6').click(function(){
	if($('#check_all6').prop('checked')){
		$('input[name=check]').prop('checked', true);
	}else{
		$('input[name=check]').prop('checked', false);
	}
});


/*운송장 발송 버튼 클릭 시*/
$(document).on('click', '#invoiceBtn',function(){
	var id = $(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().children().val();
	var delivery_number = $(this).prev().val();
	//alert(id);
	//alert(delivery_number);

	$.ajax({
		type: 'post',
		url: '/furniture/admin/product/invoice',
		data: {'id' : id, 'delivery_number' : delivery_number },
		dataType: 'text',
		success: function() {
			alert('운송장 번호를 등록하였습니다.');
			location.reload();

		},
		error: function(err){
			console.log(err);
		}
	});

});


/*배송준비중 클릭 시*/
$('#deliveryReadyBtn').click(function(){
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

/*배송완료 클릭 시*/
$('#deliveryCompleteBtn').click(function(){
	var count = $('input[name=check]:checked').length;

	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else{
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/deliveryComplete',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {
				alert('배송완료로 수정되었습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});

	}
});

/*입금확인 처리 버튼 클릭 시*/
$('#paymentConfirmBtn').click(function(){
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

/*구매확정 버튼 클릭 시*/
$('#purchaseConfirmedBtn').click(function(){
	var count = $('input[name=check]:checked').length;

	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else{
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/purchaseConfirmed',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {
				alert('구매확정으로 수정하였습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});

		//포인트 지급
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/memberPointUpdate',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {

			},
			error: function(err){
				console.log(err);
			}
		});

		//alert($('#orderForm').serialize());
		//누적금액 추가
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/memberCumulativerAmount',
			data: $('#orderForm').serialize(),
			success: function() {
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});

	}

});

/*배송준비중으로 되돌리기*/
function deliveryReadyBtn(){
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
}

/*결제 완료로 되돌리기*/
function paymentConfirmBtn(){
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
}

/*배송중으로 되돌리기*/
function deliveryBtn(){
	var count = $('input[name=check]:checked').length;

	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else{
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/delivery',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {
				alert('배송중으로 수정되었습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});

	}
}

/*발송지연 처리*/
function delayBtn(){
	var count = $('input[name=check]:checked').length;

	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else{
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/delay',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {
				alert('발송지연으로 수정되었습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});

	}
}

/*판매취소 버튼 클릭 시 (구매확정부분에서 누르면)*/
$('#cancelSales_complete').click(function(){
	var count = $('input[name=check]:checked').length;

	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else if(count == 1){
		$.ajax({
			type: 'post',
			url: '/furniture/pay/cancel',
			data: $('#orderForm').serialize(),
			dataType: 'json',
			success: function(data) {
				console.log(JSON.stringify(data));

			},
			error: function(err){
				console.log(err);
			}
		});
		//주문 취소
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/cancelSalesComplete',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {
				alert('주문이 취소되었습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});

		//포인트 회수
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/canclePoint',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {

			},
			error: function(err){
				console.log(err);
			}
		});

		//누적금액 회수
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/cancleAmount',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {

			},
			error: function(err){
				console.log(err);
			}
		});

	} else{
		alert("판매취소는 한 개씩만 가능합니다.");
	}
});


/*판매취소 버튼 클릭 시 (구매확정 외 모든 탭에 있는 버튼 해당)*/
$('#cancelSales').click(function(){
	var count = $('input[name=check]:checked').length;

	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else if(count == 1){
		$.ajax({
			type: 'post',
			url: '/furniture/pay/cancel',
			data: $('#orderForm').serialize(),
			dataType: 'json',
			success: function(data) {
				alert('주문이 취소되었습니다.');
				console.log(JSON.stringify(data));
				//location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});

		//주문 취소
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/cancelSales',
			data: $('#orderForm').serialize(),
			dataType: 'text',
			success: function() {
				//alert('주문이 취소되었습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});
	} else{
		alert("판매취소는 한 개씩만 가능합니다.");
	}
});