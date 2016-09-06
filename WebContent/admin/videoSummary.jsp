<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	if (session.getAttribute("login") == null) {
		response.sendRedirect(basePath + "login.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设置推荐视频</title>

<link rel="shortcut icon" href="<%=basePath%>ico/favicon.ico">
<link href="<%=basePath%>css/model.css" rel="stylesheet">
<link href="<%=basePath%>bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<script src="<%=basePath%>jquery/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/holder.js"></script>
<script src="<%=basePath%>js/application.js"></script>
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
					<h1>视频详情</h1>
				</div>

				<form action="#" class="form-horizontal">
					<div class="form-group">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>视频编码</th>
									<th>视频地址</th>
									<th>视频描述</th>
									<th>标签</th>
									<th>缩略图</th>
									<th>发布日期</th>
									<th>浏览量</th>
									<th>对应主播</th>
									<th>可用</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="videoList" var="list">
									<tr>
										<td><div style="width:100px;word-wrap:break-word;" >${list.videoID }</div></td>
										<td><div style="width:280px;word-wrap:break-word;" >${list.videoLink}</div></td>
										<td><div style="width:100px;word-wrap:break-word;" >${list.videoDesc }</div></td>
										<td><div style="width:50px;word-wrap:break-word;" >${list.tag }</div></td>
										<td><div style="width:100px;word-wrap:break-word;"><img src="${list.videoImage }" style="width:100px;height:80px"/></div></td>
										<td><div style="width:100px;word-wrap:break-word;" >${list.date }</div></td>
										<td><div style="width:50px;word-wrap:break-word;" >${list.browsers }</div></td>
										<td><div style="width:100px;word-wrap:break-word;" >${list.userID }</div></td>
										<td><div style="width:50px;word-wrap:break-word;" >${list.valid }</div></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
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

		$("#prefer_video_summary").parent().addClass("active");
		$("#prefer_video_summary").parent().parent().parent()
				.addClass("active");
	
		
	</script>

</body>
</html>