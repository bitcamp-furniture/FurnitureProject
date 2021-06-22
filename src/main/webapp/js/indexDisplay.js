// 메인 페이지 ... display가 없을 경우 review를 끌어와 슬라이드로 돌린다 
// 최신순 5개만!!!
$(function(){
	$.ajax({
		type:'post',
		url:'/furniture/main/reviewListTop5',
		dataType:'json',
		success:function(data){
			console.log(data);

			$.each(data.reviewListTop5, function(index,items){
				var writerEmail = items.email;
				var stars = ''; 
				for(i=1; i<=items.review_stars; i++){
					stars = stars + '★';
				}
				items.review_stars = stars;
				items.email = writerEmail.slice(0, 2)+'***';
				
			});//each  
		},
		error: function(err){
			console.log(err);
		}
	});
});

