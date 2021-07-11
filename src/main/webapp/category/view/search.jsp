<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
   .searchKeyword{
     font-size: 12px;
      border: solid;
      border-color: #8089BF; 
      outline: none;
   }
   .searchKeyword:active, .searchKeyword:focus{
      border: solid;
      border-color: #E5E9F5; 
   }
   .product__item__pic__hover a{
	cursor: pointer;
}
   
</style>

<input type="hidden" value="${keyword }" id="keyword">
<input type="hidden" value="${pg }" id="pg">
<input type="hidden" value="${memId }" id="memid"/>
<input type="hidden" value="${param.id }" id="id"/>
   <br>
   <div class="searchDiv" align="center">
      <input type="text" size="50" class="searchKeyword" value="${keyword }" onkeypress="if(event.keyCode == 13){goSearch();}"> &emsp;
      <a class="searchBtn" ><img src="/furniture/img/icon/search.png" alt="" style="cursor: pointer;"></a>
   </div>
   <br>

   <div class="cover_product_list" id="cover_product_list">
      <div class="row" id="product_list"></div>
   </div>        
    <!-- Product Section End -->
    <br>
    <div id="searchPagingDiv" style="float: left; width: 100%; text-align: center;" ></div>   
    
    
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/furniture/category/js/productWishList.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   searchPaging(1);
});

function searchPaging(pg){

   $.ajax({
         type:'post',
         url:'/furniture/category/view/getSearchList',
       data: {'keyword':$('#keyword').val(),
               'pg': pg},// pg
         dataType:'json',
         success:function(data){
            console.log(data);
            $('#product_list').remove();
            $('<div/>',{class: "row",id:"product_list"}).appendTo($('#cover_product_list'));
               
            if(data.searchList != ''){
               $('.cover_product_list h4').remove();

               $.each(data.searchList, function(index,items){
                  
                   $('<div/>', {class: "col-lg-4 col-md-6 col-sm-6"}).append($('<div/>', {class:"product__item"}).append($('<div/>',{class:"product__item__pic set-bg"})
                           .append($('<a/>',{
              					href: "/furniture/main/productView?id="+items.id+"&pg="+pg
                        	   }) 
                         .append($('<img>',{id:"product_img_thumb",alt:items.product_name,src: "/furniture/storage/"+items.product_img_thumb})))
                              .append($('<ul/>',{class:"product__item__pic__hover"})
                                    .append($('<li/>').append($('<a/>', {
                                    	onclick: 'addWish('+items.id+')'                      					
                                    }).append($('<i/>',{class:"fa fa-heart"}))))                                  
                              
                              )).append($('<div/>',{class:"product__item__text"}).append($('<h6/>')
                                .append($('<a/>',{
                                	id:"product_name",
                                	text: items.product_name,
                   					href: "/furniture/main/productView?id="+items.id+"&pg="+pg
                               }))).append($('<h5/>',{id:"product_price",text: "₩"+items.product_price.toLocaleString()}))))
                              .appendTo($("#product_list"));
                   });
                  
                $('#searchPagingDiv').html(data.productSearchPaging.pagingHTML);
                  
            } else {
               $('.cover_product_list').empty();
               $('#searchPagingDiv').empty();
               
               $('<h4/>', {
                  html: '<br>검색 결과가 존재하지 않습니다.',
                  align: 'center'
               }).appendTo($('.cover_product_list'));
            }
               
         },
         error: function(err) {
            alert("셀렉트 오류")
            console.log(err);
         }
      });
   
   
}


function productPaging(pg) {
   searchPaging(pg);
   
}


$('.searchBtn').click(function() {
   location.href="/furniture/category/view/search?keyword=" + $('.searchKeyword').val() +'&pg=1' 
});

function goSearch() {
    location.href="/furniture/category/view/search?keyword=" + $('.searchKeyword').val() +'&pg=1'
}

</script>

