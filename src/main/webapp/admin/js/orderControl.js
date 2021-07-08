$(function(){
    $.ajax({
      type: 'post',
      url: '/furniture/admin/product/getOrderControl',
      data: 'orderControlPg='+$('#orderControlPg').val(),
      dataType: 'json',
      success: function(data){
         //alert(JSON.stringify(data));
         
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

/*배송준비중으로 되돌리기*/
function deliveryReady(){
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
function paymentConfirm(){
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
function delivery(){
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
function delay(){
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
			url: '/furniture/admin/product/cancelSales',
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
		
	}
});

/*검색*/
$('#orderSearchBtn').click(function(){
	var cc = $('#keyword').val()
	alert(cc);
	
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
//				$('#memberListTable tr:gt(0)').remove();
//				$("input[name=check_all]").prop("checked", false);
//				
//				$.each(data.list, function(index, items){
//					$('<tr/>').append($('<td/>',{
//						
//						}).append($('<input/>',{
//							align: 'center',
//							type: 'checkbox',
//							name: 'check',
//							value: items.id
//						}))
//					).append($('<td/>',{
//						align: 'center',
//						text: items.name
//					})).append($('<td/>',{
//						align: 'center',
//						text: items.email
//					})).append($('<td/>',{
//						align: 'center',
//						text: items.created_at
//					})).append($('<td/>',{
//						align: 'center',
//						text: items.point					
//					})).append($('<td/>',{
//						align: 'center',
//						text: items.amount					
//					})).appendTo($('#memberListTable'));
//					
//				});
//				
//				$('#memberListPagingDiv').html(data.memberListPaging.pagingHTML);
				
			},
			error: function(err){
				console.log(err);
			}
		});
	}
	
});











