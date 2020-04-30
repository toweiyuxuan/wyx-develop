//提交注册
function register() 
{
	var isOk = validForm2();
	if (isOk) 
	{
		$.ajax
		({
			type:"POST",
			url:"${path}/ajax_u_register",
			data: 
			{
				"admin.adminName":$("#username").val(),
				"admin.adminPassword":$("#password2").val(),
				"admin.adminReallyname":$("#name").val(),
				"admin.adminEmail":$("#email").val(),
				"captcha":$("#rcode").val(),
			},
			dataType:"text",
			async:true,
			beforeSend:function(XMLHttpRequest)
			{
				$("#zhezhao").show();
				$("#loader").show();
	        },
			success : function(result) 
			{
				if (result=="success") 
				{
					$("#windows2").hide();
					$("#windows1").show();
					$("#loginbox").tips
					({
						side : 3,
						msg : "注册成功，请登录！",
						bg : "#68B500",
						time : 3
					});
				} 
				else if (result=="fail") 
				{
					$("#username").tips
					({
						side : 1,
						msg : "用户名已存在",
						bg : "#FF5080",
						time : 3
					});
					$("#username").focus();
				} 
				else if (result=="error")
				{
					$("#rcode").tips
					({
						side : 1,
						msg : "验证码输入有误",
						bg : "#FF5080",
						time : 3
					});
					$("#rcode").focus();
				}
			},
	        complete:function(XMLHttpRequest,textStatus)
	        {
	        	$("#zhezhao").hide();
	    		$("#loader").hide();
	        },
	        error:function(XMLHttpRequest,textStatus,errorThrown)
	        {
	        	alert("error...状态文本值："+textStatus+" 异常信息："+errorThrown);
	        	$("#zhezhao").hide();
	    		$("#loader").hide();
	        }
		});
	}
}

function validForm2()
{	
	//表单的提交标志
	var isSubmit = true;
	$("#registerForm").find("[regr]").each(function()
	{
		//获得每一个必填项的输入信息
		var val = $(this).val();
		//获得每一个必填项的正则表达式
		var regStr = $(this).attr("regr");
		//获得每一个必填项的提示信息
		var tip = $(this).attr("tip");
		//创建正则表达式的对象
		var reg = new RegExp(regStr);
		//获得每一个文本域的name
		var name = $(this).attr("name");
		if(!reg.test(val))
		{
			$(this).tips
			({
				side : 3,
				msg : tip,
				bg : "#AE81FF",
				time : 3
			});
			$(this).focus();				
			//设置提交标志是false
			isSubmit = false;
			//跳出校验循环
			return false;
		}
		if(name == "repassword")
		{
			//获得密码的值
			var password = $("#password2").val();
			if(password != val)
			{
				$("#repassword").tips
				({
					side:3,
					msg:"确认密码不一致！",
					bg:"#AE81FF",
					time:3
				});
				//设置提交标志是false
				isSubmit = false;
				//跳出校验循环
				return false;
			}
		}
		if(name == "rcode")
		{
			//成功标识
			var isOk = validRcode(val);
			if(isOk != "yes")
			{
				$("#rcode").tips
				({
					side:3,
					msg:"验证码不正确！",
					bg:"#AE81FF",
					time:3
				});
				//设置提交标志是false
				isSubmit = false;
				//跳出校验循环
				return false;
			}
		}
	});
	return isSubmit;
}