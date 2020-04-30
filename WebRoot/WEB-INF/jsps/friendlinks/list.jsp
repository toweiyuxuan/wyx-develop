<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>admin</title>
	</head>
	<body>
		<div class="public_box">
			<h1 class="title">
				<strong>友链列表</strong>
				<span>
					<a class="button-normal button-search" href="#">友链列表</a>
					<a class="button-normal button-add" href="#">创建友链</a>
				</span>
			</h1>
			<table class="table-default">
				<tr>
					<th width="60">ID</th>
					<th width="100">链接名称</th>
					<th width="200">链接地址</th>
					<th width="80">打开方式</th>
					<th width="80">创建人</th>
					<th width="140">创建时间</th>
					<th width="80">状态</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>1</td>
					<td>百度新闻网</td>
					<td>http://www.weichouys.com</td>
					<td>新建窗口</td>

					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td>
						<div class="switch">
							<div class="state" data-switch="1"></div>
							<span>正常</span>
						</div>
					</td>
					<td>
						<button class="button-small button-edit">编辑</button>
						<button class="button-small button-del">删除</button>
					</td>
				</tr>
			</table>
		</div>
		<script>
			$(function() 
			{
				$('.button-del').click(function() 
				{
					popupAlert
					({
						title: "您真的要删除当前这个类目么？",
						info: "当前栏目AAAA123456",
						btnSure: "确定",
						btnCancel: "取消"
					}, function(sure) 
					{
						tipAlert
						({
							title: "删除成功",
							state: "true", //true成功 fail失败
							time: 1 //3秒后关闭
						});
					}, function(cancel) {});
				})
			})
		</script>
	</body>
</html>
