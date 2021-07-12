window.onload = function(){
   var tongye = document.getElementById("tongyeChart").getContext('2d');
  
   $.ajax({
      type : 'post',
      url : '/furniture/admin/tongyeChart',
      dataType:'json',
      success : function(data) {
         console.log(data);
            //라인 차트그리기 : 매출 1위 2위 3위 4위 카테고리  
            var tongyeChart = new Chart(tongye,{
            	  type: 'line',
            	  data: {      
                      labels:["Red"],
                      datasets:[{
                         type:'line',
                         label:'일간 주문건수2',
                         data:data.orderCateFirst,
                         backgroundColor:"rgb(255,215,0)",                     
                         borderColor: "rgb(255,215,0)",
                         fill:false,
                         lineTension:0
                            //borderWidth: 1
                      },{
                          type:'line',
                          label:'일간매출1(백만원단위)',
                          data:data.orderCateSecond,
                          backgroundColor:"rgb(30,144,225)",
                          borderColor:"rgb(30,144,225)",
                          fill:false,
                          lineTension:0                        
                       },
                       {
                           type:'line',
                           label:'일간매출2(백만원단위)',
                           data:data.orderCateThird,
                           backgroundColor:"rgb(30,144,235)",
                           borderColor:"rgb(30,144,235)",
                           fill:false,
                           lineTension:0                        
                        },
                        {
                            type:'line',
                            label:'4순위',
                            data:data.orderCateFourth,
                            backgroundColor:"rgb(30,144,245)",
                            borderColor:"rgb(30,144,245)",
                            fill:false,
                            lineTension:0                        
                         }
                       ]
                   }
            	});
      },
      error : function(err) {
         alert("차트 에러떴다 ");
         console.log(err);
      }
   });
}
   