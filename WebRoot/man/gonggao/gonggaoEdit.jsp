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
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/wukong-ui.css">
		<link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-select.min.css">
		<script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap-select.min.js"></script>
			
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
			<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
		<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
		<script type="text/javascript" charset="utf-8" src="<%=path%>/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="<%=path%>/ueditor.all.min.js"> </script>
		<script type="text/javascript" charset="utf-8" src="<%=path%>/lang/zh-cn/zh-cn.js"></script>
		
		
	</head>

	<body>
		
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb wk-breadcrumb">
					<li>
						<a>首页</a>
					</li>
					<li>
						<a>公告管理</a>
					</li>
					<li>
						<a>修改公告</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel " style="overflow: hidden;">
					<div class="panel-heading">
						修改公告
					</div>
					<form action="<%=path%>/gonggaoEdit.action" name="formAdd"
						method="post">
						<div class="panel-body" >
							<input name="cdate" type="hidden" value="${gonggao.cdate}" />
							<input name="id" type="hidden" value="${gonggao.id}" />
							<input name="uid" type="hidden"  value="${gonggao.uid}"/>
							<input name="usertype" type="hidden"  value="${gonggao.usertype}"/>
							<div class="form-inline">
								<div>
									<label class="control-label wk-filed-label">
										公告标题:
									</label>
									<div class="input-group" style="width:1050px">
										<textarea rows="2" id="name"  name="name" type="text" class="form-control wk-normal-input"
											placeholder="请输公告标题" maxlength="200">${gonggao.name }</textarea>
										
									</div>
								</div>
		
								<div>
									<label class="control-label wk-filed-label">
										公告内容:
									</label>
									<div class="input-group" style="width:850px">
										<input type="hidden" name="miaoshu" id="miaoshu" />
										<script id="container" type="text/plain" style="width:1050px;height:300px;"></script>
										
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
											
									</label>
									<div class="input-group">
										<input type="button" onclick="check()" class="btn  wk-btn" value="保&nbsp;&nbsp;存" />
										
										<input class="btn  wk-btn" type="button" onClick="javascript :history.back(-1);" value="取&nbsp;&nbsp;消"  />
									
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script language="javascript">
		
			
		    var ue = UE.getEditor('container');
	        ue.ready(function() {
			    //设置编辑器的内容
			    ue.setContent('${gonggao.miaoshu}');
			    
			});
			
        
	        function check(){
	           var htmlv = ue.getContent();
	           var name = document.getElementById("name").value;
	           if(name==null || name==""){
	               alert("标题不能为空");
	               return false;
	           }
	          
	           
	           if(htmlv==null || htmlv==""){
	               alert("请输入公告内容信息");
	               return false;
	           }
	           document.getElementById("miaoshu").value = htmlv;
	           document.forms['formAdd'].submit();
	           
	        }
		    
		   
        </script>
	</body>
</html>