

function selectListAjax(categoryName){
   //alert(categoryName);
   $.ajax({
      type:'post',
      url:'/furniture/category/view/SelectList',
      data: {category:categoryName},
      dataType:'json',
      success:function(data){
         //$('#table tr').remove();
         console.log(JSON.stringify(data));
         
         $.each(data,function(index,items){
        			 
        	$('<div/>', {
        		class:'col-lg-6'
        		}).append($('<div/>', {
        			class:'testimonial__item'
        			}).append($('<div/>', {
	        			class:'testimonial__author'
	        			}).append($('<div/>', {
	        				class:'testimonial__author__pic'
	        			}).append($('<img/>',{
	        				src: '침대.png'
	        			}))).append($('<div/>', {
	        				class:'testimonial__author__text'
	        				}).append($('<h5/>',{
	        					text: '리뷰작성자'
	        				})).append($('<span/>',{
	        					text: '거주지???'
	        		})))).append($('<div/>',{
	        			class: 'rating'
	        		})).append($('<p/>',{
	        			text: '상품평'
	        		}))).appendTo($('.testimonial__slider owl-carousel'));
        	 
         });
                 
         
         
         
         
         
         
         
      },
      error: function(err) {
         console.log(err);
      }
   });
}