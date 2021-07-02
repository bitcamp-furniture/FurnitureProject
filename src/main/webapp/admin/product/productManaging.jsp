<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 상품관리:
기능:
-삭제
-등록(링크버튼)
-정렬(카테고리별/가격순/등록순/
-상품상세페이지로 이동(a, 링크)
 -->
<style type="text/css">
#wholeDiv {
	width: 95%;
}

#productManagingListPagingDiv {
	align-items: center;
}

#paging {
	margin: 5px;
	padding: 9px 11px;
	color: darkblue;
	cursor: pointer;
}

#paging:hover {
	background-color: darkblue;
	color: white;
	border-radius: 5px;
}

#currentPaging {
	margin: 5px;
	padding: 9px 11px;
	background-color: darkblue;
	color: white;
	border-radius: 5px;
	cursor: pointer;
}
.product_tbl_name a{
	color: black; 
}
</style>

<form id="productManagingForm" method="get" action="productListDelete">
<div id="wholeDiv" align="center">
<br>
<br>
<h1 >상품 목록</h1>
<br>
	<input type="hidden" value="${productPg }" id="productPg">
	<div id="productManagingDiv">
		<table id="productManagingTbl" width="95%" border="1" cellspacing="0"
			cellpadding="5" frame="hsides" rules="rows">
			<thead>
				<tr>
					<!-- 7개 -->
					<th width="50px"><input type="checkbox" id="checkAllPRO" >전체</th>
					<th width="50px">No.</th>
					<th width="80px">상품코드</th>
					<th width="250px">상품명</th>
					<th width="80px">가격</th>
					<th width="100px">색상</th>
					<th width="80px">카테고리</th>
					<th width="80px">고객평점</th>
				</tr>
			</thead>
		</table>
		<br>
		<input type="button" id="productDeleteBtn" value="삭제">
	</div>
	<br>
	<br>
	<div align="center" id="productManagingListPagingDiv"></div>
</div>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		getProductManagingList(1);
	});
	
	
	function getProductManagingList(pg) {
		$.ajax({
			type : 'post',
			url : '/furniture/admin/product/getProductManagingList',
			data : { 'productPg' : pg },
			dataType : 'json',
			success : function(data) {
				console.log(data);
				
				//$('#productManagingDiv').remove();
				$('#productManagingTbl tr:gt(0)').remove();


				$.each(data.productList, function(index, items){
					$('<tr/>').append($('<td/>',{
						align: 'center'
					}).append($('<input/>',{
						align: 'center',
						type: 'checkbox',
						name: 'check',
						value: items.id
					}))).append($('<td/>',{
						text: items.id,
						align: 'center',
						align: 'center',
						class: 'product_tbl_id'
					})).append($('<td/>',{
						text: items.product_code,
						align: 'center',
						class: 'product_tbl_code'
					})).append($('<td/>',{
						align: 'center',
						class: 'product_tbl_name'
						}).append($('<a/>',{
							text: items.product_name,
							align: 'center',
							href: '/furniture/main/productView?id='+items.id
					}))).append($('<td/>',{
						text: '₩'+items.product_price.toLocaleString(),
						align: 'center',
						class: 'product_tbl_price'
					})).append($('<td/>',{
						align: 'center',
						class: 'product_tbl_colors'+items.id
					})).append($('<td/>',{
						text: items.product_category_name,
						align: 'center',
						class: 'product_tbl_cateName'
					})).append($('<td/>',{
						align: 'center',
						class: 'product_tbl_reviewAvg'+items.id
					})).appendTo($('#productManagingTbl'));
					
					$.ajax({
						type : 'post',
						url : '/furniture/admin/product/getProductColorReview',
						data : { 'id' : items.id },
						dataType : 'json',
						success: function(dblData) {
							$('.product_tbl_reviewAvg'+items.id).text(dblData.productReviewAvg.toFixed(1));
							
							$('.product_tbl_colors'+items.id).text(  dblData.productColors  );
						},
						error : function(error) {
							console.log(error); 
						}
					});
					
				}); // each

				$('#productManagingListPagingDiv').html(data.productManagingListPaging.pagingHTML);

			},
			error : function(err) {
				console.log(err);
			}
		});

	}
</script>

<script type="text/javascript">

	$('#checkAllPRO').click(function() {
	      if($('#checkAllPRO').prop('checked')){
	          $('input[name=check]').prop('checked', true);
	       }else{
	          $('input[name=check]').prop('checked', false);
	       }
	});
	
	$('#productDeleteBtn').click(function() {
		var count =  $('input[name=check]:checked').length;
	       
		if(count==0){
			alert("삭제할 항목이 없습니다!");
		} else{
			if(confirm("정말로 삭제합니까?")){
				$('#productManagingForm').submit();
			}
		}

	});
</script>
<!--

//-->
</script>
