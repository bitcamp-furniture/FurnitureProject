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
                      labels:data.ordeCaterDay,
                      datasets:[{
                         type:'line',
                         //100
                         label:'침대',
                         data:data.orderCateFirst,
                         backgroundColor:"rgb(255,215,0)",                     
                         borderColor: "rgb(255,215,0)",
                         fill:false,
                         lineTension:0
                            //borderWidth: 1
                      },{
                          type:'line',
                          //200
                          label:'소파',
                          data:data.orderCateSecond,
                          backgroundColor:"rgba(52, 31, 151, 1)",
                          borderColor:"rgba(52, 31, 151, 1)",
                          fill:false,
                          lineTension:0                        
                       },
                       {
                           type:'line',
                           //300                      
                           label:'책장/선반',
                           data:data.orderCateThird,
                           backgroundColor:"rgba(16, 172, 132, 1)",
                           borderColor:"rgba(16, 172, 132, 1)",
                           fill:false,
                           lineTension:0                        
                        },
                        {
                            type:'line',
                            //400
                            label:'식탁/책상',
                            data:data.orderCateFourth,
                            backgroundColor:"rgba(10, 189, 227, 1)",
                            borderColor:"rgba(10, 189, 227, 1)",
                            fill:false,
                            lineTension:0                        
                         },
                         {
                             type:'line',
                             //500
                             label:'수납장/장식장',
                             data:data.orderCateFifth,
                             backgroundColor:"rgba(238, 82, 83, 1)",
                             borderColor:"rgba(238, 82, 83, 1)",
                             fill:false,
                             lineTension:0                        
                          }
                         ,
                         {
                             type:'line',
                             //600
                             label:'옷장',
                             data:data.orderCateSixth,
                             backgroundColor:"rgba(243, 104, 224, 1)",
                             borderColor:"rgba(243, 104, 224, 1)",
                             fill:false,
                             lineTension:0                        
                          },
                          {
                              type:'line',
                              //700
                              label:'의자',
                              data:data.orderCateSeventh,
                              backgroundColor:"rgba(255, 159, 67, 1)",
                              borderColor:"rgba(255, 159, 67, 1)",
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
   