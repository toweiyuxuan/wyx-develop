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
				<strong>公司信息</strong>
			</h1>
			<div class="tabBox">
				<div class="tabTitle">
					<div class="tabWrap">
						<span class="tabBtn tabActive">基本信息</span>
						<span class="tabBtn">公司简介</span>
					</div>
				</div>
				<div class="tabBody mb10">
					<div class="bodyLi bodyActive">
						<div class="win-input mb10">
							<span class="input-name">公司名称</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="picture-name">公众号二维码</span>
							<div class="picture-box">
								<div class="uploadImgBox">
									<div class="imgBox">
										<!-- <img src="./imgs/bg.jpg" alt=""> -->
									</div>
									<div class="btnGroupImg">
										<div class="thumbImg">

										</div>
										<div class="rbBtn">
											<button class="addImgBtn"></button>
											<button class="clearImgBtn"></button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="win-input mb10">
							<span class="input-name">公司地址</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="input-name">联系人</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="input-name">客服QQ</span>
							<input type="text" class="text-full" placeholder="请输入并以逗号隔开">
						</div>
						<div class="win-input mb10">
							<span class="input-name">电话</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input ">
							<span class="input-name">其他</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
					</div>
					<div class="bodyLi">
						富文本编辑器请置入
					</div>
				</div>
				<div class="actionBtnGroup">
					<button class="button-normal button-add">保存</button>
				</div>
			</div>
		</div>
		<script src="./js/JQuery2.1.4.js"></script>
		<script src="./js/alert.js"></script>
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