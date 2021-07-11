function addWish(id) {
	if($('#memId').val() == '0'){
		alert("로그인이 필요한 서비스입니다.");
		location.href = "/furniture/member/loginForm";
	}else{

		$.ajax({
			url : "/furniture/main/addWish",
			type : "post",
			data : {'id' : id,
					'memId' : $('#memId').val()
			},
			dataType : "text",
			success : function(data){
				swal("성공!", "위시리스트에 상품을 추가하였습니다", "success");
			},
			error : function(){
				alert("실패 :");
			}
		});
	}
}