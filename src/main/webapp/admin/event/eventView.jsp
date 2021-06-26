<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 
이벤트 목록 버튼  
삭제버튼

상품 리스트 >> 이미지 
상품 리스트 >> order
   	상품 상세페이지로 ... pg랑 id
-->


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/furniture/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/flaticon.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/barfiller.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="/furniture/css/main.css" type="text/css">



<style type="text/css">
#wholeDiv {
	margin: 0 auto;
	align-items: center;
	width: 700px;
}

#eventSubject {
	font-size: 2em;
	font-weight: bolder;
}

#eventTime {
	float: right;
}
</style>


<form id="eventViewForm">

	<div id="wholeDiv">
		<input type="hidden" name="id" value="${id }"> <input
			type="hidden" name="pg" value="${eventPg }"> <br> <br>

		<div id="eventSubject">${eventDTO.event_subject }</div>
		<div id="eventTime">${eventDTO.event_startDate }~
			${eventDTO.event_endDate }</div>
		<br> <br>
		<div id="eventDetailImg">
			<img src="/furniture/storage/event/${eventDTO.event_img_detail }">
		</div>

		<%-- <div id="eventContent">${eventDTO.event_content }</div> --%>


		<div class="cover_product_list" id="cover_product_list">
			<div class="row" id="product_list"></div>
			<%--이곳은 상품을 클릭한 리스트들이 들어온다 --%>
		</div>
		<!-- Product Section End -->
		<%--페이징을 만들것이야 이곳에다가 띄우기 --%>
		<div id="eventProductPaging"
			style="float: left; width: 100%; text-align: center;"></div>




	</div>
</form>


<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function() {
	var category = '${eventDTO.event_category}';
	var pg = '${eventPg}';
	$.ajax({
		type: 'post',
		url: '/furniture/main/getCategoryList',
		data: { 'category': category, 'pg':pg },
		dataType: 'json',
		success: function(data) {
			console.log(data);
			
			
		      $('.product_list').remove();
		      $('<div/>',{class: "row",id:"product_list"}).appendTo($('#cover_product_list'));
		         
		      $.each(data.selectList,function(index,items){
		         
		           $('<div/>', {class: "col-lg-4 col-md-6 col-sm-6"}).append($('<div/>', {class:"product__item"}).append($('<div/>',{class:"product__item__pic set-bg"})
		                   .append($('<a/>',{href: "/furniture/main/productView"}) 
		                 .append($('<img>',{id:"product_img_thumb",alt:items.product_name,src: "/furniture/storage/딸기.png"/*+items.product_img_thumb*/})))
		                      .append($('<ul/>',{class:"product__item__pic__hover"})
		                      
		                      )).append($('<div/>',{class:"product__item__text"}).append($('<h6/>',{id:"product_name",text: items.product_name})
		                        .append($('<a/>',{href: '#'}))).append($('<h5/>',{id:"product_price",text: "₩"+items.product_price.toLocaleString()}))))
		                      .appendTo($("#product_list"));
		          });
		         
		       $('#eventProductPaging').html(data.productPaging.pagingHTML);

			
		},
		error: function(err) {
			console.log(err);
		}
	});
});

</script>

