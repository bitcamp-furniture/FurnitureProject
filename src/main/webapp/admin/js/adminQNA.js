$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/admin/getAskList',
		data: 'askPg='+$('#askPg').val(),
		dataType: 'json',
		success: function(data){
			//console.log(data);
			$.each(data.list, function(index, items){
				if(items.reply=='0'){
					$('<tr/>').append($('<td/>',{
						align:'center',
						text: items.seq
					})).append($('<td/>',{
						align:'center',
						text: items.ask_category
					})).append($('<td/>',{
						align:'center'
					}).append($('<a/>',{
						href: '#',
						align:'center',
						text: items.subject,
						id: 'subjectA'
					}))
					).append($('<td/>',{
						align:'center',
						text: items.created_at
					})).append(
							
							$('<td/>',{ align:'center'})
							.append($('<input/>',{
								align:'center',
								type: 'button',
								id: 'askBtn',
								name: 'askBtn',
								value: '답변하기'
							}))
							
					).appendTo($('#askListTable'));
					
				}else{
					$('<tr/>').append($('<td/>',{
						align:'center',
						text: items.seq
					})).append($('<td/>',{
						align:'center',
						text: items.ask_category
					})).append($('<td/>',{
						align:'center'
					}).append($('<a/>',{
						href: '#',
						align:'center',
						text: items.subject,
						id: 'subjectA'
					}))
					).append($('<td/>',{
						align:'center',
						text: items.created_at
					})).append(
							
							$('<td/>',{ align:'center'})
							.append($('<input/>',{
								align:'center',
								type: 'button',
								id: 'askDoneBtn',
								name: 'askDoneBtn',
								value: '답변완료'
							}))

					).appendTo($('#askListTable'));
				}//else end
				
				
		});//each
		
			$(document).on('click','#subjectA', function(){
				//alert($(this).parent().prev().prev().text());
				
				var seq = $(this).parent().prev().prev().text();
				window.open("/furniture/profile/askView?seq="+seq+"&askPg="+$('#askPg').val(), "a", "width=800, height=500, left=100, top=50");
				
				});
			
		$('#askPagingDiv').html(data.askPaging.pagingHTML);

	
		},
		error: function(err){
			console.log(err);
		}
			
			
			
		});
});




function askPaging(askPg){
    $("#askListTable tr:gt(0)").remove();
    //console.log(askPg);
	$.ajax({
		type: 'post',
		url: '/furniture/admin/getAskList',
		data: 'askPg='+askPg,
		dataType: 'json',
		success: function(data){
			//console.log(data);

			$.each(data.list, function(index, items){
				if(items.reply=='0'){
					$('<tr/>').append($('<td/>',{
						align:'center',
						text: items.seq
					})).append($('<td/>',{
						align:'center',
						text: items.ask_category
					})).append($('<td/>',{
						align:'center'
					}).append($('<a/>',{
						href: '#',
						align:'center',
						text: items.subject,
						id: 'subjectA'
					}))
					).append($('<td/>',{
						align:'center',
						text: items.created_at
					})).append(
							
							$('<td/>',{ align:'center'})
							.append($('<input/>',{
								align:'center',
								type: 'button',
								id: 'askBtn',
								name: 'askBtn',
								value: '답변하기'
							}))
							
					).appendTo($('#askListTable'));
					
				}else{
					$('<tr/>').append($('<td/>',{
						align:'center',
						text: items.seq
					})).append($('<td/>',{
						align:'center',
						text: items.ask_category
					})).append($('<td/>',{
						align:'center'
					}).append($('<a/>',{
						href: '#',
						align:'center',
						text: items.subject,
						id: 'subjectA'
					}))
					).append($('<td/>',{
						align:'center',
						text: items.created_at
					})).append(
							
							$('<td/>',{ align:'center'})
							.append($('<input/>',{
								align:'center',
								type: 'button',
								id: 'askDoneBtn',
								name: 'askDoneBtn',
								value: '답변완료'
							}))
							
					).appendTo($('#askListTable'));
				}//else end
				
				
		});//each

			$(document).on('click','#subjectA', function(){
				//alert($(this).parent().prev().prev().text());

				var seq = $(this).parent().prev().prev().text();
				window.open("/furniture/profile/askView?seq="+seq+"&askPg="+$('#askPg').val(), "a", "width=800, height=500, left=100, top=50");

				});

		$('#askPagingDiv').html(data.askPaging.pagingHTML);

		},
		error: function(err){
			console.log(err);
		}



		});

}

$(document).on('click','#askBtn', function(){
	//alert($(this).parent().prev().prev().prev().prev().text());
	var seq = $(this).parent().prev().prev().prev().prev().text();

	var nWidth = "700";
	var nHeight = "700";			  

	var xPos = (document.body.clientWidth / 2) - (nWidth / 2); 
	xPos += window.screenLeft;	 //듀얼 모니터
	var yPos = (screen.availHeight / 2) - (nHeight / 2);

	window.open("askAnswer.jsp?seq="+seq,"답변 작성","width="+nWidth+",height="+nHeight+", left="+xPos+", top="+yPos+", toolbars=no, resizable=no, scrollbars=no");

});