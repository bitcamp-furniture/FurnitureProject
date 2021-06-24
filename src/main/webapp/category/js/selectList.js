//hero class안에 있는 li들을 클릭하면  해당 li text를 categoryName에 넣어준다
$(".hero li").on('click',function(){
   //alert($('#pg').val());
   var category = ($(this).text());
   //alert(category);
   
   location.href='/furniture/category/view/selectList?category='+category;
//   $.ajax({
//      type:'post',
//      url:'/furniture/category/view/selectList',
//      //categoryName과 pg값을 가지고 가자
//      data: {'category':categoryName,
//            'pg':$('#pg').val()},// pg
//      dataType:'json',
//      success:function(data){
//         console.log(data);
//         //console.log(JSON.stringify(data));
//         
//         $('.product_list').remove();
//         $('<div/>',{class: "row",id:"product_list"}).appendTo($('#cover_product_list'));
//            
//         $.each(data,function(index,items){
//             
//              $('<div/>', {class: "col-lg-4 col-md-6 col-sm-6"}).append($('<div/>', {class:"product__item"}).append($('<div/>',{class:"product__item__pic set-bg"})
//                       .append($('<img>',{id:"product_img_thumb",alt:items.product_name,src: "/furniture/category/storage/"+items.product_img_thumb}))
//                         .append($('<ul/>',{class:"product__item__pic__hover"})
//                               .append($('<li/>').append($('<a/>', {href:"#"}).append($('<i/>',{class:"fa fa-heart"}))))                                  
//                         
//                         )).append($('<div/>',{class:"product__item__text"}).append($('<h6/>',{id:"product_name",text: items.product_name})
//                           .append($('<a/>',{href: '#'}))).append($('<h5/>',{id:"product_price",text: items.product_price.toLocaleString()+"원"}))))
//                         .appendTo($("#product_list"));
//             });
//            
//          $('#selectCategoryPagingDiv').html(data.productPaging.pagingHTML);
//            
//      },
//      error: function(err) {
//         alert("셀렉트 오류")
//         console.log(err);
//      }
//   });

});   
