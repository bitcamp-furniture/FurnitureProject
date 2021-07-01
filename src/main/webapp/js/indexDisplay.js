// 메인 페이지 ... display가 없을 경우 review를 끌어와 슬라이드로 돌린다 
// 최신순 5개만!!!
$(function(){
   $.ajax({
      type:'post',
      url:'/furniture/main/reviewListTop5',
      dataType:'json',
      success:function(data){
         //alert(JSON.stringify(data));
         console.log(data);
         $.each(data.reviewListTop5, function(index,items){
            var writerEmail = items.email;
            var stars = ''; 
            for(i=1; i<=items.review_stars; i++){
            	stars = stars + '★';
            }
            items.email = writerEmail.slice(0, 2)+'***';
            
            $('.write_email_h5_'+(index+1)).html(items.product_name)
            $('.product_name_span_'+(index+1)).html(items.email)
            $('.review_content_p_'+(index+1)).html(items.review_content)
            $('.rating_'+(index+1)).html(stars).css('color', 'gold')
            
            items.review_stars = stars;
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
               $('#product_item_category_span1').html(items.product_category_name)
               $('#product_item_text_a1').html(items.product_name)
               $('#product_item_text_a1').attr('href', "/furniture/main/productView?id="+items.id)
               $('#product_item_price_div1').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic1').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb
         }))
            }else if(index == 1){
               $('#product_item_category_span2').html(items.product_category_name)
               $('#product_item_text_a2').html(items.product_name)
               $('#product_item_text_a2').attr('href', "/furniture/main/productView?id="+items.id)
               $('#product_item_price_div2').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic2').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb
         }))
            }else if(index == 2){
               $('#product_item_category_span3').html(items.product_category_name)
               $('#product_item_text_a3').html(items.product_name)
               $('#product_item_text_a3').attr('href', "/furniture/main/productView?id="+items.id)
               $('#product_item_price_div3').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic3').append($('<img/>', {
                	  src: '/furniture/storage/' + items.product_img_thumb
         }))
            }else if(index == 3){
               $('#product_item_category_span4').html(items.product_category_name)
               $('#product_item_text_a4').html(items.product_name)
               $('#product_item_text_a4').attr('href', "/furniture/main/productView?id="+items.id)
               $('#product_item_price_div4').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic4').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb
         }))
            }else if(index == 4){
               $('#product_item_category_span5').html(items.product_category_name)
               $('#product_item_text_a5').html(items.product_name)
               $('#product_item_text_a5').attr('href', "/furniture/main/productView?id="+items.id)
               $('#product_item_price_div5').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic5').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb
         }))
            }else if(index == 5){
               $('#product_item_category_span6').html(items.product_category_name)
               $('#product_item_text_a6').html(items.product_name)
               $('#product_item_text_a6').attr('href', "/furniture/main/productView?id="+items.id)
               $('#product_item_price_div6').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic6').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb
         }))
            }else if(index == 6){
               $('#product_item_category_span7').html(items.product_category_name)
               $('#product_item_text_a7').html(items.product_name)
               $('#product_item_text_a7').attr('href', "/furniture/main/productView?id="+items.id)
               $('#product_item_price_div7').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic7').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb
         }))
            }else if(index == 7){
               $('#product_item_category_span8').html(items.product_category_name)
               $('#product_item_text_a8').html(items.product_name)
               $('#product_item_text_a8').attr('href', "/furniture/main/productView?id="+items.id)
               $('#product_item_price_div8').html('₩'+items.product_price.toLocaleString())
               $('#product__item__pic8').append($('<img/>', {
            	   src: '/furniture/storage/' + items.product_img_thumb
         }))
            }
            
         });//each  
      },
      error: function(err){
         console.log(err);
      }
   });
   
   
});
