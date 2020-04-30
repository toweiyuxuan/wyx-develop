<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>admin</title>
	</head>

<body>
    <div class="login">
        <div class="center">
            <div class="main">
                <div class="title"></div>
                <form action="admin.html">
                    <div class="inputLi">
                            <input type="text" class="user" autofocus="autofocus" title="è´¦æ·" placeholder="è¯·è¾å¥è´¦æ·" required>
                    </div>
                    <div class="inputLi">
                            <input type="password" class="pwd" title="å¯ç " placeholder="è¯·è¾å¥å¯ç " required>
                    </div>
                    <div class="inputLi">
                            <input type="text" class="code" title="éªè¯ç " placeholder="è¯·è¾å¥éªè¯ç " required>
                            <img src="./imgs/vcode.png"  class="codeImg" title="ç¹å»å¯æ¢æ°éªè¯ç ">
                    </div>

                    <div class="button-group">
                        <button>ç»å½</button>
                    </div>
                 </form>
            </div>
        </div>
    </div>
   
</body>

</html>