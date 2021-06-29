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
    

                    <div class="hero__item set-bg" data-setbg="/furniture/category/image/hero/banner.png">
                        <div class="hero__text">
                            <span>편안한 침대</span>
                            <h2>숙면보장<br />푹신푹신한 침대</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="http://localhost:8080/furniture/category/view/selectList?category=%EC%86%8C%ED%8C%8C%EB%B2%A0%EB%93%9C" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
     

    	<br><br>
    <!-- Banner Begin -->
	<div class="banner">
        <div class="container">
            <div class="row" id="banner_pic">
                
            </div>
           
        </div>
    </div>
 
    <!-- Categories Section End -->
		<br><br>
  		<div class="featured__title">
          <h2>남다른 퀄리티의 IKEZKE</h2>
        </div>
	<%-- 전체상품리스트 6개만 넣어두고 페이징 할 곳 --%> 
	<div id="cover_product_list">
    	<div class="row" id="product_list"></div>

    </div>        
    

    <!-- Hero Section End -->

    <!-- Js Plugins -->
    <script src="/furniture/category/js/jquery-3.3.1.min.js"></script>
    <script src="/furniture/category/js/bootstrap.min.js"></script>
    <script src="/furniture/category/js/jquery.nice-select.min.js"></script>
    <script src="/furniture/category/js/jquery-ui.min.js"></script>
    <script src="/furniture/category/js/jquery.slicknav.js"></script>
    <script src="/furniture/category/js/mixitup.min.js"></script>
    <script src="/furniture/category/js/owl.carousel.min.js"></script>
    <script src="/furniture/category/js/main.js"></script>
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">  
window.onload=(function() {
    $.ajax({
       type:'post',
       url:'/furniture/category/view/getAllList',
       dataType: 'json',
       success:function(data){
          //console.log(JSON.stringify(data));
          //console.log(data); 
          $('#product_list').remove();
          $('<div/>',{class: "row",id:"product_list"}).appendTo($('#cover_product_list'));
          // 모든 리스트 넣는 곳
             $.each(data.allList,function(index,items){
             
               $('<div/>', {class: "col-lg-4 col-md-6 col-sm-6"}).append($('<div/>', {class:"product__item"}).append($('<div/>',{class:"product__item__pic set-bg"})
                        .append($('<img>',{id:"product_img_thumb",alt:items.product_name,src: "/furniture/category/storage/"+items.product_img_thumb}))
                          .append($('<ul/>',{class:"product__item__pic__hover"})
                                .append($('<li/>').append($('<a/>', {href:"#"}).append($('<i/>',{class:"fa fa-heart"}))))   
                          
                          )).append($('<div/>',{class:"product__item__text"}).append($('<h6/>',{id:"product_name",text: items.product_name})
                            .append($('<a/>',{href: '#'}))).append($('<h5/>',{id:"product_price",text: items.product_price.toLocaleString()+"원"}))))
                          .appendTo($("#product_list"));
               
              });
          //배너 넣는 곳
            $.each(data.AllListBanner,function(index,items){
               console.log(data); 
                $('<div/>',{class:"col-lg-6 col-md-6 col-sm-6"})
                         .append($('<div/>',{class:"banner__pic"})
                       .append($('<a/>',{href:'/furniture/main/eventView?id='+items.id})
                         .append($('<img/>',{src:"/furniture/storage/event/"+items.event_img_banner, alt:"item.event_img_banner"}))))
               $('<div/>',{class:"col-lg-6 col-md-6 col-sm-6"}).append($('<div/>',{class:"banner__pic"})
                     .append($('<a/>',{href:'/furniture/main/eventView?id='+items.id})
                      .append($('<img/>',{src:"/furniture/storage/event/"+items.event_img_banner, alt:"item.event_img_banner"}))))
                .appendTo($("#banner_pic"));
             }); 
         
       },
       error: function(err) {
          console.log("얼리스트 오류남");
       }
    });
 }); 
	</script>
    
