$('#wishlist-tap').click(function(){
	//$(this).parent().remove(); return false;
	$('.wishlistLi *').remove();

	if($('#id').val() != ''){
		wishlistPaging(1);
		/*$.ajax({
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
						href: "/furniture/main/productView?id="+items.product_id+"&pg=1"
						//id: 'subjectA',
					}).append($('<img>',{
						class: 'wishlist-list-img _'+items.id, 
						src: '/furniture/storage/'+items.product_img_thumb
					}))).append($('<button/>',{
						class: 'wishDelBtn wishlistDeletebutton_ '+items.id,
						type: 'button',
						text: 'X'
					}))).appendTo($('#wishlist-list-container-ul'));
				}); //each

				//페이징 처리
				$('#wishlistPagingDiv').html(data.wishlistPaging.pagingHTML);

			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
		*/
	}
});

//---------------------------------------------------------------
//페이징처리
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
			//alert(JSON.stringify(data));
			$.each(data.list, function(index, items){
				$('<li/>',{
					class: 'wishlistLi'
				}).append($('<div/>',{
					class: 'imgDiv'
				}).append($('<a/>',{
					href: "/furniture/main/productView?id="+items.product_id+"&pg=1"
					//id: 'subjectA',
				}).append($('<img>',{
					class: 'wishlist-list-img _'+items.id,
					src: '/furniture/storage/'+items.product_img_thumb
				}))).append($('<button/>',{
					class: 'wishDelBtn wishlistDeletebutton_ '+items.id,
					type: 'button',
					text: 'X'
				}))).appendTo($('#wishlist-list-container-ul'));
			});//each

			$('#wishlistPagingDiv').html(data.wishlistPaging.pagingHTML);

		},
		error: function(err){
			console.log(err);
		}


	});

}

//---------------------------------------------------------------------
//삭제
$(document).on('click', '.wishlistDeletebutton_ ', function(){
	//alert($(this).attr('class').slice(32));
	$.ajax({
		url: '/furniture/profile/choiceDelete',
		type: 'post',
		data: 'id=' + $(this).attr('class').slice(32),
		success: function(){
        	swal("상품을 삭제하였습니다.", "");
			$('#wishlist-tap').trigger('click');
		},
		error: function(err){
			console.log(err);
			alert('삭제 실패');
		}
	}); //ajax

});
//---------------------------------------------------------------
//전체삭제
$('.wishlistTotalDeletebutton').click(function(){
	//alert($('#id').val());
	$.ajax({
		url: '/furniture/profile/totalDelete',
		type: 'post',
		data: 'memberId=' +$('#id').val(),
		success: function(){
        	swal("상품을 삭제하였습니다.", "");
			$('#wishlist-tap').trigger('click');
		},
		error: function(err){
			console.log(err);
			alert('삭제 실패');
		}
	}); //ajax

}); //전체삭제