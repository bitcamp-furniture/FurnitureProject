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
				}).append($('<a/>', {
					class: 'reviewA',
					href: '/furniture/admin/review'
				}).append($('<img/>', {
					width: '50px',
					height: '50px',
					src: '/furniture/storage/'+items.review_image,
					alt: items.id
				})))).append($('<td/>').append($('<a/>', {
					text: items.product_name,
					class: 'reviewA',
					href: '/furniture/admin/review'
				})))
				.appendTo($('#recentReviewTbl'));
				
				$('<tr/>').append($('<td/>').append($('<a/>',{
					text: items.review_content.substring(0, 12)+'...',
					class: 'reviewA',
					href: '/furniture/admin/review'
				})))
				.appendTo($('#recentReviewTbl'));
				
				$('<tr/>').append($('<td/>',{
					colspan: 2,
					style: 'border-bottom: 1px solid lightgray; margin-bottom: 4px;'
				}))
				.appendTo($('#recentReviewTbl'));
			}); // each
			
			
			////////////////////////////////////////// 최신 문의
			$.each(data.lastQnAList, function(index, items){
				var status = 'wait';
				var statusTXT = '대기';
				if(items.reply == 0){ 
					status = 'wait';
					statusTXT = '대기';
				}else{ 
					status = 'done'; 
					statusTXT = '완료';
				}
				
				$('<tr/>').append($('<td/>',{
					width: '80%',
					height: '35px'
				}).append($('<a/>',{
					text: items.subject.substring(0, 12)+'...',
					class: 'reviewA',
					href: '/furniture/admin/review'
				}))).append($('<td/>',{
					width: '20%'
				}).append($('<a/>',{
					class: 'qnaListCate',
					id: status,
					text: statusTXT
				})))
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

