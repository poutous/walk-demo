<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/pages/common/base/Head.jsp"%>
<w:link href="/static/modules/login/css/login.css"/>
<title${util:getContextProperty('app.title')}</title>
</head>
<body>
<div class="login-container">
	<div class="site-nav">
		<div class="site-nav-bd">
			<div class="sit-l f2 left">${util:getContextProperty('app.title')}</div>
		</div>
	</div>
	<div class="login-box">
		<div class="login-aside">
			<div class="o-box-up"></div>
			<div class="o-box-down">
				<div class="error-box">${error}</div>
				<form class="loginForm" action="${ctx}/login/formlogin" method="POST">
					<input type="hidden" name="tokenId" id="tokenId"/>
					<div class="fm-item">
						<label for="logonId" class="form-label">登录</label>
						<input type="text" class="i-text i-user" placeholder="账号" name="username" autocomplete="off"/>
						<input type="password" class="i-text i-pwd" placeholder="密码" name="password"/>
						<c:if test="${util:getContextProperty(\"verify.code.enabled\") eq 'true'}">
							<input type="text" class="i-text i-verify" placeholder="验证码" id="verifyCode" name="verifyCode"/>
							<img align="top" id="verifyImg" onclick="showVerifyCode(this)" style="cursor: pointer; height: 37px;margin-top: 1px;"/>
						</c:if>
					</div>
					<div class="fm-item">
						<input type="button" value="登 录" class="btn-login f2"/>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div class="footer">
		<p>XXX有限公司机构代码证</p>
		<p>XXX有限公司XXX省分公司 版权所有</p>
	</div>
</div>
</body>
<script type="text/javascript">
//页面初始化
$(function(){
	//注册登录按钮点击事件
	$(".btn-login").click(function(){
		login();
	});
	
	//注册回车事件
	$(document).keydown(function(event){
		if(event.keyCode == 13){
			login();
		}
	});
	
	//高度自适应
	$(".login-box").height(($(".login-box").width()/2.833)+10);
	
	//验证码
	var verifyCode = $("#verifyCode");
	if(verifyCode.size() > 0){
		//显示验证码
		showVerifyCode($("#verifyImg").get(0));
	}
});	
	
//登录
function login(){
	var usrname = $.trim($(".i-user").val());
	if(!usrname){
		$(".error-box").html("请输入账号。");
		return false;
	}
	var pwd = $(".i-pwd").val();
	if(!pwd){
		$(".error-box").html("请输入密码。");
		return false;
	}
	
	var verifyCode = $("#verifyCode");
	if(verifyCode.size() > 0 && !$.trim(verifyCode.val())){
		$(".error-box").html("请输入验证码！");
		return false;
	}
	
	$(".btn-login").val("登录中...");
	
	//提交登陆
	$('.loginForm').submit();

	return false;
}

//显示验证码
function showVerifyCode(obj) {
	obj.src = '/special/jcaptcha?random=' + (new Date()).getTime();
}
</script>
</html>
