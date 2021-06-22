// 상품 문의 등록 버튼 클릭 시 유효성 검사 .. 작성
$('.qna_write_btn').click(function() {
   $('.qna_write_div').empty();
   
   if($('.qna_write_subject').val() == ''){
      $('.qna_write_div').text('제목을 입력하세요');
      $('.qna_write_div').css('color','red');
      $('.qna_write_div').css('font-size','8pt');
      $('.qna_write_div').css('font-weight','bold');
   }else if($('.qna_write_content').val()== ''){
      $('.qna_write_div').text('내용을 입력하세요');
      $('.qna_write_div').css('color','red');
      $('.qna_write_div').css('font-size','8pt');
      $('.qna_write_div').css('font-weight','bold');
   }else {
      $.ajax({
         type:'post',
         url:'/furniture/main/productQnAWrite',
         data:{
            'qna_subject':$('.qna_write_subject').val(),
            'qna_content':$('.qna_write_content').val()
         },
         success:function(){
            alert('글쓰기 성공');
            $('.qna_write_subject').val('');
            $('.qna_write_content').val('');
            product_qna_paging();
         },
         error: function(err){
            console.log(err);
         }
         
      });
   }
});


// productView 로드 시 onload로 상품 문의 리스트를 페이징까지 로드
$(function(){
	product_qna_paging();
});


//productView 로드 시 onload로 상품 문의 리스트를 페이징까지 로드
$(function(){
product_qna_paging();
});




//상품 문의 페이지 선택 시 리스트를 삭제, 해당 페이지를 리로드
function product_qna_paging(pg) {
//리스트를 맨 윗줄만 남기고 지우고 누른 페이지를 기준으로 다시 계산해서 
//리스트를 불러와야 한다. 그리고 그걸 다시 뿌려준다.
$.ajax({
 type:'post',
 url:'/furniture/main/productQnAListPaging',
 data: { 'pg' : pg },
 dataType:'json',
 success:function(data){
       console.log(JSON.stringify(data));
       
       $('.qna_list_table tr:gt(0)').remove();

    $.each(data.productQnAList, function(index,items){
       var writerEmail = items.email;

       $('<tr/>', {
    	   style: 'background-color: #f5f7ff;'
       }).append($('<td/>',{
          align:'center',
          text:items.id,
          id:'qnaDTO_id_td'
       })).append($('<td/>').append($('<a/>',{
          class:'qnaDTO_subject_td'+items.id,
          href:'javascript:void(0)',
          text:items.qna_subject
          }))
       ).append($('<td/>',{
          align:'center',
          text: writerEmail.slice(0, 2)+'***'
       })).append($('<td/>',{
          align:'center',
          text:items.created_atQ
       })).append($('<td/>',{
          align:'center',
          text:items.reply
          
       })).appendTo($('.qna_list_table'));
       
     //내용
       
       $('<tr/>',{
          class:'qna_content'+items.id,
             id:'qna_content'
       }).append($('<td/>',{
          align:'left',
          text:items.qna_content,
          colspan: '5'
       })).appendTo($('.qna_list_table'));
    
       if(items.reply != 0){
    $('<tr/>',{
          class:'qna_answer'+items.id,
             id:'qna_answer'
       }).append($('<td/>',{
             align:'left',
          text:items.qna_answer,
          colspan: '3'
       })).append($('<td/>',{
             align:'center',
          text:items.created_atA
       })).append($('<td/>',{
       })).appendTo($('.qna_list_table'));
       }
       
       $('.qna_content'+items.id).hide();
       $('.qna_answer'+items.id).hide();
       
       $('.qnaDTO_subject_td'+items.id).click(function(){
          $('.qna_content'+items.id).toggle();
           if(items.reply != 0){

          $('.qna_answer'+items.id).toggle();}
       });
       
    });//each  
    
    //페이징 처리
    $('#qna_listPagingDiv').html(data.product_qna_paging.pagingHTML);
    },
    error: function(err){
       console.log(err);
    }
});
}




//productView 로드 시 onload로 리뷰 리스트를 페이징까지 로드
$(function(){
	review_paging();
});


// 상품 리뷰에서 페이지 선택 시 리스트를 삭제, 해당 페이지를 리로드
function review_paging(pg) {
	$.ajax({
		type:'post',
		url:'/furniture/main/reviewList',
		data: { 'pg' : pg },
		dataType:'json',
		success:function(data){
			console.log(data);
            $('#review_list_table tr:gt(0)').remove();
            $('#review_list_table tr:eq(0)').remove();

			$.each(data.reviewList, function(index,items){
				var writerEmail = items.email;
				var stars = ''; 
				for(i=1; i<=items.review_stars; i++){
					stars = stars + '★';
				}
				
				$('<tr/>').append($('<td/>', {
					colspan: 3,
					text: ''
				})).appendTo($('#review_list_table'));
				
				$('<tr/>').append($('<td/>', {
					
					rowspan: 5
				}).append($('<img/>',{
					width: '250',
					src: '/furniture/storage/' + items.review_image // +
				}))).appendTo($('#review_list_table'));
				
				$('<tr/>', {
					height: '30px'
				}).append($('<td/>', {
					width: '30%',
					align: 'right',
					text: writerEmail.slice(0, 2)+'***'
				})).append($('<td/>', {
					width: '30%',
					align: 'right',
					text: items.created_at
				})).appendTo($('#review_list_table'));
				
				$('<tr/>').append($('<td/>', {
					colspan: 2,
					class: 'no_padding',
					text: items.product_name
				})).appendTo($('#review_list_table'));
				
				$('<tr/>').append($('<td/>', {
					colspan: 2,
					class: 'no_padding',
					text: stars
				})).appendTo($('#review_list_table'));
				
				$('<tr/>').append($('<td/>', {
					colspan: 2
				}).append($('<pre/>', {
					align: 'left',
					text: items.review_content
				}))).appendTo($('#review_list_table'));
				
				$('<tr/>').append($('<td/>', {
					colspan: 3,
					text: '',
					style: 'border-bottom: 1px solid black;'
				})).appendTo($('#review_list_table'));
				
				
			});//each  
			
			//페이징 처리
			$('#review_listPagingDiv').html(data.review_paging.pagingHTML);
		},
		error: function(err){
			console.log(err);
		}
		
	});
}

