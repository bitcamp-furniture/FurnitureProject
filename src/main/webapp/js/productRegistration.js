
$(function(){
   
   //1 depth
   $('#category1').load('/furniture/text/category-data.html #category1-1', function(){
      $(this).show();
         
   });
   
   //2 depth
   $(document).on('change', '#category1 > select', function(){
      //초기화
      $('#category2').empty().hide();
      
      var target = $(this).find('option:selected').attr('data-target');
      console.log('target = '+target);
      var selector = '/furniture/text/category-data.html ' + target;
      console.log('selector = '+selector);
      
      $('#category2').load(selector, function(){
         $(this).show();
      });
   });
   

   
   //마지막 선택
   $(document).on('change', '#category2 > select', function(){
      if($(this).find('option:selected').index() > 0){
         var product_category2 = $('#category1 > select > option:selected').val();
         var product_category1 = $('#category2 > select > option:selected').val();
         
         $('.console').html(product_category2 + " &gt; " + product_category1 + " &gt; ");
      }
   });
   
});


$('#productRegistrationBtn').click(function(){
   $('#product_codeDiv').empty();
   $('#product_nameDiv').empty();
   $('#product_priceDiv').empty();
   $('#stockDiv').empty();


   if($('#product_code').val() == ''){
      $('#product_codeDiv').text('제품코드를 입력하세요');
      $('#product_codeDiv').css('color','red');
      $('#product_codeDiv').css('font-size','8pt');
      $('#product_codeDiv').css('font-weight','bold');
      return false;

   }else if($('#product_name').val()== ''){
      $('#product_nameDiv').text('제품명을 입력하세요');
      $('#product_nameDiv').css('color','red');
      $('#product_nameDiv').css('font-size','8pt');
      $('#product_nameDiv').css('font-weight','bold');
      return false;

   }else if($('#product_price').val()== ''){
      $('#product_priceDiv').text('가격을 입력하세요');
      $('#product_priceDiv').css('color','red');
      $('#product_priceDiv').css('font-size','8pt');
      $('#product_priceDiv').css('font-weight','bold');
      return false;

   }else if($('#stock').val()== ''){
      $('#stockDiv').text('재고를 입력하세요');
      $('#stockDiv').css('color','red');
      $('#stockDiv').css('font-size','8pt');
      $('#stockDiv').css('font-weight','bold');
      return false;

   }
   
   if($("#category1-1 option:eq(0)").is(':selected')){
      $('#product_categoryDiv').empty();

      $('#category1').focus();  //해당 체크박스로 포커스 이동.
      
      $('#product_categoryDiv').text('1번 카테고리를 선택해주세요');
         $('#product_categoryDiv').css('color','red');
         $('#product_categoryDiv').css('font-size','8pt');
         $('#product_categoryDiv').css('font-weight','bold');
         return false;

   }else if($("#category2-1 option:eq(0)").is(':selected')){
      $('#product_categoryDiv').empty();

      $('#category2').focus();  //해당 체크박스로 포커스 이동.
      
      $('#product_categoryDiv').text('2번 카테고리를 선택해주세요');
         $('#product_categoryDiv').css('color','red');
         $('#product_categoryDiv').css('font-size','8pt');
         $('#product_categoryDiv').css('font-weight','bold');
         return false;

   }
   
     
   
   if($("input[type=checkbox]").is(":checked")){
      true;
   } else {
      if(!$("input[type=checkbox]").is(":checked")){
         $('#checkboxDiv').empty();
         $("input[type=checkbox]").focus();  //해당 체크박스로 포커스 이동.
         
         $('#checkboxDiv').text('색깔을 선택해주세요');
          $('#checkboxDiv').css('color','red');
          $('#checkboxDiv').css('font-size','8pt');
          $('#checkboxDiv').css('font-weight','bold');
            
         return false;
      }
      
   }
   
   if( $("#product_img_thumb").val()==''){
      $('#product_img_thumbDiv').empty();
      
      $('#product_img_thumbDiv').text('썸네일 파일을 선택해주세요');
       $('#product_img_thumbDiv').css('color','red');
       $('#product_img_thumbDiv').css('font-size','8pt');
       $('#product_img_thumbDiv').css('font-weight','bold');
       return false;


   }else if( $("#product_img_detail").val()==''){
      $('#product_img_detailDiv').empty();
      

      $('#product_img_detailDiv').text('디테일 파일을 선택해주세요');
       $('#product_img_detailDiv').css('color','red');
       $('#product_img_detailDiv').css('font-size','8pt');
       $('#product_img_detailDiv').css('font-weight','bold');
       return false;

   }
   
   
   
   
   if($('#category2-1').val() == '101'){
      $('#product_category_name').val('소파베드')
   }else if($('#category2-1').val() == '102'){
         $('#product_category_name').val('수납형침대')
   }else if($('#category2-1').val() == '103'){
         $('#product_category_name').val('간이침대')
   }else if($('#category2-2').val() == '201'){
         $('#product_category_name').val('패브릭소파')
   }else if($('#category2-2').val() == '202'){
         $('#product_category_name').val('모듈식소파')
   }else if($('#category2-2').val() == '203'){
         $('#product_category_name').val('천연/인조가죽소파')
   }else if($('#category2-3').val() == '301'){
         $('#product_category_name').val('큐브형수납')
   }else if($('#category2-3').val() == '302'){
         $('#product_category_name').val('선반유닛')
   }else if($('#category2-3').val() == '303'){
         $('#product_category_name').val('책장')
   }else if($('#category2-3').val() == '304'){
         $('#product_category_name').val('수납선반/유닛')
   }else if($('#category2-4').val() == '401'){
         $('#product_category_name').val('책상/컴퓨터책상')
   }else if($('#category2-4').val() == '402'){
         $('#product_category_name').val('침대협탁')
   }else if($('#category2-4').val() == '403'){
         $('#product_category_name').val('식탁세트')
   }else if($('#category2-4').val() == '404'){
         $('#product_category_name').val('화장대')
   }else if($('#category2-4').val() == '405'){
         $('#product_category_name').val('카페테이블')
   }else if($('#category2-5').val() == '501'){
         $('#product_category_name').val('거실장/찬장')
   }else if($('#category2-5').val() == '502'){
         $('#product_category_name').val('장식장')
   }else if($('#category2-5').val() == '503'){
         $('#product_category_name').val('수납장')
   }else if($('#category2-5').val() == '504'){
         $('#product_category_name').val('여닫이옷장')
   }else if($('#category2-6').val() == '601'){
         $('#product_category_name').val('미닫이옷장')
   }else if($('#category2-6').val() == '602'){
         $('#product_category_name').val('거울옷장')
   }else if($('#category2-6').val() == '603'){
         $('#product_category_name').val('드레스룸옷장')
   }else if($('#category2-6').val() == '604'){
         $('#product_category_name').val('선반형옷장')
   }else if($('#category2-6').val() == '605'){
         $('#product_category_name').val('사무용옷장')
   }else if($('#category2-7').val() == '701'){
         $('#product_category_name').val('식탁의자')
   }else if($('#category2-7').val() == '702'){
         $('#product_category_name').val('스툴/벤치')
   }else if($('#category2-7').val() == '703'){
         $('#product_category_name').val('바의자')
   }else if($('#category2-7').val() == '704'){
         $('#product_category_name').val('카페의자')
   }else if($('#category2-7').val() == '705'){
         $('#product_category_name').val()
   }
      
});