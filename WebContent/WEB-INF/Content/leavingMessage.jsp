<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>留言板</title>
<link href="${pageContext.request.contextPath}/css/style3.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pink Contact Form ,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,100italic,300italic,400italic|Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Raleway:400,200,300,500,600,800,700,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
<nav>
	<ul>
		<li><a href="login.action">主页</a></li>
		<li><a href="viewPicture.action">相册</a></li>
		<li><a href="viewDocument.action">日志</a></li>
		<li><a href="#">留言板</a></li>
		<li><a href="#">我们的故事</a></li>
        <li style="float:right"><a href="logout.action">退出登录</a></li>
	</ul>
</nav>
	<h1>私房话</h1>
	<div class="login-01">
			<form action="addMessage" method="post" name="form2">
				<ul>
				<li class="second">
				<a href="#" class=" icon msg"></a><textarea value="Message" name="lmss.comment" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Comments';}">Comments</textarea>
				<div class="clear"></div>
				</li>
			</ul>
			<input type="submit" onClick="myFunction()" value="Submit" >
			<div class="clear"></div>
		</form>
</div>
	<!--start-copyright-->
   		<div class="copy-right">
   			<div class="wrap">
				<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">LoveRoom</a></p>
		</div>
	</div>
	<!--//end-copyright-->
</body>
</html>