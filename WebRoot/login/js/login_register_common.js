if(top.location!=self.location)
{	
	top.location.href = self.location.href;
} 

function savePaw() 
{
	if (!$("#saveid").attr("checked")) 
	{
		$.cookie("loginname", "", 
		{
			expires : -1
		});
		$.cookie("password", "", 
		{
			expires : -1
		});
		$("#loginname").val("");
		$("#password").val("");
	}
}

function saveCookie() 
{
	if ($("#saveid").attr("checked")) 
	{
		$.cookie("loginname", $("#loginname").val(),
		{
			expires : 7
		});
		$.cookie("password1", $("#password1").val(), 
		{
			expires : 7
		});
	}
}

jQuery(function() 
{
	var loginname = $.cookie("loginname");
	var password = $.cookie("password1");
	if (typeof (loginname) != "undefined" && typeof (password) != "undefined") 
	{
		$("#loginname").val(loginname);
		$("#password1").val(password);
		$("#saveid").attr("checked", true);
		$("#code").focus();
	}
});

//登录注册页面切换
function changepage(value) 
{
	if (value == 1) 
	{
		$("#windows1").hide();
		$("#windows2").show();
	} 
	else 
	{
		$("#windows2").hide();
		$("#windows1").show();
	}
}


//校验用户名是否已存在
function validRcode(rcode)
{
	var isOk = "yes";
	$.ajax
	({
		url:"${path}/ajax_u_validRcode",
		type:"post",
		async:false,
		data:
		{
			"captcha":rcode
		},
		dataType:"text",
		success:function(result)
		{
			isOk = result;
		}
	});
	return isOk;		
}


//点击更换验证码
$("#captchaImg").click(function()
{
	var srcPath = "${path}/ajax_u_getImage?date="+new Date();
	$(this).attr("src", srcPath);
});
$("#zcodeImg").click(function()
{
	var srcPath = "${path}/ajax_u_getImage?date="+new Date();
	$(this).attr("src", srcPath);
});