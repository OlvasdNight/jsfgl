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
						<a>统计分析-饼状图</a>
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
							app.title = '饼状图';
							
							option = {
							    title : {
							        text: '男女人次消费比例',
							        subtext: '人次',
							        x:'center'
							    },
							    tooltip : {
							        trigger: 'item',
							        formatter: "{a} <br/>{b} : {c} ({d}%)"
							    },
							    legend: {
							        orient: 'vertical',
							        left: 'left',
							        data: [${values}]
							    },
							    series : [
							        {
							            name: '消费人次',
							            type: 'pie',
							            radius : '55%',
							            center: ['50%', '60%'],
							            data:[${datas}
							            ],
							            itemStyle: {
							                emphasis: {
							                    shadowBlur: 10,
							                    shadowOffsetX: 0,
							                    shadowColor: 'rgba(0, 0, 0, 0.5)'
							                }
							            }
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