var chart1Labels = [];
var chart1adopt = [];
var chart1home = [];
var chart1free = [];

$(document).ready(function(){
	getTimeStamp();

	$.ajax({ 
		url : '/admin/reviewLineChart',
		type : 'post',
		dataType : 'json', 
		contentType : 'application/json;charset=utf-8',
		success : function(map) {
			console.log(map);
			if(map.reviewdDay != null && map.reviewdDay != ""){
				console.log("reviewdDay")
				console.log(map.reviewdDay)
			$.each(map.reviewdDay, function(index, item){		
					chart1adopt.push(item.write_count);
					chart1Labels.push(item.write_date.substr(2,8));

			});
		}//map.chart1
	}
		
});	

})//ready
function lineChart(){
	console.log("linechart")
	console.log(chart1adopt)
	console.log("툴팁")
	console.log(chart1Labels)
var ctx = $('#linechart').get(0).getContext('2d');
var linedata =
{
    labels: chart1Labels,
    datasets:
        [{
        	labels: '리뷰',
            borderColor: 'rgba(255, 99, 132, 1.5)',
            fill: false,
            data: chart1adopt
        }]
       
};
var lineoptions = {
		responsive: true,
		legend : {
			display: false
		},
		title: { 
			display: true, 
			text: '     일간리뷰현황', 
			fontSize: 17, 
			fontColor: 'rgba(46, 49, 49, 1)' 
		},
		animation: false,
		tooltips: {
            displayColors: false, // 툴팁 바 컬러 표시 여부
            titleFontColor: '#fff', // 툴팁 폰트 관련
            titleAlign: 'center', // 툴팁 폰트 관련
            bodyAlign : 'center',
            callbacks: {
                label: function(tooltipItem, data) {
                       var item = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];
                       var label = data.datasets[tooltipItem.datasetIndex].labels;
                       return label + ' : '+item;
                  }
             }
    }
};
		
var lineChart = new Chart(ctx,{          
	type: 'line',
	data: linedata,
	options: lineoptions
});
}//line chart
