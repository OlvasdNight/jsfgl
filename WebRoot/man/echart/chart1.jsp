<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"  %> 
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/wukong-ui.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-select.min.css">
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap-select.min.js"></script>
	</head>

	<body class="gray-bg">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb wk-breadcrumb">
					<li>
						<a>首页</a>
					</li>
					<li>
						<a>统计分析-柱状图</a>
					</li>
				</ul>
			</div>
		</div>
		
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default  wk-panel">
					<div class="weadmin-body">
						<div id="container" style="height: 600px; width: 900px;padding: 30px;"></div>
						<script type="text/javascript"
							src="<%=path%>/js/echarts.common.min.js"></script>
						<script type="text/javascript">
							var dom = document.getElementById("container");
							var myChart = echarts.init(dom);
							var app = {};
							option = null;
							app.title = '环形图';
							
							
							option = {
							    color: ['#3398DB'],
							    tooltip : {
							        trigger: 'axis',
							        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
							            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
							        }
							    },
							    grid: {
							        left: '3%',
							        right: '4%',
							        bottom: '3%',
							        containLabel: true
							    },
							    xAxis : [
							        {
							            type : 'category',
							            data : ['20岁以下', '20-30岁', '30-40岁', '40-50岁','50-60岁', '60岁以上'],
							            axisTick: {
							                alignWithLabel: true
							            }
							        }
							    ],
							    yAxis : [
							        {
							            type : 'value'
							        }
							    ],
							    series : [
							        {
							            name:'消费人次',
							            type:'bar',
							            barWidth: '60%',
							            data:[${datas}]
							        }
							    ]
							};
							
							
							if (option && typeof option === "object") {
								myChart.setOption(option, true);
							}
						</script>
			
			
			
			
					
					</div>  
				</div>
			</div>
		</div>

		

	</body>
</html>