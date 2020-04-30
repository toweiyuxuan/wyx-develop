<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
	</head>
	<body>
		<div class="components-ui">
			<div class="win-input">
				<span class="input-name">搜索</span>
				<input type="search" class="text-serach" placeholder="请输入">
			</div>
			<br>
			<div class="win-input">
				<span class="input-name">输入框</span>
				<input type="text" class="text-full" placeholder="请输入">
			</div>
			<br>
			<div class="win-input">
				<span class="input-name">单选组</span>
				<div class="radio-box">
					<label class="label-radio">
						<input type="radio" name="radio">
						<span class="radio-name">单选按钮</span>
					</label>
					<label class="label-radio">
						<input type="radio" name="radio">
						<span class="radio-name">单选按钮</span>
					</label>
					<label class="label-radio">
						<input type="radio" name="radio">
						<span class="radio-name">单选按钮</span>
					</label>
					<label class="label-radio">
						<input type="radio" name="radio">
						<span class="radio-name">单选按钮</span>
					</label>
				</div>
			</div>
			<br>
			<div class="win-input">
				<span class="input-name">多选组</span>
				<div class="checkbox-box">
					<label class="label-checkbox">
						<input type="checkbox" name="checkbox">
						<span class="checkbox-name">多选按钮</span>
					</label>
					<label class="label-checkbox">
						<input type="checkbox" name="checkbox">
						<span class="checkbox-name">多选按钮</span>
					</label>
					<label class="label-checkbox">
						<input type="checkbox" name="checkbox">
						<span class="checkbox-name">多选按钮</span>
					</label>
					<label class="label-checkbox">
						<input type="checkbox" name="checkbox">
						<span class="checkbox-name">多选按钮</span>
					</label>
				</div>
			</div>
			<br>
			<div class="win-input">
				<span class="input-name">下拉组</span>
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
			<br>
			<div class="win-input">
				<span class="textarea-name">长文本</span>
				<div class="textarea-box">
					<textarea class="textarea" cols="30" rows="5" placeholder="请输入"></textarea>
				</div>
			</div>
			<br>
			<div class="win-input">
				<span class="picture-name">图片上传</span>
				<div class="picture-box">
					<div class="uploadImgBox">
						<div class="imgBox">
							<img src="./imgs/bg.jpg" alt="">
						</div>
						<div class="btnGroupImg">
							<div class="thumbImg">
								<img src="./imgs/bg.jpg" alt="">
							</div>
							<div class="rbBtn">
								<button class="addImgBtn"></button>
								<button class="clearImgBtn"></button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="button-group">
				<button class="button-normal" id="loading">Loading</button>
			</div>
			<br>
			<div class="button-group">
				<button class="button-normal">按钮</button>
				<button class="button-normal disabled">按钮</button>
				<span class="button-normal">按钮</span>
			</div>
			<br>
			<div class="button-group">
				<button class="button-small button-add">增加</button>
				<button class="button-small button-del">删除</button>
				<button class="button-small button-edit">修改</button>
				<button class="button-small button-search">查询</button>
			</div>
			<br>
			<div class="button-group">
				<button class="button-normal">徽章 <em class="badge">12</em> </button>
				<button class="button-normal disabled">徽章 <em class="badge-top">12</em></button>
				<span class="button-normal">徽章 <em class="badge-top">12</em></span>
			</div>
			<br>
			<div class="button-group">
				<button class="button-normal" id="alertbox">弹窗</button>
				<button class="button-normal disabled">弹窗</button>
				<span class="button-normal">弹窗</span>
			</div>
			<br>
			<label class="label-checkbox">
				<input type="checkbox" name="checkbox">
				<span class="checkbox-name">多选按钮</span>
			</label>
			<br>
			<label class="label-radio">
				<input type="radio" name="radio">
				<span class="radio-name">单选按钮</span>
			</label>
			<br>
			<div class="switch">
				<div class="state" data-switch="1"></div>
				<span>开启</span>
			</div>
			<div class="switch">
				<div class="state" data-switch="0"></div>
				<span>关闭</span>
			</div>
			<br>
			<i class="mustAdd">*</i>
			<div class="popup-box">
            <div class="popup-inner">
                <div class="popup-center">
                        <div class="popup-header">
                            <div class="popup-title">删除多个项目</div>
                            <span class="popup-close">×</span>
                        </div>
                        <div class="popup-main">
                            <div class="popup-body">
                              <p class="ask-info">
                                    您是否要真的删除这个类目
                              </p>
                            </div>
                            <div class="popup-buttons">
                                <button class="button-normal">是</button>
                                <button class="button-normal ml10">否</button>
                            </div>
                        </div>
					</div>
				</div>
			</div>
			<div class="popup-box">
            <div class="popup-inner">
                <div class="popup-tip" data-state="false">
                    删除失败
                </div>
            </div>
        </div>
			<br>
			<table class="table-default">
				<tr>
					<th width="60">栏目ID</th>
					<th width="200">栏目名称</th>
					<th width="200">栏目图片</th>
					<th width="200">栏目类型</th>
					<th width="80">打开方式</th>
					<th width="80">状态</th>
					<th width="180">更新时间</th>
					<th width="80">排序</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>
						1
					</td>
					<td>
						<a href="" title="" class="write_link">公司新闻</a>
					</td>
					<td>
						<a href="" title="" class="write_link">../imgs/baicud.com</a>
					</td>
					<td>
						单页
					</td>
					<td>
						新建窗口
					</td>
					<td>
						<div class="switch">
							<div class="state" data-switch="1"></div>
							<span>正常</span>
						</div>
					</td>
					<td>2019-11-17 15:55:09</td>
					<td class="write_link">2</td>
					<td>
						<a href="" class="write_link">编辑</a>
						<a href="" class="write_link">删除</a>
					</td>
				</tr>
			</table>
			<br>
			<div class="loadingBox">
				<div class="loadingWrap">
                    <span class="loadingIcon"></span>
				</div>
			</div> 
			<div class="popup-box">
				<div class="popup-inner">
					<div class="popup-center">
						<div class="popup-header">
							<div class="popup-title">请输入您的用户名</div>
							<span class="popup-close">×</span>
						</div>
						<div class="popup-main">
							<div class="popup-form">
								<div class="win-input mb10">
									<span class="input-name">姓名</span>
									<input type="text" class="text-full" placeholder="请输入">
								</div>

								<div class="win-input mb10">
										<span class="input-name">年龄</span>
										<input type="text" class="text-full" placeholder="请输入">
									</div>

									<div class="win-input">
											<span class="input-name">地址</span>
											<input type="text" class="text-full" placeholder="请输入">
										</div>
							</div>
						<div class="popup-buttons">
                        <button class="button-normal">是</button>
                        <button class="button-normal ml10">否</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
			<!-- 选项卡 -->
			<!-- 图片上传 -->
			<!-- 选项卡 -->
			<!-- 表格 -->
			<!-- 分割线 -->
			<!-- 时间选择器 -->
		</div>

		<script>
			var al = document.getElementById('alertbox');
			al.onclick = function() 
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
				}, function(cancel) 
				{
					tipAlert
					({
						title: "删除失败",
						state: "fail", //true成功 fail失败
						time: 1 //3秒后关闭
					});
				});
			}
			loading.onclick = function() 
			{
				loading
				({
					state: "open"
				});
				setTimeout(function() 
				{
					loading
					({
						state: "close"
					});
				}, 3000)
			}
		</script>
	</body>
</html>
