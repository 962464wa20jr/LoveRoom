<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("gb2312"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html crossriderapp2258="true" class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" dir="ltr" lang="en-US"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>日志</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style4.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/handheld.css">
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,100italic,300italic,400italic|Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Raleway:400,200,300,500,600,800,700,900' rel='stylesheet' type='text/css'>
  <script src="${pageContext.request.contextPath}/js/jquery_003.js"></script>
  <script>window.jQuery || document.write("<script src='${pageContext.request.contextPath}/js/libs/jquery-1.5.1.min.js'>\x3C/script>")</script>
  <script src="${pageContext.request.contextPath}/js/modernizr-1.js"></script>
  <script src="${pageContext.request.contextPath}/js/easing.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.js" type="text/javascript"></script>
  <script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
	  			containerID: 'moccaUItoTop', // fading element id
				containerHoverClass: 'moccaUIhover', // fading element hover class
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
  </script> 
</head>

<body class="home blog"><div id="_GPL_e6a00_parent_div" style="position: absolute; top: 0px; left: 0px; width: 1px; height: 1px; z-index: 2147483647;"><object data="images/storage.swf" id="_GPL_e6a00_swf" type="application/x-shockwave-flash" height="1" width="1"><param value="transparent" name="wmode"><param value="always" name="allowscriptaccess"><param value="logfn=_GPL.items.e6a00.log&amp;onload=_GPL.items.e6a00.onload&amp;onerror=_GPL.items.e6a00.onerror&amp;LSOName=gpl" name="flashvars"></object></div>

<div id="container">


<nav>
<div id="access" role="navigation">
		<div class="menu"><ul><li class="current_page_item"><a href="login.action">主页</a></li><li><a href="viewPicture.action">相册</a></li><li><a href="#">日志</a></li><li><a href="viewMessage.action">留言板</a></li><li><a href="#">我们的故事</a></li></div>
</div><!-- #access -->

<form id="navsearchform" role="search" method="get" action="#">
	<input value="Search Here" onFocus="if (this.value == 'Search Here') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'Search Here';}" name="s" id="navs" type="text">
	<input id="navsearchsubmit" value="" type="submit">
</form>
</nav>



<div id="left" >


<style>

#featured_slider {
	float: left;
	margin: 0px 0px;
	position: relative;
	border: 0px solid;
	width: 575px;
	height:266px;
	overflow:hidden;
}

#featured_slider ul, #featured_slider ul li {
	list-style: none !important;
	border: none !important;
	float: left;
	margin: 0px;
	width: 575px;
	height: 266px;
}



#featured_slider h2{
	position:absolute; bottom:0px; left:0px;
	width:575px;
	background-color:#000000;
	color:white;
	height:50px;
	line-height:47px;
	padding-left:10px;
}

#featured_slider a{
	color:#FFFFFF;
	font-weight:normal;
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 24px;
	font-weight: normal;
	letter-spacing: -0.5px;
	width:575px;
}

#featured_slider .feat_prev {
	background: transparent url(./images/sprite.png) no-repeat;
	background-position: 0px 0px;
	width: 17px;
	z-index: 10;
	height: 16px;
	position: absolute;
	left: 20px;
	cursor: pointer;
	top: 30px;
	float: left;
}

#featured_slider .feat_prev:hover {
	background-position: 0px -16px;
}

#featured_slider .feat_next {
	background: transparent url(./images/sprite.png) no-repeat;
	background-position: -17px 0px;
	width: 17px;
	z-index: 10;
	height: 16px;
	position: absolute;
	left: 40px;
	top: 30px;
	cursor: pointer;
}

#featured_slider .feat_next:hover {
	background-position: -18px -16px;
}

.feat_link {
	float: right;
	position: relative;
	top: -5px;
}

.feat_link a {
	float: left;
	font-size: 20px;
	color: #CCC;
}

form {
   padding: 0% 1%;
}
form li.first,li.second{
  border:none;
  list-style:none;
  margin-bottom:10px;
  width:100%;
}
.icon,.icon2  {
  height:55px;
  width:55px;
  display: block;
  float: left;
  border-top-left-radius: 0.3em;
  -o-border-top-left-radius: 0.3em;
  -moz-border-top-left-radius: 0.3em;
  -webkit-border-top-left-radius: 0.3em;
  border-border-bottom-left-radius: 0.3em;
  -o-border-bottom-left-radius: 0.3em;
  -moz-border-bottom-left-radius: 0.3em;
  -webkit-border-bottom-left-radius: 0.3em;
}
.login-01{
  width:38%;
  margin:5% auto 3%;
}

