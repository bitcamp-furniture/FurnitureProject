$(function(){
	$.ajax({
		type:'post',
		url: '/furniture/admin/dailySummary',
		dataType:'json',
		success: function(data) {
			console.log(data)
			
			// dailySummaryTbl
		    $.each(data.dailyList, function(index, items){
		    	$('<tr/>').append($('<td/>',{
		    		text: items.Daily
		    	})).append($('<td/>',{
		    		
		    	}).append($('<a/>',{
		    		href: '/furniture/admin/주문관리',
		    		text: items.product_count
		    	}))).append($('<td/>',{
		    		text: items.product_price
		    		
		    	})).append($('<td/>',{
		    		text: items.join_count
		    		
		    	})).append($('<td/>',{
		    		text: items.ask_count
		    		
		    	})).append($('<td/>',{
		    		text: items.review_count
		    		
		    	}))
		    	.appendTo($('#dailySummaryTbl'));
		    	
		    }); // each
		},
		error: function(err) {
			console.log(err)
		}
		
	});
});