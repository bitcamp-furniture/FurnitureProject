$(document).on("click",".icon_heart",function(){
	alert($('#id').val());
	alert($('#memId').val());
	
	$.ajax({
		url : "/furniture/main/deleteWish",
		type : "post",
		data : {'id' : $('#id').val(),
				'memId' : $('#memId').val()
		},
		dataType : "text",
		success : function(data){
			//alert(selectWish);
			$(".heart__btn").html('');
			let html = '';
			html += '<span class="icon_heart_alt"></span>';
			$(".heart__btn").html(html);
		},
		error : function(){
			alert("실패 :");
		}
	});
});

$(document).on("click",".icon_heart_alt",function(){
	alert($('#id').val());
	alert($('#memId').val());
	if($('#memId').val() == '0'){
		alert("로그인이 필요한 서비스입니다.");
		location.href = "/furniture/member/loginForm";
	}else{
	$.ajax({
		url : "/furniture/main/addWish",
		type : "post",
		data : {'id' : $('#id').val(),
				'memId' : $('#memId').val()
		},
		dataType : "text",
		success : function(data){
			//alert(selectWish);
			$(".heart__btn").html('');
			let html = '';
			html += '<span class="icon_heart"></span>';
			$(".heart__btn").html(html);
		},
		error : function(){
			alert("실패 :");
		}
	});}
});