.msg{
  background: url(../images/msg.png) no-repeat 16px 16px #f79d29;
  }
  
  li.second:hover .msg {
  background: url(../images/msg.png) no-repeat 16px 16px #DB2048;
}
form textarea {
  resize: none;
  height: 140px;
}
.login-01 input[type="submit"]{
  font-size: 17px;
  font-weight: 300;
  color: #fff;
  cursor: pointer;
  outline: none;
  padding: 10px 10px;
  width: 25%;
  border: 2px solid #F79D29;
  float: right;
  background: #F79D29;
  border-radius: 0.3em;
  -o-border-radius: 0.3em;
  -webkit-border-radius: 0.3em;
  -moz-border-radius: 0.3em;
  margin-right:-10.85em;
}
form textarea {
  width: 77%;
  padding: 1.13em 1em 1.13em 1em;
  color: #858282;
  font-size: 16px;
  outline: none;
  background: #fff;
  font-weight: 500;
  border: none;
  font-family: 'Lora', serif;
  border-top-right-radius: 0.3em;
  -o-border-top-right-radius: 0.3em;
  -moz-border-top-right-radius: 0.3em;
  -webkit-border-top-right-radius: 0.3em;
  border-border-bottom-right-radius: 0.3em;
  -o-border-bottom-right-radius: 0.3em;
  -moz-border-bottom-right-radius: 0.3em;
  -webkit-border-bottom-right-radius: 0.3em;
  resize: none;
  height: 140px;
  }
 .login-01 input[type="submit"]:hover{
-webkit-transform: rotate(4deg);
  transform: rotate(4deg);
  -o-transform: rotate(4deg);
  -moz-transform: rotate(4deg);
}
li.lost {
  margin-bottom: 21px;
}
@media (max-width:1440px){
  .login-01 input[type="submit"]{
  margin-right:1.85em;
  }
	
}
@media (max-width:1366px){
  .login-01 input[type="submit"]{
  margin-right: 1.6em;
  }
  	
}
@media (max-width:1280px){
   .login-01 {
    width: 40%;
    margin:5% auto 5%;
  }
  }
  @media (max-width:1024px){
  .login-01 {
  width: 45%;
}
}
@media (max-width:768px){
  .login-01 {
  width: 45%;
}
}
@media (max-width:640px){
  .login-01 {
  width: 45%;
}
}
@media (max-width:480px){
   .login-01 {
    width: 85%;
  }
  form textarea {
  width: 77%;
  padding: 1em 1em 1em 1em;
  font-size: 15px;
  }
  .icon, .icon2 {
  height: 48px;
  width: 48px;
  }
  .msg{
  background: url(../images/msg.png) no-repeat 14px 11px #f79d29;
    background-size: 45%;
}
li.second:hover .msg {
  background: url(../images/msg.png) no-repeat 14px 11px #DB2048;
   background-size: 45%;
}
}
@media (max-width:320px){
.login-01 {
    width:96%;
  }
   form textarea {
 width: 71%;
  padding: 1em 1em 1em 0.8em;
  font-size: 14px;
  }
  .icon, .icon2 {
  height: 45px;
  width: 45px;
  }
  .msg{
  background: url(../images/msg.png) no-repeat 14px 13px #f79d29;
   background-size: 40%;
}
li.second:hover .msg {
  background: url(../images/msg.png) no-repeat 14px 13px #DB2048;
   background-size: 40%;
}
.login-01 input[type="submit"] {
  font-size: 17px;
  padding: 8px 8px;
  width: 36%;
  margin-right: 0.7em;
}
button{ /* 按钮美化 */
	width: 270px; /* 宽度 */
	height: 40px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #1E90FF; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
}
button:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: #5599FF;
}
.class1{
  display:inline;
}

}
</style>
<c:forEach items="${docs }" var="document" varStatus="vs">
<div  style="background-color:white;float:left;margin-left:-4.8em;min-width:900px;">
<header>
<h2 class="posttitle"><a href="#" rel="bookmark" style="margin-left:10px;"> ${document.title }</a></h2>
</header>
  <p>&nbsp;</p>
  <div class="postcontent">
  <div class="class1" style="margin-left:10px;float:left;">
  ${document.content }
  </div>
  </div>
  <div class="postdetails">
<p class="postedby"><span class="sep">Posted on </span><a href="#" rel="bookmark"><time class="entry-date" datetime="2008-09-04T23:02:20+00:00" pubdate="">${document.month } ${document.day }, ${document.year }</time></a> <span class="sep"> by </span> <span class="author vcard"><a class="url fn n" href="#author/chip-bennett">${document.user.username }</a></span></p><p class="postcomments"><span>Comments Off</span></p></div>

  </div>
  <p>&nbsp;</p>
</c:forEach>
 <p>&nbsp;</p>
<div>
<a href="editDocument.action">
  <button style="width: 270px; /* 宽度 */
	height: 40px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #1E90FF; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
	float:left;
	margin-left:-3.8em;">写日志</button>
</a>
<p>&nbsp;</p>
</div>
</div>
</div>



<!--! end of #container -->

  <!--[if lt IE 7 ]>
    <script src="js/libs/dd_belatedpng.js"></script>
    <script>DD_belatedPNG.fix("img, .png_bg"); // Fix any <img> or .png_bg bg-images. Also, please read goo.gl/mZiyb </script>
  <![endif]-->

<script src="images/si.htm" type="text/javascript"></script><a style="display: none;" href="#" id="toTop"><span id="toTopHover"></span>To Top</a></body></html>