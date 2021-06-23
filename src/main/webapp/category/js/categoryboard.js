//이미지등록 폼의 내용들을 다 보냄
$('#productboardWriteBtn').click(function()
{
	//1.단순 submit
	//$('#imageboardWriteForm').submit();
	
	//2.AJax통신
	//form안에 있는 모든것들을 객체로 만들 수 있게 도와주는 것이다.
	var formData = new FormData($('#productboardWriteForm')[0]); 
	$.ajax({
		type: 'post',
		url: '/furniture/category/view/productboardWrite',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data: formData,
		success: function(data){
			/*console.log(JSON.stringify(data));*/
			alert("상품등록 완료");
			/*location.href='/furniture/category/view/category.jsp';*/
			
		},
		error: function(err){
			console.log(err);
		}
	});
	
});



