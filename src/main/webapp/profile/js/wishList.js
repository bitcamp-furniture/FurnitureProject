$('#wishlist-tap').click(function(){
	if($('#id').val() !== ''){
		$.ajax({
			url: '/furniture/profile/getWishlist',
			type: 'post',
			data: 'id=' +$('#id').val(),
			dataType: 'json',
			success: function(data){
				alert(JSON.stringify(data));
				
			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	}
});