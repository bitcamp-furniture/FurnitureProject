<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
a{
	text-decoration: none;
}
#subjectA:link {  text-decoration: none; }
#subjectA:visited {  text-decoration: none; }
#subjectA:hover { color:darkblue; text-decoration: underline; cursor: pointer; }
#subjectA:active {  text-decoration: none; }
#list a:hover{  text-decoration: underline; }
#sort1{
	font-size: 15px;
}
#sort2{
	font-size: 15px;
}

#choiceDeleteBtn {
	border-radius:5px;
	border: 1px solid darkblue; 
	background-color: rgba(0,0,0,0); 
	color: darkblue; 
	padding: 5px;
	font-size: 15px;
	margin-left: 15%;
}
#choiceDeleteBtn:hover {
	color:white;
	background-color: darkblue;
}
#paging {
	margin: 5px;
	padding: 5px 11px;
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
	padding: 5px 11px;
	background-color: darkblue;
	color: white;
	border-radius: 5px;
	cursor: pointer;
}
#reviewSortTable{
	width: 80%;
	font-size: 15px;
	text-align: center;
}
#reviewListTable{
	width: 80%;
	font-size: 15px;
	text-align: center;

}
#reviewListTable th{
	text-align: center;

}
#reviewListTable a{
	text-decoration: none;
	color: black;
}

</style>



<br>
<h2 align="center">리뷰관리</h2>
<br>
<form name="reviewDeleteForm" id="reviewDeleteForm" method="get" action="adminReviewListwDelete">
<input type="hidden" value="${pg}" id="pg" >
<table align="center" id="reviewSortTable">
	<tr>
		<td>
		<select id="sort1" onchange="reviewAdminSort1()">
			<option value="id">글번호순</option>
			<option value="created_at">날짜순</option>
			<option value="product_name">상품이름순</option>
			<option value="email">아이디순</option>
			<option value="review_stars">평점순</option>
		</select> 
		<select id="sort2" onchange="reviewAdminSort2()">
			<option value="desc">내림차순</option>
			<option value="asc">오름차순</option>
		</select>
		</td>
	</tr>

</table>
<br>
<br>
<table id="reviewListTable" border="1" cellpadding="5" frame="hsides" rules="rows" align="center" >
		<tr>
		<!-- (상품ID), 상품이름, 리뷰이미지, 작성자ID, 리뷰내용, 별점, 등록일 -->
			<th width="50"><input type="checkbox" id="checkAllRe">전체</th>
			<th width="100">게시글 No</th>
			<th width="100">상품명</th>
			<th width="100">상품이미지</th>
			<th width="300">내용</th>
			<th width="100">작성자</th>
			<th width="100">작성일</th>
			<th width="50">평점</th>
		
		</tr>
	</table>
	<br>
<div id="choiceDeleteDiv" align="left">
<input type="button" value="선택삭제" id="choiceDeleteBtn">
</div>
<br>
<br>
	<div align="center" id="reviewPagingDiv"></div>
<br>
<br>  
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/furniture/admin/js/reviewAdmin.js"></script>
<script type="text/javascript">
 $(function() {
	reviewPaging(1);
	
});
 //전체 삭제 버튼
$('#checkAllRe').click(function() {
		if($('#checkAllRe').prop('checked')){
			$('input[name=check]').prop('checked', true);
		}else{
			$('input[name=check]').prop('checked', false);
		}
});
//선택삭제
 $('#choiceDeleteBtn').click(function() {
		var count =  $('input[name=check]:checked').length;
		
		if(count==0){
			alert("삭제할 항목이 없습니다!");
		} else{
			if(confirm("정말로 삭제합니까?")){
				$('#reviewDeleteForm').submit();
			}
		}
	});
//리뷰 페이징
function reviewPaging(pg)
{
	$.ajax({
		type:'post',
		url:'/furniture/admin/adminReviewList',
		data:{'pg':pg},
		dataType:'json',
		success: function(data){
			//console.log(data);
			
			$('#reviewListTable tr:gt(0)').remove();
			//$('#reviewListTable tr:eq(0)').remove();
			
			$.each(data.adminReviewList, function(index, items) {
				$('<tr/>').append($('<td/>',{
					align: 'center',
					//width: '50'
				}).append($('<input/>',{
					//여기가 체크 박스  input타입
					type: 'checkbox',
					name: 'check',
					value: items.id
				}))).append($('<td/>',{
					//게시글
					align: 'center',
					//width: '50',
					text: items.id
				})).append($('<td/>',{
					//상품명
					align: 'center',
					width: '100'
					
				}).append($('<a/>',{
					href: '/furniture/main/productView?id='+items.product_id,
					text: items.product_name
				}))).append($('<td/>',{
					//상품 이미지
					align: 'center',
					//width: '100',
				}).append($('<img/>',{
					src: '/furniture/storage/review/'+items.review_image,
					style: 'width: 80px; height: 80px; cursor: pointer;',
					class:'img_'+items.id
				}))).append($('<td/>',{
					//내용(짤려져 나올지 안나올지 봐야함)
					align: 'center',
					//width: '300',
					html: items.review_content
				})).append($('<td/>',{
					//작성자
					align: 'center',
					//width: '100',
					text: items.email
				})).append($('<td/>',{
					//작성일
					align: 'center',
					//width: '100',
					text: items.created_at
				})).append($('<td/>',{
					//평점 이건 또  foreach돌려야 할지도 모른다 이따 평점 관련해서 별 어떻게 출력했는지 확인할것 
					align: 'center',
					//width: '50',
					text: items.review_stars
				})).appendTo($('#reviewListTable'));
	
			}); // each
			
			// 페이징 처리 boardPagingDiv
			$('#reviewPagingDiv').html(data.adminreviewPaging.pagingHTML);
			
		},
		error: function(err) {
			console.log(err);
		}
	});
}

</script>