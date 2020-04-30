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
				<strong>留言列表</strong>
			</h1>
			<table class="table-default">
				<tr>
					<th width="60">留言ID</th>
					<th width="150">留言标题</th>
					<th width="300">留言内容</th>
					<th width="80">发布人</th>
					<th width="140">发布时间</th>
					<th width="120">IP</th>
					<th width="80">状态</th>
					<th width="100">回复</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>1</td>
					<td>魏宇轩</td>
					<td>本UI由魏宇轩开发,请勿盗用用作商业用途</td>
					<td>游客</td>
					<td>2019-11-23 13:29:11</td>
					<td>192.168.1.1</td>
					<td>
						<div class="switch">
							<div class="state" data-switch="1"></div>
							<span>显示</span>
						</div>
					</td>

					<td>未回复</td>
					<td>
						<button class="button-small button-add">详情</button>
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
