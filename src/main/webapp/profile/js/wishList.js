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
							$.each(data.list, function(index, items){
								alert(JSON.stringify(items));
							
								$('<li/>',{
									
								}).append($('<div/>',{
									class: 'imgDiv'
								}).append($('<a/>',{
									href: '#'
									//id: 'subjectA',
								}).append($('<img>',{
									class: 'wishlist-list-img',
									src: '/furniture/img/'+items
									
								}))).append($('<button/>',{
									class: 'wishlistDeletebutton',
									type: 'button',
									text: 'X'
								}))).appendTo($('#wishlist-list-container-ul'));
								
								
								
								
							}); //each
							
						},
						error: function(err){
							console.log(err);
							alert('실패');
						}
					}); //ajax
				}); //each
				
				
				
			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	}
});