<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
	</head>
	<body>
		<div class="dashboard">
			<h1>控制面板</h1>
			<div class="searchBox">
				<div class="win-input">
					<input type="search" class="text-serach" placeholder="请输入关键词检索文档">
					<button class="button-normal" id="alertbox">搜索</button>
				</div>
			</div>
			<div class="tableList">
				<table>
					<tr>
						<td>
							<dl class="dashboard_1">
								<dt><a href="#">网站</a></dt>
								<dd>
									<a href="${path}/webset_webset">基础设置</a> 
									<a href="${path}/webset_log">日志</a> 
									<a href="${path}/webset_company">公司信息</a>
									<a href="${path}/webset_email">邮箱</a>
								</dd>
							</dl>
						</td>
						<td>
							<dl class="dashboard_2">
								<dt><a href="#">用户</a></dt>
								<dd>
									<a href="${path}/user_list">管理列表</a> 
									<a href="${path}/user_input">创建管理</a>
									<a href="">权限设置</a> 
								</dd>
							</dl>
						</td>
						<td>
							<dl class="dashboard_3">
								<dt><a href="#">栏目</a></dt>
								<dd>
									<a href="${path}/column_list" target="rightiframe">栏目列表</a> 
									<a href="${path}/column_input">创建栏目</a>
								</dd>
							</dl>
						</td>
						<td>
							<dl class="dashboard_4">
								<dt><a href="#">友情链接</a></dt>
								<dd>
									<a href="${path}/friendlinks_list">友链列表</a> 
									<a href="${path}/friendlinks_input">创建链接</a>
									<a href="">申请列表</a>
								</dd>
							</dl>
						</td>
					</tr>
					<!-- ++++ -->
					<tr>
						<td>
							<dl class="dashboard_5">
								<dt><a href="#">文档</a></dt>
								<dd>
									<a href="${path}/article_list">文档列表</a> 
									<a href="${path}/article_input">创建文档</a>
								</dd>
							</dl>
						</td>
						<td>
							<dl class="dashboard_6">
								<dt><a href="#">图片</a></dt>
								<dd>
									<a href="${path}/picture_list">管理列表</a> 
									<a href="${path}/picture_input">创建管理</a>
									<a href="">权限设置</a>
								</dd>
							</dl>
						</td>
						<td>
							<dl class="dashboard_7">
								<dt><a href="#">单页</a></dt>
								<dd>
									<a href="${path}/single_list">单页列表</a> 
									<a href="${path}/single_input">创建单页</a>
								</dd>
							</dl>
						</td>
						<td>
							<dl class="dashboard_8">
								<dt><a href="#">留言板</a></dt>
								<dd><a href="${path}/other_message">留言列表</a> </dd>
							</dl>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>
