//두 개다 필요한 이유 select로 선택할때마다 계속 함수들을 호출해야하기 때문

//정렬1 
function reviewAdminSort1() 
{
	
	reviewAdminSortPaging(1);
}
//정렬2
function reviewAdminSort2() 
{
	reviewAdminSortPaging(1);
}

function reviewAdminSortPaging(pg)
{
	var pg = pg
	var sort1 = document.getElementById("sort1");
	sort1 = sort1.options[sort1.selectedIndex].value;
	var sort2 = document.getElementById("sort2");
	sort2 = sort2.options[sort2.selectedIndex].value;

	//여기서 오름차순 내림차순으로 나눠서 보내
	if(sort2 == "asc")
	{
		$.ajax({
			type:'post',
			url:'/furniture/admin/adminReviewASCList',
			data:{'sort1':sort1,
				  'pg':pg},
			dataType:'json',
			success: function(data){
				console.log(data);
				$('#reviewListTable tr:gt(0)').remove();
				
				$.each(data.adminreviewSelectList, function(index, items) {
					$('<tr/>').append($('<td/>',{
						align: 'center',
						width: '50'
					}).append($('<input/>',{
						//여기가 체크 박스  input타입
						type: 'checkbox',
						name: 'check',
						value: items.id
					}))).append($('<td/>',{
						//게시글
						align: 'center',
						width: '50',
						text: items.id
					})).append($('<td/>',{
						//상품명
						align: 'center',
						width: '100',
						text: items.product_name
						
					})).append($('<td/>',{
						//상품 이미지
						align: 'center',
						width: '100',
					}).append($('<img/>',{
						src: '/furniture/storage/review/'+items.review_image,
						style: 'width: 80px; height: 80px; cursor: pointer;',
						class:'img_'+items.id
					}))).append($('<td/>',{
						//내용(짤려져 나올지 안나올지 봐야함)
						align: 'center',
						width: '300',
						text: items.review_content
					})).append($('<td/>',{
						//작성자
						align: 'center',
						width: '100',
						text: items.email
					})).append($('<td/>',{
						//작성일
						align: 'center',
						width: '100',
						text: items.created_at
					})).append($('<td/>',{
						//평점 이건 또  foreach돌려야 할지도 모른다 이따 평점 관련해서 별 어떻게 출력했는지 확인할것 
						align: 'center',
						width: '50',
						text: items.review_stars
					})).appendTo($('#reviewListTable'));
		
				}); // each
				
				// 페이징 처리 boardPagingDiv
				$('#reviewPagingDiv').html(data.adminreviewSelectListPaging.pagingHTML);
				
			},
			error: function(err) {
				alert("관리자페이지 리뷰 전송실패")
				//console.log(err);
			}
			
		});
	}
	//내림차순으로 보내기
	else if(sort2 == "desc")
	{
	
		$.ajax({
			type:'post',
			url:'/furniture/admin/adminReviewDESCList',
			data:{'sort1':sort1,
				  'pg':pg},
			dataType:'json',
			success: function(data){
				console.log(data);
				$('#reviewListTable tr:gt(0)').remove();
				
				$.each(data.adminreviewSelectList, function(index, items) {
					$('<tr/>').append($('<td/>',{
						align: 'center',
						width: '50'
					}).append($('<input/>',{
						//여기가 체크 박스  input타입
						type: 'checkbox',
						name: 'check',
						value: items.id
					}))).append($('<td/>',{
						//게시글
						align: 'center',
						width: '50',
						text: items.id
					})).append($('<td/>',{
						//상품명
						align: 'center',
						width: '100',
						text: items.product_name
						
					})).append($('<td/>',{
						//상품 이미지
						align: 'center',
						width: '100',
					}).append($('<img/>',{
						src: '/furniture/storage/review/'+items.review_image,
						style: 'width: 80px; height: 80px; cursor: pointer;',
						class:'img_'+items.id
					}))).append($('<td/>',{
						//내용(짤려져 나올지 안나올지 봐야함)
						align: 'center',
						width: '300',
						text: items.review_content
					})).append($('<td/>',{
						//작성자
						align: 'center',
						width: '100',
						text: items.email
					})).append($('<td/>',{
						//작성일
						align: 'center',
						width: '100',
						text: items.created_at
					})).append($('<td/>',{
						//평점 이건 또  foreach돌려야 할지도 모른다 이따 평점 관련해서 별 어떻게 출력했는지 확인할것 
						align: 'center',
						width: '50',
						text: items.review_stars
					})).appendTo($('#reviewListTable'));
		
				}); // each
				
				// 페이징 처리 boardPagingDiv
				$('#reviewPagingDiv').html(data.adminreviewSelectListPaging.pagingHTML);
				
			},
			error: function(err) {
				alert("관리자페이지 리뷰 전송실패")
				//console.log(err);
			}
			
		});
	}
}
