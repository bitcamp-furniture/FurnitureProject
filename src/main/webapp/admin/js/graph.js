window.onload = function(){
	//alert("여기 되니?")
	var ctx = document.getElementById("linechart").getContext('2d');
	$.ajax({
		type : 'post',
		url : '/furniture/admin/reviewLineChart',
		dataType:'json',
		success : function(data) {
			console.log(data);
			//alert(JSON.stringify(data.reviewdDay));
			//$.each(data.reviewdDay,function(index,items){
				var reviewLinChart = new Chart(ctx,{
					type: 'line',//'doughnut',//
					data: {
						labels:['7/3','7/4','7/5','7/6'],
						datasets:[{
							label:'리뷰수',
							data:data.reviewdDay,
							backgroundColor:"rgba(255, 201, 14, 0.5)",							
							borderColor: "rgba(255, 201, 14, 1)",
							fill:false,
							lineTension:0
				            //borderWidth: 1
						}]

					},
					options:{
						//responsive: false,
						scales:{
							yAxes:[{
								ticks:{
									/*beginAtZero: true,
							        min: 0,
							        max: 100,
							        stepSize: 20,*/
									suggestedMin: 0,
									suggestedMax: 5,
									stepSize: 1
									
								},
								scaleLable:{
									//display: true
									//labelString
								}
							}]
						}
					}
				});//reviewLinChart 차트 그리기
				
			//});//each
			
			
		},
		error : function(err) {
			alert("차트 에러떴다 ");
			console.log(err);
		}
	});

};
