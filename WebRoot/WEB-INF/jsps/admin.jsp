<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>admin</title>
	</head>
	<body>
		<div class="admin">
			<div class="top">
				<div class="logo">
					<img src="${path}/main/imgs/logo.png">
				</div>
				<div class="toolBtn">
					<span class="home"> <em>访问主页</em></span>
					<span class="bar"> <em>快捷导航</em></span>
					<span class="clear" id="clearCache"> <em>清除缓存</em></span>
					<span class="set"> <em>网站设置</em></span>
					<span class="shutdown" onclick="javascript:window.open('${path}/ajax_u_logout')"><em>退出登录</em></span>
				</div>
			</div>
			<div class="body">
				<div class="left">
					<ul class="navTools">
						<li>
							<div class="menuLiT indexLink">
								<span class="t1 toolLink"><a href="${path}/main_boby" target="rightiframe">控制面板</a></span>
							</div>
						</li>
						<li>
							<div class="menuLiT indexLink"><span class="t1 toolLink"><a href="${path}/other_components" target="rightiframe">测试组件</a></span></div>
						</li>
						<li>
							<div class="menuLi">
								<span class="t2 toolLink">栏目管理</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/column_list" target="rightiframe">栏目列表</a>
								</dd>
								<dd>
									<a href="${path}/column_input" target="rightiframe">创建栏目</a>
								</dd>
							</dl>
						</li>
						<li>
							<div class="menuLi">
								<span class="t3 toolLink">文档管理</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/article_list" target="rightiframe">文档列表</a>
								</dd>
								<dd>
									<a href="${path}/article_input" target="rightiframe">创建文档</a>
								</dd>
							</dl>
						</li>
						<li>
							<div class="menuLi">
								<span class="t4 toolLink">图片管理</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/picture_list" target="rightiframe">图片列表</a>
								</dd>
								<dd>
									<a href="${path}/picture_input" target="rightiframe">创建图片</a>
								</dd>
							</dl>
						</li>
						<li>
							<div class="menuLi">
								<span class="t5 toolLink">单页管理</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/single_list" target="rightiframe">单页列表</a>
								</dd>
								<dd>
									<a href="${path}/single_input" target="rightiframe">创建单页</a>
								</dd>
							</dl>
						</li>
						<li>
							<div class="menuLi">
								<span class="t6 toolLink">网站设置</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/webset_webset" target="rightiframe">基础设置</a>
								</dd>
								<dd>
									<a href="${path}/webset_company" target="rightiframe">公司信息</a>
								</dd>
								<dd>
									<a href="${path}/webset_email" target="rightiframe">邮箱服务</a>
								</dd>
							</dl>
						</li>
						<li>
							<div class="menuLi">
								<span class="t7 toolLink">用户管理</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/user_list" target="rightiframe">用户列表</a>
								</dd>
								<dd>
									<a href="${path}/user_input" target="rightiframe">创建用户</a>
								</dd>
							</dl>
						</li>
						<li>
							<div class="menuLi">
								<span class="t8 toolLink">友情链接</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/friendlinks_list" target="rightiframe">友情列表</a>
								</dd>
								<dd>
									<a href="${path}/friendlinks_input" target="rightiframe">创建友链</a>
								</dd>
							</dl>
						</li>
						<li>
							<div class="menuLi">
								<span class="t9 toolLink">网站日志</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/other_log" target="rightiframe">日志列表</a>
								</dd>
							</dl>
						</li>
						<li>
							<div class="menuLi">
								<span class="t10 toolLink">用户留言 [5]</span>
							</div>
							<dl class="downmenu">
								<dd>
									<a href="${path}/other_message" target="rightiframe">留言列表</a>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
				<div class="right">
					<iframe src="${path}/main_boby" frameborder="0" id="rightiframe" name="rightiframe"></iframe>
				</div>
			</div>
		</div>
		<script>
			var clearCache = document.getElementById("clearCache");
			clearCache.onclick = function() 
			{
				tipAlert
				({
						title: "缓存清除成功",
						state: "true", //true成功 fail失败
						time: 1 //3秒后关闭
				});
			};
			$(function() 
			{
				$(".indexLink .toolLink").click(function() 
				{
					$(".navTools>li>.menuLi").removeClass("menuActive");
					$(".downmenu>dd").removeClass("onLink");
				});
				$(".navTools>li>.menuLi").click(function() 
				{
					if (!$(this).hasClass("menuActive")) 
					{
						$(".navTools>li>.menuLi").removeClass("menuActive");
						$(this).addClass("menuActive");
					} 
					else 
					{
						$(this).removeClass("menuActive");
					}
				})
				$(".downmenu>dd>a").click(function(event) 
				{
					event.stopPropagation();
					$(".downmenu>dd").removeClass("onLink");
					$(this).parent("dd").addClass("onLink");
				});
			});
		</script>
	</body>
</html>