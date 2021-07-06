$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/admin/getRecentList',
		dataType: 'json',
		success: function(data) {
			console.log(data);

			////////////////////////////////////////// 최신 리뷰
			$.each(data.lastReviewList, function(index, items){
				$('<tr/>').append($('<td/>',{
					rowspan: 2,
					width: '55px',
					height: '55px',
				}).append($('<img/>', {
					width: '50px',
					height: '50px',
					src: '/furniture/storage/'+items.review_image,
					alt: items.id
				}))).append($('<td/>',{
					text: items.product_name
				}))
				.appendTo($('#recentReviewTbl'));
				
				$('<tr/>').append($('<td/>',{
					text: items.review_content
				}))
				.appendTo($('#recentReviewTbl'));
				
				$('<tr/>').append($('<td/>',{
					colspan: 2,
					style: 'border-bottom: 1px solid lightgray; margin-bottom: 4px;'
				}))
				.appendTo($('#recentReviewTbl'));
			}); // each
			
			
			////////////////////////////////////////// 최신 문의
			$.each(data.lastQnAList, function(index, items){
				$('<tr/>').append($('<td/>',{
					width: '80%',
					height: '35px',
					text: items.subject
				})).append($('<td/>',{
					width: '20%',
					text: items.ask_category
				}))
				.appendTo($('#recentQnATbl'));
				
				$('<tr/>').append($('<td/>',{
					colspan: 2,
					style: 'border-bottom: 1px solid lightgray; margin-bottom: 4px;'
				}))
				.appendTo($('#recentQnATbl'));
			}); // each
			
		},
		error: function(err){
			console.log(err);
		}
	});
}); // onload

