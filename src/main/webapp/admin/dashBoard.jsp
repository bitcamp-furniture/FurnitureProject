<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
#wholeDivChart div{
	margin: 10px;
}
#dailyToDO{
	border: 2px solid blue;
	height: 200px;
	width: 90%;
}
#chart1{
	border: 1px solid red; 
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
	border: 2px solid purple;
	float: left;
	width: 45%;
	display: inline-block;
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
		<div id="recentReview"></div>
		<div id="recentQnA"></div>
	</div>
	<div id="chart4">
		fkfkfk
	</div>
	
	
	
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="/furniture/admin/js/graph.js"></script>

 