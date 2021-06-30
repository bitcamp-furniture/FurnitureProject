<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%--선택된 카테고리 리스트 뿌리기 --%>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
   <link rel="stylesheet" href="/furniture/category/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/style.css" type="text/css">

<style type="text/css">
   #paging{
      margin: 5px;
      padding : 2px 11px;
      color: darkblue;
      cursor: pointer;
   }
   #paging:hover{
      background-color: darkblue;      
      color: white;
      border-radius: 5px;
   }
   #currentPaging{
      margin: 5px;
      padding : 2px 11px;
      background-color: darkblue;      
      color: white;
      border-radius: 5px;
      cursor: pointer;
   }
</style>


<input type="hidden" value="${category }" id="category">

	<div class="cover_product_list" id="cover_product_list">
		<div class="row" id="product_list"></div>
	</div>        

    <div id="selectCategoryPagingDiv" style="float: left; width: 100%; text-align: center;" ></div>   


<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$.ajax({
   type:'post',
   url:'/furniture/category/view/getCategoryList',
   //categoryName과 pg값을 가지고 가자
   data: {'category':$('#category').val(),
         'pg':$('#pg').val()},// pg
   dataType:'json',
   success:function(data){
      console.log(data);
      //console.log(JSON.stringify(data));
      
      $('.product_list').remove();
      $('<div/>',{class: "row",id:"product_list"}).appendTo($('#cover_product_list'));
         
      $.each(data.selectList,function(index,items){
         
           $('<div/>', {class: "col-lg-4 col-md-6 col-sm-6"}).append($('<div/>', {class:"product__item"}).append($('<div/>',{class:"product__item__pic set-bg"})
           		.append($('<a/>',{href: "/furniture/main/productView"}) 
           		.append($('<img>',{id:"product_img_thumb",alt:items.product_name,src: "/furniture/storage/"+items.product_img_thumb})))
                      .append($('<ul/>',{class:"product__item__pic__hover"})
                            .append($('<li/>').append($('<a/>', {href:"#"}).append($('<i/>',{class:"fa fa-heart"}))))                                  
                      )).append($('<div/>',{class:"product__item__text"}).append($('<h6/>',{id:"product_name",text: items.product_name})
                      .append($('<a/>',{href: '#'}))).append($('<h5/>',{id:"product_price",text: "₩"+items.product_price.toLocaleString()}))))
                      .appendTo($("#product_list"));
      }); // each
      
         
      $('#selectCategoryPagingDiv').html(data.productPaging.pagingHTML);
         
       
   },
   error: function(err) {
      alert("셀렉트 오류")
      console.log(err);
   }
});

function productPaging(pg){
   $.ajax({
         type:'post',
         url:'/furniture/category/view/getCategoryList',
         //categoryName과 pg값을 가지고 가자
         data: {'category':$('#category').val(),
               'pg': pg},// pg
         dataType:'json',
         success:function(data){
            
           // $('#review_list_table tr:gt(0)').remove();
             // $('#review_list_table tr:eq(0)').remove();
            //console.log(data);
            //console.log(JSON.stringify(data));
            
            $('#product_list').remove();
            $('<div/>',{class: "row",id:"product_list"}).appendTo($('#cover_product_list'));
               
            $.each(data.selectList,function(index,items){
               
                $('<div/>', {class: "col-lg-4 col-md-6 col-sm-6"}).append($('<div/>', {class:"product__item"}).append($('<div/>',{class:"product__item__pic set-bg"})
                        .append($('<a/>',{href: "/furniture/main/productView"}) 
                      .append($('<img>',{id:"product_img_thumb",alt:items.product_name,src: "/furniture/category/storage/"+items.product_img_thumb})))
                           .append($('<ul/>',{class:"product__item__pic__hover"})
                                 .append($('<li/>').append($('<a/>', {href:"#"}).append($('<i/>',{class:"fa fa-heart"}))))                                  
                           
                           )).append($('<div/>',{class:"product__item__text"}).append($('<h6/>',{id:"product_name",text: items.product_name})
                             .append($('<a/>',{href: '#'}))).append($('<h5/>',{id:"product_price",text: "₩"+items.product_price.toLocaleString()}))))
                           .appendTo($("#product_list"));
                });
               
             $('#selectCategoryPagingDiv').html(data.productPaging.pagingHTML);
         },
         error: function(err) {
            alert("셀렉트 오류")
            console.log(err);
         }
      });
}


</script>