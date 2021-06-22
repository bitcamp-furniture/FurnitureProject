<style type="text/css">
td{
	padding-top: 0; padding-bottom: 0;
	margin-top: 0;
}
</style>


<table>
	<tr>
		<td>ffd</td>
		<td>ffd</td>
	</tr>
	<tr>
		<td>ffd</td>
		<td>ffd</td>
	</tr>
	<tr>
		<td>ffd</td>
		<td>ffd</td>
	</tr>
	<tr>
		<td style="border-bottom: 1px solid black; border-bottom-color: black;">ffd</td>
		<td>ffd</td>
	</tr>
</table>

<script src="text/script">
$.ajax(function(){
	type: 'get',
	url: '',
	success: function() {
		 
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
	},
	error: function(err) {
		console.log(err);
	}
     });

	
});
</script>