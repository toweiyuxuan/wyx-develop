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
				<strong>邮箱服务</strong>
			</h1>
			<div class="tabBox">
				<div class="tabTitle">
					<div class="tabWrap">
						<span class="tabBtn tabActive">基本信息</span>
					</div>
				</div>
				<div class="tabBody mb10">
					<div class="bodyLi bodyActive">
						<div class="win-input mb10">
							<span class="input-name">smtp服务器</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>

						<div class="win-input mb10">
							<span class="input-name">服务器端口</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>

						<div class="win-input mb10">
							<span class="input-name">用户邮箱</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>

						<div class="win-input mb10">
							<span class="input-name">用户帐号</span>
							<input type="text" class="text-full" placeholder="请输入并以逗号隔开">
						</div>

						<div class="win-input ">
							<span class="input-name">用户密码</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
					</div>
				</div>
				<div class="actionBtnGroup">
					<button class="button-normal button-add">保存</button>
				</div>
			</div>
		</div>
		<script>
			$(function() 
			{
				$('.tabWrap .tabBtn').click(function() 
				{
					$(this).addClass('tabActive').siblings('span').removeClass('tabActive');
					var idx = $(this).index();
					$(".bodyLi").eq(idx).addClass('bodyActive').siblings('.bodyLi').removeClass('bodyActive');
				})
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