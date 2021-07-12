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
               value: items.id
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
               text: items.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
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
}

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
               value: items.id
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
               text: items.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
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
               text: OrderStatusType[items.order_status].value
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
	$('#cancelSales').show();
	$('#paymentConfirmBtn').show();
	$('#deliveryReadyBtn').show();
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
               value: items.id
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
               text: items.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
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
               text: OrderStatusType[items.order_status].value
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
	$('#cancelSales').show();
	$('#paymentConfirmBtn').show();
	$('#deliveryReadyBtn').show();
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
               value: items.id
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
               text: items.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
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
               text: OrderStatusType[items.order_status].value
            })).appendTo($('#orderCancleTable'));
      });//each
         
           //페이징 처리
            $('#orderCanclePagingDiv').html(data.orderCanclePaging.pagingHTML);

        }, //success
        error: function (err) {
            console.log(err);
        }
    });//ajax
	
	$('#cancelSales').show();
	$('#paymentConfirmBtn').show();
	$('#deliveryReadyBtn').show();
	
	$('#deliveryReadyBtn').attr('disabled', true);
	$('#paymentConfirmBtn').attr('disabled', true);
	
	$('#dropdown').css('pointer-events', 'none');
	$('#dropdown').css('opacity', '0.6');
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
               value: items.id
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
                text: items.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
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
                text: OrderStatusType[items.order_status].value
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
	$('#cancelSales').hide();
	$('#paymentConfirmBtn').show();
	
    
}

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
		                text: items.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
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
		         
		        $('#orderControlPagingDiv').html(data.orderControlPaging.pagingHTML);
				
			},
			error: function(err){
				console.log(err);
			}
		});
	}
	$('#deliveryReadyBtn').attr('disabled', false);
	$('#paymentConfirmBtn').attr('disabled', false);
	
	$('#dropdown').css('pointer-events', 'none');
	$('#dropdown').css('opacity', '0.6');

});

//orderControl 페이징 처리
function orderControlPaging(pg){
	var keyword = document.getElementById('keyword').value;
	if(keyword==''){
		$.ajax({
		      type: 'post',
		      url: '/furniture/admin/product/getOrderControl',
		      data: 'orderControlPg='+pg,
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
		               text: items.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
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
		
		
	}else{
		$('input[name=orderControlPg]').val(pg);
		$('#orderSearchBtn').trigger('click');
		$('input[name=orderControlPg]').val(1);
		
	}
	
}