window.onload = function(){
   var line = document.getElementById("lineChart").getContext('2d');
   var pie = document.getElementById("donutChart").getContext('2d');
   $.ajax({
      type : 'post',
      url : '/furniture/admin/orderChart',
      dataType:'json',
      success : function(data) {
         //console.log(data);
            //라인 차트그리기 : 주문
            // 바 차트 :  매출
            var orderChart = new Chart(line,{
               type: 'bar',//'doughnut',//
               data: {      
                  labels:data.orderDay,
                  datasets:[{
                     type:'line',
                     label:'일간 주문건수',
                     data:data.orderCount,
                     backgroundColor:"rgb(255,215,0)",                     
                     borderColor: "rgb(255,215,0)",
                     fill:false,
                     lineTension:0
                        //borderWidth: 1
                  },{
                     type:'bar',
                     label:'일간매출',
                     data:data.orderSales,
                     backgroundColor:"rgb(30,144,255)",
                     borderColor:"rgb(30,144,255)",
                     fill:false,
                     lineTension:0                        
                  }]

               },
               options:{
                  //responsive: false,
                  scales:{
                     yAxes:[{
                        scaleLabel:{
                           labelString:'백만원단위',
                        },
                        ticks:{
                           suggestedMin: 0,
                           suggestedMax: 10,
                           stepSize: 5
                        }
                        
                     }]
                  }
               }
            });//차트 그리기
      },
      error : function(err) {
         alert("차트 에러떴다 ");
         console.log(err);
      }
   });
   $.ajax({
      type : 'post',
      url : '/furniture/admin/orderChart',
      dataType:'json',
      success : function(data) {
            //도넛 차트 : 카테고리별 매출
            var categoryChart = new Chart(pie,{
               type: 'doughnut',
               data: {      
                  labels:data.orderCateName,
                  datasets:[{
                     type:'doughnut',
                     label:data.orderCateSales,
                     data:data.orderCateSales,
                     backgroundColor:[
                        'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                     
                     borderColor: [
                        'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                     fill:false,
                     lineTension:0
                        //borderWidth: 1
                  }]

               },
               options:{               
                  legend:{
                     position:'right'
                     //display: false
                  }                  
               },
            
            });//차트 그리기
      },
      error : function(err) {
         alert("차트 에러떴다 ");
         console.log(err);
      }
   });

};
