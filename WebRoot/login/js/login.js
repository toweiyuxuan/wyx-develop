//登陆
function severCheck()
{
	//成功标识
	var isOk = validForm1();
	if(isOk)
	{
		var loginname = $("#loginname").val();
		var password = $("#password1").val();
		var code = $("#code").val();
		$.ajax
		({
			type: "POST",
			url: "${path}/ajax_u_login",
	    	data: {"admin.adminName":loginname,"admin.adminPassword":password,"captcha":code},
	    	dataType:"text",
	    	async:true,
	    	beforeSend:function(XMLHttpRequest)
			{
				$("#zhezhao").show();
				$("#loader").show();
	        },
			success: function(result)
			{
				if(result == "success")
				{
					saveCookie();
					window.location.href="${path}/main_admin";							
				} 
				else if (result == "fail") 
				{
					$("#loginbox").tips
					({
						side : 3,
						msg : "用户名或密码有误",
						bg : "#FF5080",
						time : 4
					});
					$("#loginname").focus();
				} 
				else if (result == "forbid") 
				{
					$("#loginbox").tips
					({
						side : 3,
						msg : "该用户不允许登录！",
						bg : "#FF5080",
						time : 4
					});
					$("#loginname").focus();
				} 
				else 
				{
					$("#loginbox").tips
					({
						side : 3,
						msg : "缺少参数",
						bg : "#FF5080",
						time : 5
					});
					$("#loginname").focus();
					alert(result)
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
function validForm1()
{	
	//表单的提交标志
	var isSubmit = true;
	$("#loginForm").find("[regr]").each(function()
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
		if(name == "captcha")
		{
			//成功标识
			var isOk = validRcode(val);
			if(isOk != "yes")
			{
				$("#code").tips
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