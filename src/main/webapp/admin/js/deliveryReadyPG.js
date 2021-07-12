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
               text: items.product_price
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
	$('#cancelSales').show();
	
});


/*검색*/
$('#orderSearchBtn2').click(function(){
	if($('#keyword2').val()==''){
		alert('검색어를 입력하세요');
	}else{
		$.ajax({
			type:'post',
			url: '/furniture/admin/product/getSearchDeliveryReady',
			data: $('#orderForm').serialize(),
			dataType: 'json',
			success: function(data){
				alert(JSON.stringify(data));
		 		$('#deliveryTable tr:gt(0)').remove();
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
		               text: items.product_price
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
		            })).appendTo($('#deliveryTable'));
		      });//each
		         
	            $('#deliveryPagingDiv').html(data.deliveryPaging.pagingHTML);
				
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

//deliveryPaging 페이징 처리
function deliveryPaging(pg){
	var keyword = document.getElementById('keyword2').value;
	if(keyword==''){
		$.ajax({
		      type: 'post',
		      url: '/furniture/admin/product/getDeliveryReady',
		      data: 'deliveryPg='+pg,
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
		               text: items.product_price
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
			
			$('#dropdown').css('pointer-events', 'none');
			$('#dropdown').css('opacity', '0.6');
		
		
	}else{
		$('input[name=deliveryPg]').val(pg);
		$('#orderSearchBtn2').trigger('click');
		$('input[name=deliveryPg]').val(1);
		
	}
	
}