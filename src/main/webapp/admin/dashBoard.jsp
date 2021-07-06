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
	border: 2px solid gold;
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
	border: 2px solid cyan;
	float: left;
	width: 45%;
	display: inline-block;
}
</style>

<div id="wholeDivChart">
	
	<div id="dailyToDO">
		dfzzd
	</div>


	<div id="chart1">
		<!--차트가 그려질 부분-->
		<canvas id="linechart"></canvas>
	</div>
	<div id="chart2">
		일별 요약본(표)
	</div>
	
	<p class="clearing"></p>
	<div id="chart3">
		<div class="chart3Recent" id="recentReview">
			<p>최신 리뷰</p>
			<div id="recentReviewDiv">
				<table id="recentReviewTbl" width="100%" cellpadding="0" cellspacing="10"></table>
			</div>
		</div>
		<div class="chart3Recent" id="recentQnA">
			<p>최신 문의</p>
			<div id="recentQnADiv">
			<table id="recentQnATbl" width="100%" ></table>			
			</div>
		</div>
	</div>
	<div id="chart4">
		fkfkfk
	</div>
	
	
	
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="/furniture/admin/js/graph.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 최신 리뷰, 최신 문의 -->
<script src="/furniture/admin/js/dashboardRecentList.js"></script>

 