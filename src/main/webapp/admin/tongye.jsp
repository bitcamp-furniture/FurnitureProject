<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
#chart1{
	float: left;
	background: white;
	width: 90%;
	display: inline-block;
}
</style>
<br>
<br>
<div id="chart1" align="center">
		<!--차트가 그려질 부분-->
		<h3>카테고리별 매출 추이</h3>
		<br>
		<br>
		<canvas id="tongyeChart"></canvas>
		
	</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/furniture/admin/js/tongyeGraph.js"></script>