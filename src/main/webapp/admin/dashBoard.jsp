<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
#wholeDivChart div{
	margin: 5px;
}
#dailyToDO{
	border: 2px solid blue;
	height: 200px;
	width: 90%;
}
#chart1{
	float: left;
	width: 45%;
	display: inline-block;
}
#chart2{
	float: left;
	width: 45%;
	display: inline-block;
}
.clearing{
	clear: both;
}
#chart3{
	float: left;
	width: 45%;
	display: inline-block;
}
.chart3Recent{
	border: 1px solid lightgray;
	display: inline-block;
	float: left;
	height: 230px;
	width: 47%;
	background: white;
}
.chart3Recent p{
	padding: 5px;
	text-align: center;
}
.chart3Recent div{
	height: 80%;
}
#chart4{
	border: 1px solid lightgray;
	background: white;
	padding: 10px;
	float: left;
	width: 45%;
	display: inline-block;
}
.reviewA{
	text-decoration: none;
	color: black;
}
.qnaListCate{
	font-size: 0.8em;
	margin: 0;
	padding : 4px;
	color: white;
	border-radius: 5px;
}
.qnaListCate:hover{
	text-decoration: none;
	color: white;
	cursor: default;
}
#wait{
	background-color: SteelBlue;      
}
#done{
	background-color: LightSteelBlue;      
}
#dailySummaryDiv{
	width: 100%;
	height: 180px;
	border: 1px solid lightgray;
	background: white;
}
#dailySummaryTbl{
	margin-top: 2px;
	width: 90%;
	height: 95%;
}
</style>

<div id="wholeDivChart">
	
	<div id="dailyToDO">
		todo 요약본
	</div>


	<div id="chart1" align="center">
		<!--차트가 그려질 부분-->
		일간 매출 차트
		<canvas id="lineChart"></canvas>
	</div>
	<div id="chart2" align="center">
		일자별 요약
		<div id="dailySummaryDiv" align="center">
			<table id="dailySummaryTbl" cellspacing="3" cellpadding="2" border="1" 
			cellpadding="5" frame="hsides" rules="rows" align="center" >
				<tr>
					<th align="center">일자</th>
					<th align="center">주문</th>
					<th align="center">매출액</th>
					<th align="center">가입</th>
					<th align="center">문의</th>
					<th align="center">리뷰</th>
				</tr>
			</table>
		</div>
	</div>
	
	<p class="clearing"></p>
	<div id="chart3">
		<div class="chart3Recent" id="recentReview">
			<p><a class="reviewA" href="/furniture/admin/review">최신 리뷰</a></p>
			<div id="recentReviewDiv">
				<table id="recentReviewTbl" width="100%" cellpadding="0" cellspacing="10"></table>
			</div>
		</div>
		<div class="chart3Recent" id="recentQnA">
			<p><a class="reviewA" href="/furniture/admin/adminQNA">최신  문의</a></p>
			<div id="recentQnADiv">
			<table id="recentQnATbl" width="100%" ></table>			
			</div>
		</div>
	</div>
	<div id="chart4" align="center">		
		매출 상위 카테고리
		<canvas id="donutChart"></canvas>
	</div>
	
<br>	

</div>
<p class="clearing"></p>
<br>	


<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="/furniture/admin/js/dashboardGraph.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 최신 리뷰, 최신 문의 -->
<script src="/furniture/admin/js/dashboardRecentList.js"></script>
<script src="/furniture/admin/js/dashboardDailySum.js"></script>

 