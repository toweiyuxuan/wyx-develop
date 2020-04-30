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
				<strong>创建栏目</strong>
				<span>
					<a class="button-normal button-search" href="#">栏目列表</a>
				</span>
			</h1>
			<div class="tabBox">
				<div class="tabTitle">
					<div class="tabWrap">
						<span class="tabBtn tabActive">常规内容</span>
						<span class="tabBtn">SEO设置</span>
						<span class="tabBtn">栏目内容</span>
					</div>
				</div>
				<div class="tabBody mb10">
					<div class="bodyLi bodyActive">
						<div class="win-input mb10">
							<span class="input-name"><i class="mustAdd">*</i>栏目名称CN</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>

						<div class="win-input mb10">
							<span class="input-name">栏目名称EN</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="picture-name">图片上传</span>
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
							<span class="input-name">所属栏目</span>
							<div class="select-box">
								<select class="select">
									<option value="">下拉选项</option>
									<option value="">下拉选项</option>
									<option value="">下拉选项</option>
									<option value="">下拉选项</option>
									<option value="">下拉选项</option>
									<option value="">下拉选项</option>
								</select>
							</div>
						</div>
						<div class="win-input mb10">
							<span class="input-name">栏目模板</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="input-name">详情模板</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="input-name">栏目附加名称</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="input-name">显示数量</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="input-name">排序</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="input-name">显示状态</span>
							<div class="radio-box">
								<label class="label-radio">
									<input type="radio" name="radio">
									<span class="radio-name">发布&emsp;&emsp;</span>
								</label>
								<label class="label-radio">
									<input type="radio" name="radio">
									<span class="radio-name">待审核&emsp;</span>
								</label>
							</div>
						</div>
						<div class="win-input mb10">
							<span class="input-name">展示类型</span>
							<div class="radio-box">
								<label class="label-radio">
									<input type="radio" name="radio">
									<span class="radio-name">列表模式</span>
								</label>
								<label class="label-radio">
									<input type="radio" name="radio">
									<span class="radio-name">单页模式</span>
								</label>
							</div>
						</div>
						<div class="win-input ">
							<span class="input-name">打开方式</span>
							<div class="radio-box">
								<label class="label-radio">
									<input type="radio" name="radio">
									<span class="radio-name">新建窗口</span>
								</label>
								<label class="label-radio">
									<input type="radio" name="radio">
									<span class="radio-name">直接打开</span>
								</label>
							</div>
						</div>
					</div>
					<div class="bodyLi">
						<div class="win-input mb10">
							<span class="input-name">标题</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input mb10">
							<span class="input-name">关键词</span>
							<input type="text" class="text-full" placeholder="请输入">
						</div>
						<div class="win-input">
							<span class="textarea-name">描述</span>
							<div class="textarea-box">
								<textarea class="textarea" cols="30" rows="5" placeholder="请输入"></textarea>
							</div>
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
