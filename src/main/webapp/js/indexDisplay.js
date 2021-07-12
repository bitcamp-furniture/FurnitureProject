//이벤트 이미지 배너
$(function(){
   $.ajax({
      type:'post',
      url:'/furniture/admin/event/getEventList',
      dataType:'json',
      success:function(data){
    	 //console.log(JSON.stringify(data))
         //console.log(data);
         $.each(data.eventList, function(index,items){
            var id = items.id;
            $('.set-bg'+(index+1)).css({'background-image': 'url("/furniture/storage/'+items.event_img_banner + '")',
            							'background-size' : '100% 100%'});
           // $('.set-bg'+(index+1)).prop('href', '/furniture/main/eventView?id='+items.id+'&pg=1');
            $('.primary-btn'+(index+1)).attr('href', '/furniture/main/eventView?id='+items.id+'&pg=1')
         });//each 
         
      },
      error: function(err){
         console.log(err);
      }
   });
   
});



$('#eventViewIndex').click(function(pg){
	$.ajax({
		url :"/furniture/admin/event/getEventList",
	    type:'post',
		data:{'pg' :pg},
		success : function(data){
			alert("성공!");
		},
		error : function(){
			alert("실패 :");
		}
	});
});



function addWish(id) {
	if($('#memId').val() == '0'){
		alert("로그인이 필요한 서비스입니다.");
		location.href = "/furniture/member/loginForm";
	}else{

		$.ajax({
			url : "/furniture/main/addWish",
			type : "post",
			data : {'id' : id,
					'memId' : $('#memId').val()
			},
			dataType : "text",
			success : function(data){
				swal("성공!", "위시리스트에 상품을 추가하였습니다", "success");
			},
			error : function(){
				alert("실패 :");
			}
		});
	}
}


// 메인 페이지 ... display가 없을 경우 review를 끌어와 슬라이드로 돌린다 
// 최신순 5개만!!!
$(function(){
   $.ajax({
      type:'post',
      url:'/furniture/main/reviewListTop5',
      dataType:'json',
      success:function(data){
    	  $('#memId').val(data.memId);
         //alert(JSON.stringify(data));
         console.log(data);
         $.each(data.reviewListTop5, function(index,items){
            var writerEmail = items.email;
            var stars = ''; 
            for(i=1; i<=items.review_stars; i++){
            	stars = stars + '★';
            }
            items.email = writerEmail.slice(0, 2)+'***';
            items.review_stars = stars;
            
            $('.write_email_h5_'+(index+1)).html(items.product_name)
            $('.product_name_span_'+(index+1)).html(items.email)
            $('.review_content_p_'+(index+1)).html(items.review_content)
            $('.rating_'+(index+1)).html(stars).css('color', 'gold')
            $('.reviewALink'+(index+1)).attr('href', '/furniture/main/productView?id='+items.product_id+'&pg=1')
            
         });//each 
         
      },
      error: function(err){
         console.log(err);
      }
   });
   
   
   //week
   $.ajax({
      type:'post',
      url:'/furniture/main/getBestSeller',
      dataType:'json',
      success:function(data){
    	  console.log(data);
         //alert(JSON.stringify(data));
         
         $.each(data.getBestSeller, function(index,items){
            if(index == 0){
               $('#cart_add1').attr('onclick', 'addWish('+items.id+')');
               $('#product_item_category_span1').html(items.product_category_name)
               $('#product_item_text_a1').html(items.product_name)
               $('#product_item_text_a1').attr('href', "/furniture/main/productView?id="+items.id+"&pg=1")
               $('#product_item_price_div1').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic1').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb}))
            }else if(index == 1){
                $('#cart_add2').attr('onclick', 'addWish('+items.id+')');
               $('#product_item_category_span2').html(items.product_category_name)
               $('#product_item_text_a2').html(items.product_name)
               $('#product_item_text_a2').attr('href', "/furniture/main/productView?id="+items.id+"&pg=1")
               $('#product_item_price_div2').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic2').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb}))
            }else if(index == 2){
                $('#cart_add3').attr('onclick', 'addWish('+items.id+')');
               $('#product_item_category_span3').html(items.product_category_name)
               $('#product_item_text_a3').html(items.product_name)
               $('#product_item_text_a3').attr('href', "/furniture/main/productView?id="+items.id+"&pg=1")
               $('#product_item_price_div3').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic3').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb}))
            }else if(index == 3){
                $('#cart_add4').attr('onclick', 'addWish('+items.id+')');
               $('#product_item_category_span4').html(items.product_category_name)
               $('#product_item_text_a4').html(items.product_name)
               $('#product_item_text_a4').attr('href', "/furniture/main/productView?id="+items.id+"&pg=1")
               $('#product_item_price_div4').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic4').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb}))
            }else if(index == 4){
                $('#cart_add5').attr('onclick', 'addWish('+items.id+')');
               $('#product_item_category_span5').html(items.product_category_name)
               $('#product_item_text_a5').html(items.product_name)
               $('#product_item_text_a5').attr('href', "/furniture/main/productView?id="+items.id+"&pg=1")
               $('#product_item_price_div5').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic5').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb}))
            }else if(index == 5){
                $('#cart_add6').attr('onclick', 'addWish('+items.id+')');
               $('#product_item_category_span6').html(items.product_category_name)
               $('#product_item_text_a6').html(items.product_name)
               $('#product_item_text_a6').attr('href', "/furniture/main/productView?id="+items.id+"&pg=1")
               $('#product_item_price_div6').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic6').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb}))
            }else if(index == 6){
                $('#cart_add7').attr('onclick', 'addWish('+items.id+')');
               $('#product_item_category_span7').html(items.product_category_name)
               $('#product_item_text_a7').html(items.product_name)
               $('#product_item_text_a7').attr('href', "/furniture/main/productView?id="+items.id+"&pg=1")
               $('#product_item_price_div7').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic7').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb}))
            }else if(index == 7){
                $('#cart_add8').attr('onclick', 'addWish('+items.id+')');
               $('#product_item_category_span8').html(items.product_category_name)
               $('#product_item_text_a8').html(items.product_name)
               $('#product_item_text_a8').attr('href', "/furniture/main/productView?id="+items.id+"&pg=1")
               $('#product_item_price_div8').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic8').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb}))
            }
            
         });//each  
      },
      error: function(err){
         console.log(err);
      }
   });
   
   
});
