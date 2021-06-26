	$(function(){
			$.ajax({
				type : 'post',
				url : '/furniture/profile/getAskView',
				data : 'seq=' + $('#seq').val(),
				dataType : 'json',
				success : function(data){
					$('#image1').attr('src', 'storage/' + data.askDTO.image1);
					$('#ask_categorySpan').text(data.askDTO.ask_category);
					$('#subjectSpan').text(data.askDTO.subject);
					$('#seqSpan').text(data.askDTO.seq);
					$('#emailSpan').text(data.askDTO.email);
					$('#contentSpan').text(data.askDTO.content);
					$('#nameSpan').text(data.askDTO.name);
					$('#created_atSpan').text(data.askDTO.created_at);
					$('#order_numberSpan').text(data.askDTO.order_number);

				},
				error : function(err){
					console.log(err);
				}
			});
		});