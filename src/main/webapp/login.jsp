<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<style>
.button{
margin-left:80px;
width:90px;
height:30px;

}
.button1{
float:left
margin-left:10px;
width:90px;
height:30px;
}
.login-top{
margin-left:110px
}
</style>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="layui/style.css">
  <link rel="stylesheet" type="text/css" href="layui/reset.css"/>
</head>
<body style="background-image:url(layui/bg.jpg);">

<div id="particles-js">
		<div class="login">
			<div class="login-top">
				登录
			</div>
			<form action='login_system' method='post'>
			<div class="login-center clearfix">
				<div class="login-center-img">
					<img src="layui/name.png" />
				</div>
				
				<div class="login-center-input">
				
						<input type="text" name="username" value="" placeholder="请输入您的用户名"
							onfocus="this.placeholder=''"
							onblur="this.placeholder='请输入您的用户名'" />
								
						<div class="login-center-input-text">用户名</div>
				</div>
			</div>
						
			<div class="login-center clearfix">
				<div class="login-center-img">
					<img src="layui/password.png" />
				</div>
				<div class="login-center-input">

					<input type="password" name="userpass" value="" placeholder="请输入您的密码"
						onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'" />
					<div class="login-center-input-text">密码</div>
					
				</div>
			</div>
			<button class="button">登录</button>
			<!--  <button class="button1">注册</button>-->
		</form>
		</div>
		
		<div class="sk-rotating-plane"></div>
</div>

<script src="layui/particles.min.js"></script>
<script src="layui/app.js"></script>
<script type="text/javascript" src="layui/jquery-3.4.1.min.js"></script>
<script src="layui/layui.all.js"></script>
<script type="text/javascript">
	function hasClass(elem, cls) {
	  cls = cls || '';
	  if (cls.replace(/\s/g, '').length == 0) return false; //当cls没有参数时，返回false
	  return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
	}
	 
	function addClass(ele, cls) {
	  if (!hasClass(ele, cls)) {
	    ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
	  }
	}
	 
	function removeClass(ele, cls) {
	  if (hasClass(ele, cls)) {
	    var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
	    while (newClass.indexOf(' ' + cls + ' ') >= 0) {
	      newClass = newClass.replace(' ' + cls + ' ', ' ');
	    }
	    ele.className = newClass.replace(/^\s+|\s+$/g, '');
	  }
	}
		document.querySelector(".button").onclick = function(){
				addClass(document.querySelector(".login"), "active")
				setTimeout(function(){
					addClass(document.querySelector(".sk-rotating-plane"), "active")
					document.querySelector(".login").style.display = "none"
				},800)
				setTimeout(function(){
					removeClass(document.querySelector(".login"), "active")
					removeClass(document.querySelector(".sk-rotating-plane"), "active")
					document.querySelector(".login").style.display = "block"
					alert("登录失败")
					
				},2000)
		}
</script>
</body>
</html>