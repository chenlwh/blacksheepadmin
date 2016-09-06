<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menu.jsp</title>
</head>
<body>
				<div class="sidebar hidden-print">
					<div id="navigation">
						<ul id="party_admin_menu" class="nav sidenav">
							<li><a id="party_player_admin">网红管理</a>
								<ul class="nav">
									<li><a id="party_player_add" href="<%=basePath %>admin/registerUser.jsp">添加网红</a></li>
									<li><a id="hot_player_setting" href="<%=basePath %>setHotUser.action">推荐网红</a></li>
									
								</ul></li>
								
							<li><a id="party_video_admin">视频管理</a>
								<ul class="nav">
									<li><a id="prefer_video_summary" href="<%=basePath %>videosummary.action">视频详情</a></li>
									<li><a id="prefer_video_setting" href="<%=basePath %>admin/videoPrefer.jsp">推荐视频</a></li>
									<li><a id="prefer_video_add" href="<%=basePath %>videoAddPage.action">添加视频</a></li>
								</ul></li>

							<li><a id="party_goods_admin">商品管理</a>
								<ul class="nav">
									<li><a id="party_goods_add" href="<%=basePath %>admin/goodsPublish.jsp">商品发布</a></li>
								</ul></li>								


						</ul>
					</div>
				</div>

</body>
</html>