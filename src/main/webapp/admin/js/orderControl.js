/*신규주문 목록 띄우기*/
$(function(){
    $.ajax({
      type: 'post',
      url: '/furniture/admin/product/getOrderControl',
      data: 'orderControlPg='+$('#orderControlPg').val(),
      dataType: 'json',
      success: function(data){
         alert(JSON.stringify(data));
		 $('#newOrderTable tr:gt(0)').remove();
		 $("input[name=check_all]").prop("checked", false);
         
         $.each(data.list, function(index, items){
            $('<tr/>').append($('<td/>',{
            }).append($('<input/>',{
               align: 'center',
               type: 'checkbox',
               class: 'normal',
               name: 'check',
               value: items.order_number
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.order_date
            })).append($('<td/>',{
               //align:'center',
               text: items.order_number
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
               text: items.total_amount
            })).append($('<td>',{
            	
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
	            	text:items.addr1 + items.addr2 + '\n\n' + '우)' + items.zipcode
	            }))
            ).append($('<td/>',{
               //align:'center',
               id: 'order_status',
               name: 'order_status',
               text: items.order_status
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

});

/*신규주문 탭을 눌렀을 때*/
function newOrder(){
    $.ajax({
      type: 'post',
      url: '/furniture/admin/product/getOrderControl',
      data: 'orderControlPg='+$('#orderControlPg').val(),
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
               value: items.order_number
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.order_date
            })).append($('<td/>',{
               //align:'center',
               text: items.order_number
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
               text: items.total_amount
            })).append($('<td>',{
            	
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
	            	text:items.addr1 + items.addr2 + '\n\n' + '우)' + items.zipcode
	            }))
            ).append($('<td/>',{
               //align:'center',
               id: 'order_status',
               name: 'order_status',
               text: items.order_status
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
}

/*배송준비중 탭을 눌렀을 때*/
$('#deliveryReady').click(function(){
    $.ajax({
      type: 'post',
      url: '/furniture/admin/product/getDeliveryReady',
      data: 'deliveryPg='+$('#deliveryPg').val(),
      dataType: 'json',
      success: function(data){
         //alert(JSON.stringify(data));
 		 $('#deliveryTable tr:gt(0)').remove();
		 $("input[name=check_all]").prop("checked", false);
         
         $.each(data.list, function(index, items){
            $('<tr/>').append($('<td/>',{
            }).append($('<input/>',{
               align: 'center',
               type: 'checkbox',
               class: 'normal',
               name: 'check',
               value: items.order_number
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.order_date
            })).append($('<td/>',{
               //align:'center',
               text: items.order_number
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
               text: items.total_amount
            })).append($('<td>',{
            	
            }).append($('<input/>',{
                type: 'search',
                name: 'delivery_number',
                value: items.delivery_number,
                style: 'width:100px;'
            })).append($('<input/>',{
                type: 'button',
                value: '발송처리',
                id: 'invoiceBtn'
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.name + '\n\n' + '/' + '\n\n' + items.phone
	            }).append($('<td>',{
	            	text:items.addr1 + items.addr2 + '\n\n' + '우)' + items.zipcode
	            }))
            ).append($('<td/>',{
               //align:'center',
               id: 'order_status',
               name: 'order_status',
               text: items.order_status
            })).appendTo($('#deliveryTable'));
      });//each
         
           //페이징 처리
            $('#deliveryPagingDiv').html(data.deliveryPaging.pagingHTML);

        }, //success
        error: function (err) {
            console.log(err);
        }
    });//ajax
    
	$('#deliveryReadyBtn').attr('disabled', false);
	$('#paymentConfirmBtn').attr('disabled', false);
	
	$('#dropdown').css('pointer-events', 'auto');
	$('#dropdown').css('opacity', '1');

    
});
/*배송중 탭을 눌렀을 때*/
function duringDeliver(){
    $.ajax({
      type: 'post',
      url: '/furniture/admin/product/getDuringDeliver',
      data: 'duringDeliverPg='+$('#duringDeliverPg').val(),
      dataType: 'json',
      success: function(data){
         //alert(JSON.stringify(data));
 		 $('#duringDeliverTable tr:gt(0)').remove();
		 $("input[name=check_all]").prop("checked", false);
         
         $.each(data.list, function(index, items){
            $('<tr/>').append($('<td/>',{
            }).append($('<input/>',{
               align: 'center',
               type: 'checkbox',
               class: 'normal',
               name: 'check',
               value: items.order_number
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.order_date
            })).append($('<td/>',{
               //align:'center',
               text: items.order_number
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
               text: items.total_amount
            })).append($('<td>',{
            	
            }).append($('<input/>',{
                type: 'search',
                name: 'delivery_number',
                value: items.delivery_number,
                style: 'width:100px;'
            })).append($('<input/>',{
                type: 'button',
                value: '발송처리',
                id: 'invoiceBtn'
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.name + '\n\n' + '/' + '\n\n' + items.phone
	            }).append($('<td>',{
	            	text:items.addr1 + items.addr2 + '\n\n' + '우)' + items.zipcode
	            }))
            ).append($('<td/>',{
               //align:'center',
               id: 'order_status',
               name: 'order_status',
               text: items.order_status
            })).appendTo($('#duringDeliverTable'));
      });//each
         
           //페이징 처리
            $('#duringDeliverPagingDiv').html(data.duringDeliverPaging.pagingHTML);

        }, //success
        error: function (err) {
            console.log(err);
        }
    });//ajax
    
	$('#deliveryReadyBtn').attr('disabled', false);
	$('#paymentConfirmBtn').attr('disabled', false);
	
	$('#dropdown').css('pointer-events', 'auto');
	$('#dropdown').css('opacity', '1');
}

/*배송완료 탭을 눌렀을 때*/
function deliverComplete(){
    $.ajax({
      type: 'post',
      url: '/furniture/admin/product/getDeliverComplete',
      data: 'deliverCompletePg='+$('#deliverCompletePg').val(),
      dataType: 'json',
      success: function(data){
         //alert(JSON.stringify(data));
 		 $('#deliverCompleteTable tr:gt(0)').remove();
		 $("input[name=check_all]").prop("checked", false);
         
         $.each(data.list, function(index, items){
            $('<tr/>').append($('<td/>',{
            }).append($('<input/>',{
               align: 'center',
               type: 'checkbox',
               class: 'normal',
               name: 'check',
               value: items.order_number
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.order_date
            })).append($('<td/>',{
               //align:'center',
               text: items.order_number
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
               text: items.total_amount
            })).append($('<td>',{
            	
            }).append($('<input/>',{
                type: 'search',
                name: 'delivery_number',
                value: items.delivery_number,
                style: 'width:100px;'
            })).append($('<input/>',{
                type: 'button',
                value: '조회',
                id: 'checkBtn'
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.name + '\n\n' + '/' + '\n\n' + items.phone
	            }).append($('<td>',{
	            	text:items.addr1 + items.addr2 + '\n\n' + '우)' + items.zipcode
	            }))
            ).append($('<td/>',{
               //align:'center',
               id: 'order_status',
               name: 'order_status',
               text: items.order_status
            })).appendTo($('#deliverCompleteTable'));
      });//each
         
           //페이징 처리
            $('#deliverCompletePagingDiv').html(data.deliverCompletePaging.pagingHTML);

        }, //success
        error: function (err) {
            console.log(err);
        }
    });//ajax
    
	$('#deliveryReadyBtn').attr('disabled', false);
	$('#paymentConfirmBtn').attr('disabled', false);
	
	$('#dropdown').css('pointer-events', 'auto');
	$('#dropdown').css('opacity', '1');
}

/*취소처리 탭을 눌렀을 때*/
function orderCancle(){
    $.ajax({
      type: 'post',
      url: '/furniture/admin/product/getOrderCancle',
      data: 'orderCanclePg='+$('#orderCanclePg').val(),
      dataType: 'json',
      success: function(data){
         //alert(JSON.stringify(data));
 		 $('#orderCancleTable tr:gt(0)').remove();
		 $("input[name=check_all]").prop("checked", false);
         
         $.each(data.list, function(index, items){
            $('<tr/>').append($('<td/>',{
            }).append($('<input/>',{
               align: 'center',
               type: 'checkbox',
               class: 'normal',
               name: 'check',
               value: items.order_number
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.order_date
            })).append($('<td/>',{
               //align:'center',
               text: items.order_number
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
               text: items.total_amount
            })).append($('<td>',{
            	
            }).append($('<td/>',{

            })).append($('<input/>',{
                type: 'hidden',
                id: 'invoiceBtn'
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.name + '\n\n' + '/' + '\n\n' + items.phone
	            }).append($('<td>',{
	            	text:items.addr1 + items.addr2 + '\n\n' + '우)' + items.zipcode
	            }))
            ).append($('<td/>',{
               //align:'center',
               id: 'order_status',
               name: 'order_status',
               text: items.order_status
            })).appendTo($('#orderCancleTable'));
      });//each
         
           //페이징 처리
            $('#orderCanclePagingDiv').html(data.orderCanclePaging.pagingHTML);

        }, //success
        error: function (err) {
            console.log(err);
        }
    });//ajax
    
	$('#deliveryReadyBtn').attr('disabled', false);
	$('#paymentConfirmBtn').attr('disabled', false);
	
	$('#dropdown').css('pointer-events', 'auto');
	$('#dropdown').css('opacity', '1');
}

/*구매확정 탭을 눌렀을 때*/
function purchaseConfirmed(){
    $.ajax({
      type: 'post',
      url: '/furniture/admin/product/getPurchaseConfirmed',
      data: 'purchaseConfirmedPg='+$('#purchaseConfirmedPg').val(),
      dataType: 'json',
      success: function(data){
         //alert(JSON.stringify(data));
 		 $('#purchaseConfirmedTable tr:gt(0)').remove();
		 $("input[name=check_all]").prop("checked", false);
         
         $.each(data.list, function(index, items){
            $('<tr/>').append($('<td/>',{
            }).append($('<input/>',{
               align: 'center',
               type: 'checkbox',
               class: 'normal',
               name: 'check',
               value: items.order_number
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.order_date
            })).append($('<td/>',{
               //align:'center',
               text: items.order_number
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
               text: items.total_amount
            })).append($('<td>',{
            	
            }).append($('<td/>',{

            })).append($('<input/>',{
                type: 'hidden',
                id: 'invoiceBtn'
            }))
            ).append($('<td/>',{
               //align:'center',
               text: items.name + '\n\n' + '/' + '\n\n' + items.phone
	            }).append($('<td>',{
	            	text:items.addr1 + items.addr2 + '\n\n' + '우)' + items.zipcode
	            }))
            ).append($('<td/>',{
               //align:'center',
               id: 'order_status',
               name: 'order_status',
               text: items.order_status
            })).appendTo($('#purchaseConfirmedTable'));
      });//each
         
           //페이징 처리
            $('#purchaseConfirmedPagingDiv').html(data.purchaseConfirmedPaging.pagingHTML);

        }, //success
        error: function (err) {
            console.log(err);
        }
    });//ajax
    
	$('#deliveryReadyBtn').attr('disabled', true);
	$('#paymentConfirmBtn').attr('disabled', true);
	
	$('#dropdown').css('pointer-events', 'none');
	$('#dropdown').css('opacity', '0.6');
    
}

/*전체 선택 or 해체*/
$('#check_all').click(function(){
	if($('#check_all').prop('checked')){
		$('input[name=check]').prop('checked', true);
	}else{
		$('input[name=check]').prop('checked', false);
	}
});

/*운송장 발송 버튼 클릭 시*/
$(document).on('click', '#invoiceBtn',function(){
	var order_number = $(this).parent().prev().prev().prev().prev().prev().prev().prev().text();
	var delivery_number = $(this).prev().val();
	
	$.ajax({
        type: 'post',
        url: '/furniture/admin/product/invoice',
        data: {'order_number' : order_number, 'delivery_number' : delivery_number },
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

/*판매취소 버튼 클릭 시*/
$('#cancelSales').click(function(){
	var count = $('input[name=check]:checked').length;
	
	if(count == 0){
		alert("선택한 주문이 없습니다.");
	}else{
        $.ajax({
			type: 'post',
			url: '/furniture/pay/cancel',
			data: $('#orderForm').serialize(),
			dataType: 'json',
			success: function(data) {
			    console.log(JSON.stringify(data));
				//alert('주문이 취소되었습니다.');
				location.reload()

			},
			error: function(err){
				console.log(err);
			}
		});

	}
});

/*검색*/
$('#orderSearchBtn').click(function(){
	
	if($('#keyword').val()==''){
		alert('검색어를 입력하세요');
	}else{
		$.ajax({
			type:'post',
			url: '/furniture/admin/product/getSearchOrderList',
			data: $('#orderForm').serialize(),
			dataType: 'json',
			success: function(data){
				alert(JSON.stringify(data));
				$('#orderControlTable tr:gt(0)').remove();
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
		               text: items.name
		            })).append($('<td/>',{
		               //align:'center',
		               text: items.order_number
		            })).append($('<td/>',{
		               //align:'center',
		               text: items.img_thumb
		            })).append($('<td/>',{
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
		               text: items.total_amount
		            })).append($('<td/>',{
		               //align:'center',
		               text: items.zipcode
		            })).append($('<td/>',{
		               //align:'center',
		               text: items.addr1
		            })).append($('<td/>',{
		               //align:'center',
		               text: items.addr2
		            })).append($('<td/>',{
		               //align:'center',
		               text: items.order_status
		            })).appendTo($('#orderControlTable'));
		      });//each
				
				//$('#memberListPagingDiv').html(data.memberListPaging.pagingHTML);
				
			},
			error: function(err){
				console.log(err);
			}
		});
	}

});






