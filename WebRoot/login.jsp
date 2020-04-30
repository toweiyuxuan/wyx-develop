<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>魏宇轩开发</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<link rel="stylesheet" href="login/css/bootstrap.min.css"/>
<link rel="stylesheet" href="login/css/camera.css"/>
<link rel="stylesheet" href="login/css/bootstrap-responsive.min.css"/>
<link rel="stylesheet" href="login/css/matrix-login.css"/>
<link rel="stylesheet" href="login/css/font-awesome.css"/>
<link rel="stylesheet" href="login/css/load.css"/>
<link rel="stylesheet" href="login/css/loaders.css"/>

<script type="text/javascript" src="login/js/jquery-1.4.min.js"></script>
</head>
<body>
	<!--遮罩-->
	<div id="zhezhao"></div>
	<div class="loader" id="loader">
        <div class="loader-inner ball-spin-fade-loader">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
        </div>
    </div>
    <canvas class="cavs"></canvas>
	<div style="width:100%;text-align: center;margin: 0 auto;position: absolute;">
		<!-- 登录 -->
		<div id="windows1">
			<div id="loginbox">
				<form action="" method="post" name="loginForm" id="loginForm">
					<div class="control-group normal_text">
						<h3>
							<img src="login/images/logo.png" alt="Logo" />
						</h3>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_lg"><i><img height="37" src="login/images/user.png" /></i>
								</span><input type="text" name="loginname" id="loginname" value="" placeholder="请输入用户名" autocomplete="off" regr="\S" tip="请输入用户名"/>
							</div>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_ly"> <i><img height="37" src="login/images/suo.png" /></i>
								</span><input type="password" name="password1" id="password1" placeholder="请输入密码" regr="\S" tip="请输入密码"/>
							</div>
						</div>
					</div>
					<div style="float:right;padding-right:10%;">
						<div style="float: left;">
							<input name="form-field-checkbox" id="saveid" type="checkbox" onclick="savePaw();"/>
						</div>
						<div style="float: left;margin-top:3px;margin-right:2px;">
							<font color="white">记住密码</font>
						</div>
					</div>
					<div class="form-actions">
						<div style="width:86%;padding-left:8%;">
							<div style="float: left;">
								<i><img src="login/images/yan.png" style="height:30px;"/></i>
							</div>
							<div style="float: left;" class="codediv">
								<input type="text" name="captcha" id="code" class="login_code" style="height:20px; padding-top:4px;" autocomplete="off" regr="\S" tip="请输入验证码"/>
							</div>
							<div style="float: left;">
								<i><img style="height:30px;cursor:pointer;" id="captchaImg" alt="点击更换" title="点击更换" src="${path}/ajax_u_getImage" /></i>
							</div>
							<span class="pull-right"><a href="javascript:changepage(1);" class="btn btn-success">注册</a></span>
							<span class="pull-right"><a onclick="severCheck();"class="flip-link btn btn-info">登录</a></span>
						</div>
					</div>
				</form>
				<div class="controls">
					<div class="main_input_box">
						<font color="white"><span id="nameerr">Copyright ©魏宇轩开发 2020</span></font>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 注册 -->
		<div id="windows2" style="display: none;">
			<div id="loginbox">
				<form action="" method="post" name="registerForm" id="registerForm">
					<div class="control-group normal_text">
						<h3>
							<img src="login/images/logo.png" alt="Logo" />
						</h3>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_lg"> <i>用户</i>
								</span><input type="text" name="username" id="username" placeholder="请输入用户名" autocomplete="off" regr="^[a-zA-Z]{6,15}$" tip="请输入6-15个字母"/>
							</div>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_ly"> <i>密码</i>
								</span><input type="password" name="password2" id="password2" placeholder="请输入密码"  autocomplete="off" regr="^[0-9]{6,8}$" tip="请输入6-8个数字"/>
							</div>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_ly"> <i>重输</i>
								</span><input type="password" name="repassword" id="repassword" placeholder="请重新输入密码" regr="^[0-9]{6,8}$" tip="请输入6-8个数字"/>
							</div>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_lg"> <i>姓名</i>
								</span><input type="text" name="name" id="name" placeholder="请输入姓名" regr="^[\u4E00-\u9FA5]{2,4}$" tip="请输入2-4个汉字"/>
							</div>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_lg"> <i>邮箱</i>
								</span><input type="text" name="email" id="email" placeholder="请输入邮箱" regr="^[0-9a-zA-Z_.-]+[@][0-9a-zA-Z_.-]+([.][a-zA-Z]+){1,2}$" tip="请输入邮箱"/>
							</div>
						</div>
					</div>
					<div class="form-actions">
						<div style="width:86%;padding-left:8%;">
							<div style="float:left;">
								<i><img src="login/images/yan.png" style="height:30px;"/></i>
							</div>
							<div style="float: left;" class="codediv">
								<input type="text" name="rcode" id="rcode" class="login_code" style="height:20px; padding-top:4px;" autocomplete="off" regr="\S" tip="请输入验证码"/>
							</div>
							<div style="float: left;">
								<i><img style="height:30px;cursor:pointer;" id="zcodeImg" alt="点击更换" title="点击更换" src="${path}/ajax_u_getImage"/></i>
							</div>
							<span class="pull-right"><a href="javascript:changepage(2);" class="btn btn-success">取消</a></span>
							<span class="pull-right"><a onclick="register();" class="flip-link btn btn-info">提交</a></span>
						</div>
					</div>
				</form>
				<div class="controls">
					<div class="main_input_box">
						<font color="white"><span id="nameerr">Copyright © 魏宇轩开发 2020</span></font>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="templatemo_banner_slide" class="container_wapper">
		<div class="camera_wrap camera_emboss" id="camera_slide">
			<!-- 背景图片 -->
			<div data-src="login/images/banner_slide_01.jpg"></div>
			<div data-src="login/images/banner_slide_02.jpg"></div>
			<div data-src="login/images/banner_slide_03.jpg"></div>
			<div data-src="login/images/banner_slide_04.jpg"></div>
			<div data-src="login/images/banner_slide_05.jpg"></div>
		</div>
		<!-- #camera_wrap_3 -->
	</div>
	
	<script type="text/javascript" src="login/js/login.js"></script>
	<script type="text/javascript" src="login/js/register.js"></script>
	<script type="text/javascript" src="login/js/login_register_common.js"></script>
	<script type="text/javascript" src="login/js/ban.js"></script>
	<script type="text/javascript" src="login/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="login/js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="login/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="login/js/jquery.mobile.customized.min.js"></script>
	<script type="text/javascript" src="login/js/camera.min.js"></script>
	<script type="text/javascript" src="login/js/templatemo_script.js"></script>
	<script type="text/javascript" src="login/js/jquery.tips.js"></script>
	<script type="text/javascript" src="login/js/jquery.cookie.js"></script>
	
</body>
</html>