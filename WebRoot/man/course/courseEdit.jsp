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
		
		<script language="javascript">
			function up(){
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
	            //另一红上传方式可以参照进销存
		    }
			 function check(){                                                                   
			     if(document.formAdd.name.value==""){
				 	alert('请输入课程名称');
					return false;
				 }
				 if(document.formAdd.jiage.value==""){
				 	alert('请输入课程收费');
					return false;
				 }
				 
				 if(document.formAdd.time.value==""){
				 	alert('请输入课程时间');
					return false;
				 }
				 if(document.formAdd.miaoshu.value==""){
				 	alert("请输入描述");
					return false;
				 }
				  if(document.formAdd.url.value==""){
				 	alert("请上传图片");
					return false;
				 }
				 document.formAdd.submit();
			 }
			
			
		    
		    
        </script>		
	</head>

	<body>
		
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb wk-breadcrumb">
					<li>
						<a>首页</a>
					</li>
					<li>
						<a>课程管理</a>
					</li>
					<li>
						<a>修改课程信息</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default wk-panel " style="overflow: hidden;">
					<div class="panel-heading">
						修改课程信息
					</div>
					<form action="<%=path%>/courseEdit.action" name="formAdd"
						method="post">
						<div class="panel-body" style="float: left; width: 600px;">
							<input name="id" type="hidden" value="${course.id}" />
							<input name="state" type="hidden" value="${course.state}" />
							<input name="usertype" type="hidden" value="${course.usertype}" />
							
							<div class="form-inline">
								<div>
										<label class="control-label wk-filed-label">
											项目名称:
										</label>
										<div class="input-group" style="width:450px">
											<select class="wk-select" name="xmid" style="width: 450px">
												<c:forEach items="${xiangmuList}" var="xm" varStatus="sta">
													<option  <c:if test="${xm.id==course.xmid}">selected </c:if>  value="${xm.id}">${xm.name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									
									
									<div>
										<label class="control-label wk-filed-label">
											教练名称:
										</label>
										<div class="input-group" style="width:450px">
											<select class="wk-select" name="coachid" style="width: 450px">
												<c:forEach items="${coachList}" var="coa" varStatus="sta">
													<option  <c:if test="${coa.id==course.coachid}">selected </c:if>  value="${coa.id}">${coa.name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
							
								<div>
									<label class="control-label wk-filed-label">
										课程名称:
									</label>
									<div class="input-group" style="width:450px">
										<input required="required" name="name" type="text"
											class="form-control wk-normal-input" value="${course.name}" />
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										课程收费:
									</label>
									<div class="input-group" style="width:450px">
										<input required="required" name="jiage" type="text"
											onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') " 
											maxlength="6"  value="${course.jiage}"
											class="form-control wk-normal-input" />
									</div>
								</div>
								
								<div>
										<label class="control-label wk-filed-label">
											课程时间:
										</label>
										<div class="input-group" style="width:450px">
											<input required="required" name="time" type="text" value="${course.time }"
												class="form-control wk-normal-input" maxlength="50"/>
										</div>
									</div>

								<div>
									<label class="control-label wk-filed-label">
										描述:
									</label>
									<div class="input-group" style="width:450px">
										<textarea required="required" name="miaoshu"  rows="6"
											class="form-control wk-normal-input" placeholder="请输入描述信息">${course.miaoshu}</textarea>
									</div>
								</div>
								
								<div>
									<label class="control-label wk-filed-label">
										上传图片:
									</label>
									
									<div class="input-group" style="width:450px">
										<input required="required" name="url" id="fujian" type="text" style="width:390px"
											class="form-control wk-normal-input" readonly="readonly" value="${course.url}" />
										<input type="button" value="上传" onclick="up()" style="margin: 10px 0px"/>
					        			<input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>
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
						
						<div style="float:left;width: 410px;border: 1px solid #C9C9C9;height: 300px;margin-top:10px">
							
							<img class="layui-upload-img " id="tupian" src="<%=path %>/${course.url}" style="width:410px;max-height: 300px;">
						</div>
						
					</form>
				</div>
			</div>
		</div>

	</body>
</html>