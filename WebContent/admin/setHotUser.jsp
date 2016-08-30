<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

if(session.getAttribute("login")==null){ 	
	response.sendRedirect(basePath+"login.jsp"); 
} 
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设置推荐网红</title>

<link rel="shortcut icon" href="<%=basePath %>ico/favicon.ico">
<link href="<%=basePath %>css/model.css" rel="stylesheet">
<link href="<%=basePath %>bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script src="<%=basePath %>jquery/jquery-1.11.3.min.js"></script>
<script src="<%=basePath %>bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath %>js/holder.js"></script>
<script src="<%=basePath %>js/application.js"></script>
</head>

<body class="index">
	<!-- 
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<jsp:include page="header_show.jsp" flush="true"></jsp:include>
 -->
	<div class="container docs-container">
		<div class="row">

			<div class="col-md-3">
				<jsp:include page="menu.jsp" flush="true"></jsp:include>
			</div>

			<div class="col-md-9">
				<div class="page-header">
					<h1>
						推荐网红 <small>设置</small>
					</h1>
				</div>

				<form action="addHotUser.action" class="form-horizontal">
					<div class="form-group">
						<label for="hotUser" class="col-sm-2 control-label"
							style="text-align: left">选择网红：</label>
						<div class="col-sm-5">
							<select name="hotUser" class="form-control">	
								<option></option>					
								<s:iterator value="hotUserList" var="list">
									<option value="${list.id }">${list.username }</option>
								</s:iterator>
								
							</select>
						</div>



					</div>

					<div class="form-group">

						<label for="series" class="col-sm-2 control-label"
							style="text-align: left">推荐级别：</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="series" maxlength=32>
						</div>

					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<span style="color: red;">${returnMsg }</span>
						</div>
					</div>


					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">推		荐</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- 
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
 -->
	<script type="text/javascript">
		$("#party_admin_menu a").click(function() {
			$("#party_admin_menu .active").removeAttr('class');
			$(this).parent().addClass("active");
			$(this).parent().parent().parent().addClass("active");
		});
		
		$("#hot_player_setting").parent().addClass("active");
		$("#hot_player_setting").parent().parent().parent().addClass("active");
		
		
	</script>

</body>
</html>