$('#wishlist-tap').click(function(){
	if($('#id').val() !== ''){
		$.ajax({
			url: '/furniture/profile/getWishlist',
			type: 'post',
			data: 'id=' +$('#id').val(),
			dataType: 'json',
			success: function(data){
				alert(JSON.stringify(data));
				
				$.each(data.list, function(index, items){
					alert(JSON.stringify(items.member_id));
					
					$.ajax({
						url: '/furniture/profile/getWishlistImage',
						type: 'post',
						data: 'member_id=' + items.member_id,
						dataType: 'json',
						success: function(data){
							alert(JSON.stringify(data));
							
							
							
						},
						error: function(err){
							console.log(err);
							alert('실패');
						}
					}); //ajax
				});
				
				
				
			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	}
});