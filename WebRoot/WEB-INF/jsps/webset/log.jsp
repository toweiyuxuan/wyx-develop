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
				<strong>日志列表</strong>
				<div class="articleTop">
					<div class="win-input">
						<input type="search" class="text-serach" placeholder="请选择日期">
						<button class="button-normal" id="alertbox">搜索</button>
					</div>
				</div>
			</h1>
			<table class="table-default mb10">
				<tr>
					<th width="60">ID</th>
					<th width="250">动作</th>
					<th width="100">IP</th>
					<th width="150">账号</th>
					<th width="150">日期</th>
					<th>状态</th>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>

				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>登录了网站</td>
					<td>192.168.1.1</td>
					<td>admin</td>
					<td>2019-11-17 15:55:09</td>
					<td><button class="button-small button-edit">正常</button></td>
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
