$('#wishlist-tap').click(function(){
	//$(this).parent().remove(); return false;
	$('.wishlistLi *').remove();

	if($('#id').val() !== ''){
		$.ajax({
			url: '/furniture/profile/getWishlist',
			type: 'post',
			data: {'id': $('#id').val(),
					'wishlistPg': $('#wishlistPg').val(),
			},
			dataType: 'json',
			success: function(data){
				//alert(JSON.stringify(data));

				$.each(data.list, function(index, items){
					//alert(JSON.stringify(items));

					$('<li/>',{
						class: 'wishlistLi'
					}).append($('<div/>',{
						class: 'imgDiv'
					}).append($('<a/>',{
						href: '#',
						//id: 'subjectA',
					}).append($('<img>',{
						class: 'wishlist-list-img _'+items.id,
						src: '/furniture/img/'+items.product_img_thumb

					}))).append($('<button/>',{
						class: 'wishDelBtn wishlistDeletebutton_'+items.id,
						type: 'button',
						text: 'X'
					}))).appendTo($('#wishlist-list-container-ul'));


					$(document).on('click', '.wishlistDeletebutton_'+items.id, function(){
						alert(items.id);

						$.ajax({
							url: '/furniture/profile/choiceDelete',
							type: 'post',
							data: 'id=' + items.id,
							success: function(){
								alert('삭제 성공');
								location.href='/furniture/profile/profile';
							},
							error: function(err){
								console.log(err);
								alert('삭제 실패');
							}
						}); //ajax

					}); //선택삭제

				}); //each

				//페이징 처리
				$('#wishlistPagingDiv').html(data.wishlistPaging.pagingHTML);

			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	}
});

//---------------------------------------------------------------

function wishlistPaging(wishlistPg){
	$('.wishlistLi *').remove();
	//alert(wishlistPg);

	$.ajax({
		type: 'post',
		url: '/furniture/profile/getWishlist',
		data: {'id': $('#id').val(),
			   'wishlistPg': wishlistPg,
		},
		dataType: 'json',
		success: function(data){
			alert(JSON.stringify(data));

			$.each(data.list, function(index, items){
				$('<li/>',{
					class: 'wishlistLi'
				}).append($('<div/>',{
					class: 'imgDiv'
				}).append($('<a/>',{
					href: '#',
					//id: 'subjectA',
				}).append($('<img>',{
					class: 'wishlist-list-img _'+items.id,
					src: '/furniture/img/'+items.product_img_thumb

				}))).append($('<button/>',{
					class: 'wishDelBtn wishlistDeletebutton_'+items.id,
					type: 'button',
					text: 'X'
				}))).appendTo($('#wishlist-list-container-ul'));


				$(document).on('click', '.wishlistDeletebutton_'+items.id, function(){
					alert(items.id);

					$.ajax({
						url: '/furniture/profile/choiceDelete',
						type: 'post',
						data: 'id=' + items.id,
						success: function(){
							alert('삭제 성공');
							location.href='/furniture/profile/profile';
						},
						error: function(err){
							console.log(err);
							alert('삭제 실패');
						}
					}); //ajax

				}); //선택삭제

			});//each

			$('#wishlistPagingDiv').html(data.wishlistPaging.pagingHTML);

		},
		error: function(err){
			console.log(err);
		}


	});

}

//---------------------------------------------------------------
$('.wishlistTotalDeletebutton').click(function(){
	alert($('#id').val());

	$.ajax({
		url: '/furniture/profile/totalDelete',
		type: 'post',
		data: 'memberId=' +$('#id').val(),
		success: function(){
			alert('삭제 성공');
			location.href='/furniture/profile/profile';
		},
		error: function(err){
			console.log(err);
			alert('삭제 실패');
		}
	}); //ajax

}); //전체삭제