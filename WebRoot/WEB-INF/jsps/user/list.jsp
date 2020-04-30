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
				<strong>用户列表</strong>
				<span>
					<a class="button-normal button-search" href="#">用户列表</a>
					<a class="button-normal button-add" href="#">创建用户</a>
				</span>
			</h1>
			<table class="table-default">
				<tr>
					<th width="60">用户ID</th>
					<th width="100">用户账号</th>
					<th width="90">类别</th>
					<th width="80">真实姓名</th>
					<th width="100">电话</th>
					<th width="140">邮箱</th>
					<th width="80">状态</th>
					<th width="80">激活状态</th>
					<th width="130">创建时间</th>
					<th width="130">最后一次登录时间</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>1</td>
					<td>adminstrator</td>
					<td>超级管理员</td>
					<td>魏宇轩</td>
					<td>13382111111</td>
					<td>zhangs126@.126.com</td>
					<td>
						<div class="switch">
							<div class="state" data-switch="1"></div>
							<span>正常</span>
						</div>
					</td>
					<td>已激活</td>
					<td>2019-11-17 15:55:09</td>
					<td>2019-11-17 15:55:09</td>
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