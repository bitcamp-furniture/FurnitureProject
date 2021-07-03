<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
#selectProductDiv{
	border: 1px solid #c6c6c6;
	width: 700px;
	padding: 5px;
}
</style>

<form id="productManagingForm" name="productManagingForm" method="get" action="productListDelete">
	<div id="wholeDiv" align="center">
		<br>
		<h1 >상품 목록</h1>
		<div align="left" style="margin-left: 30px;" >
			<input type="button" id="productDeleteBtn" value="선택삭제">
			<input type="button" onclick="location.href='/furniture/admin/productRegistrationView'" value="상품등록" >
		</div>
		<br>
		<div id="selectProductDiv">
			<label for="cate-select">카테고리</label>
			
			<select name="sortCate" id="cate-select">
			    <option value="all">전체보기</option>
			    <option value="100">침대</option>
			    <option value="200">소파</option>
			    <option value="300">책장/선반유닛</option>
			    <option value="400">식탁/책상</option>
			    <option value="500">수납장/장식장</option>
			    <option value="600">옷장</option>
			    <option value="700">의자</option>
			</select>
			
			&emsp;
			
			&nbsp;
			<input type="radio" name="sortProduct" checked="checked" id="sort-select" value="1" />
				<span class="up">가격높은순</span>
			<input type="radio"  name="sortProduct" id="sort-select" value="2" />
				<span class="up">가격낮은순</span>
			<input type="radio"  name="sortProduct" id="sort-select" value="3" />
				<span class="up">평점높은순</span>
			<input type="radio"  name="sortProduct" id="sort-select" value="4" />
				<span class="up">평점낮은순</span>
			&nbsp; &emsp;
			<input type="button" id="productSortBtn" value="검색">
			

		</div>
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
//////////////////////// 전체선택, 선택삭제 ////////////////////////////
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
	
	
//////////////////////// 정렬 ////////////////////////////

	$('#productSortBtn').click(function() {
		var selectCate = $('select[name=sortCate]').val();
		var selectProduct = $('input[name=sortProduct]:checked').val();
		
		//alert("selectCate="+selectCate+" selectProduct="+selectProduct);
		$.ajax({
			type: 'post',
			url: '/furniture/admin/product/sortProduct',
			data: { 'selectCate' : selectCate, 
					'selectProduct' : selectProduct,
					'productPg' : $('#productPg').val() },
			dataType: 'json',
			success: function(data) {
				//console.log(data)
				//alert(JSON.stringify(data));
				$('#productManagingTbl tr:gt(0)').remove();
				
				if(selectProduct == '1' || selectProduct == '2'){
					// 가격순
					getSortedProductListPRICEreview(data);
				} else if(selectProduct == '3' || selectProduct == '4'){
					// 리뷰순
					getSortedProductListCATEreview(data);
				}
				
			},
			error: function(err) {
				console.log(err);
			}
		});
		
	});
	
	
</script>


<script type="text/javascript">
// 가격순 정렬 선택시 (1,2)
function getSortedProductListPRICEreview(data) {
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

}


//리뷰순 정렬 선택시 (3,4)
function getSortedProductListCATEreview(data) {
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
			text: items.review.toFixed(1),
			class: 'product_tbl_reviewAvg'+items.id
		})).appendTo($('#productManagingTbl'));
		
		$.ajax({
			type : 'post',
			url : '/furniture/admin/product/getProductColorReview',
			data : { 'id' : items.id },
			dataType : 'json',
			success: function(dblData) {
				$('.product_tbl_colors'+items.id).text(  dblData.productColors  );
			},
			error : function(error) {
				console.log(error); 
			}
		});
		
	}); // each
}

</script>
