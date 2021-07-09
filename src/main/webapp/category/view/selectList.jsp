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

<br>
<select name="selectListSort" id="selectListSort">
    <option value="1">최신순</option>
	<option value="2">가격낮은순</option>
    <option value="3">가격높은순</option>
</select>
<br>
<p></p>
<input type="hidden" value="${key }" id="key">
<input type="hidden" value="${category }" id="category">
<input type="hidden" value="${pg }" id="pg">
<input type="hidden" value="${memId }" id="memid"/>

	<div class="cover_product_list" id="cover_product_list">
		<div class="row" id="product_list"></div>
	</div>        

    <div id="selectCategoryPagingDiv" style="float: left; width: 100%; text-align: center;" ></div>   


<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
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
				alert('위시리스트 추가 완료');
			},
			error : function(){
				alert("실패 :");
			}
		});
	}
}
</script>
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
      
      $('.product_list').remove();
      $('<div/>',{class: "row",id:"product_list"}).appendTo($('#cover_product_list'));
         
      $.each(data.selectList,function(index,items){
           $('<div/>', { class: "col-lg-4 col-md-6 col-sm-6" }).append($('<div/>', {class:"product__item"}).append($('<div/>',{class:"product__item__pic set-bg"})
           		.append($('<a/>',{
           					href: "/furniture/main/productView?id="+items.id+"&pg="+$('#pg').val()
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
         					href: "/furniture/main/productView?id="+items.id+"&pg="+$('#pg').val()
                    	}))).append($('<h5/>',{id:"product_price",text: "₩"+items.product_price.toLocaleString()}))))
                      .appendTo($("#product_list"));
           $('<input/>', {
        	   type: 'hidden',
        	   id: 'id',
        	   value: items.id
           }).appendTo($("#product_list"));
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
             					href: "/furniture/main/productView?id="+items.id+"&pg="+pg,
             					id:"product_name",
             					text: items.product_name
                            	 }))).append($('<h5/>',{id:"product_price",text: "₩"+items.product_price.toLocaleString()}))))
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

<script type="text/javascript">
$('#selectListSort').on('change', function() {
	// 1 최신순 2 가격낮은순 3 가격높은순
	$('#key').val( $(this).val() );
	selectListSort(1);
});


function selectListSort(pg) {
	// 1 최신순 2 가격낮은순 3 가격높은순
	$.ajax({
		type: 'post',
		url: '/furniture/category/view/sortedSelectList',
		data: { 'key' : $('#key').val(),
				'category':$('#category').val(),
			 	'pg' : pg },
		dataType: 'json',
		success: function(data) {
			console.log(data);
			
            $('#product_list').remove();
            $('<div/>',{class: "row",id:"product_list"}).appendTo($('#cover_product_list'));
               
            $.each(data.sortedSelectList, function(index, items){
               
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
             					href: "/furniture/main/productView?id="+items.id+"&pg="+pg,
             					id:"product_name",
             					text: items.product_name
                            	 }))).append($('<h5/>',{id:"product_price",text: "₩"+items.product_price.toLocaleString()}))))
                           .appendTo($("#product_list")); 
            }); // each
            
            $('#selectCategoryPagingDiv').html(data.sortedListPaging.pagingHTML);

		},
		error: function(err) {
			console.log(err);
		}
	});

}

</script>


