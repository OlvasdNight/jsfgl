<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<link href="<%=path %>/bootstrap/css/bootstrap.min.css?v=3.3.5" rel="stylesheet" />
		<link href="<%=path %>/bootstrap/css/font-awesome.min.css?v=4.4.0" rel="stylesheet" />
		<link href="<%=path %>/bootstrap/css/plugins/iCheck/custom.css" rel="stylesheet">
		<link href="<%=path %>/bootstrap/css/animate.min.css" rel="stylesheet" /> 
		<link href="<%=path %>/bootstrap/css/style.min.css?v=4.0.0" rel="stylesheet" />
			
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
			<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
		<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
		<script type="text/javascript" charset="utf-8" src="<%=path%>/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="<%=path%>/ueditor.all.min.js"> </script>
		<script type="text/javascript" charset="utf-8" src="<%=path%>/lang/zh-cn/zh-cn.js"></script>
		
		
	</head>

	<body class="gray-bg">
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
                        <h5>查看公告</h5>
                        <div class="ibox-tools">
                            <button type="button"  onClick="javascript :history.back(-1);"  class="btn btn-default"><i class="fa fa-arrow-left"></i>返&nbsp;&nbsp;回</button>
                        </div>
                    </div>
		        	<div class="ibox-content">
					<form style=" width: 950px;margin: 0 auto;">
						
                        <div class="text-center article-title">
                            <h1>
                              	${gonggao.name}
                            </h1>
                             <p>
	                           	 日 期:${gonggao.cdate}&nbsp;&nbsp;/&nbsp;&nbsp;发布人：${gonggao.uname}
	                        </p>
                        </div>
                        <p>
                            ${gonggao.miaoshu}
                        </p>
                       
                        
						
					</form>
					</div>
				</div>
			</div>
		</div>
		
	</body>
</html>