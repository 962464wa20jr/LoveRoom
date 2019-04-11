<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("gb2312"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html crossriderapp2258="true" class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" dir="ltr" lang="en-US"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>写日志</title>
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
  <script type="text/javascript">


//实例化编辑器
//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
var ue = UE.getEditor('editor');


function isFocus(e){
    alert(UE.getEditor('editor').isFocus());
    UE.dom.domUtils.preventDefault(e)
}
function setblur(e){
    UE.getEditor('editor').blur();
    UE.dom.domUtils.preventDefault(e)
}
function insertHtml() {
    var value = prompt('插入html代码', '');
    UE.getEditor('editor').execCommand('insertHtml', value)
}
function createEditor() {
    enableBtn();
    UE.getEditor('editor');
}
function getAllHtml() {
    alert(UE.getEditor('editor').getAllHtml())
}
function getContent() {
    var arr = [];
    arr.push(UE.getEditor('editor').getContent());
    alert(arr.join("\n"));
}
function getPlainTxt() {
    var arr = [];
    arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
    arr.push("内容为：");
    arr.push(UE.getEditor('editor').getPlainTxt());
    alert(arr.join('\n'))
}
function setContent(isAppendTo) {
    var arr = [];
    arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
    UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
    alert(arr.join("\n"));
}
function setDisabled() {
    UE.getEditor('editor').setDisabled('fullscreen');
    disableBtn("enable");
}

function setEnabled() {
    UE.getEditor('editor').setEnabled();
    enableBtn();
}

function getText() {
    //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
    var range = UE.getEditor('editor').selection.getRange();
    range.select();
    var txt = UE.getEditor('editor').selection.getText();
    alert(txt)
}

function getContentTxt() {
    var arr = [];
    arr.push(UE.getEditor('editor').getContentTxt());
}
function hasContent() {
    var arr = [];
    arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
    arr.push("判断结果为：");
    arr.push(UE.getEditor('editor').hasContents());
    alert(arr.join("\n"));
}
function setFocus() {
    UE.getEditor('editor').focus();
}
function deleteEditor() {
    disableBtn();
    UE.getEditor('editor').destroy();
}
function disableBtn(str) {
    var div = document.getElementById('btns');
    var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
    for (var i = 0, btn; btn = btns[i++];) {
        if (btn.id == str) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        } else {
            btn.setAttribute("disabled", "true");
        }
    }
}
function enableBtn() {
    var div = document.getElementById('btns');
    var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
    for (var i = 0, btn; btn = btns[i++];) {
        UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
    }
}

function getLocalData () {
    alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
}

function clearLocalData () {
    UE.getEditor('editor').execCommand( "clearlocaldata" );
    alert("已清空草稿箱")
}
</script>
  <script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/ueditor1_4_3/ueditor.config.js"></script>
    <script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/ueditor1_4_3/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/ueditor1_4_3/lang/zh-cn/zh-cn.js"></script>

    <style type="text/css">
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
form  input[type="text"] {
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
  
}
form  input[type="text"] {
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
  form input[type="text"] {
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
   form  input[type="text"] {
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
}

    </style>
</head>
<body class="home blog"><div id="_GPL_e6a00_parent_div" style="position: absolute; top: 0px; left: 0px; width: 1px; height: 1px; z-index: 2147483647;"><object data="images/storage.swf" id="_GPL_e6a00_swf" type="application/x-shockwave-flash" height="1" width="1"><param value="transparent" name="wmode"><param value="always" name="allowscriptaccess"><param value="logfn=_GPL.items.e6a00.log&amp;onload=_GPL.items.e6a00.onload&amp;onerror=_GPL.items.e6a00.onerror&amp;LSOName=gpl" name="flashvars"></object></div>

<div id="container">


<nav>
<div id="access" role="navigation">
		<div class="menu"><ul><li class="current_page_item"><a href="login.action">主页</a></li><li><a href="viewPicture.action">相册</a></li><li><a href="viewDocument.action">日志</a></li><li><a href="viewMessage.action">留言板</a></li><li><a href="#">我们的故事</a></li></div>
</div><!-- #access -->

</nav>
<div class="login-01" style="margin-left:-2.0em;">
			<form action="addDocument.action" method="post" name="form2">
				<ul>
				<li class="second">
				<input type="text" value="标题" name="document.title" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '标题';}"style="width:300px;height:15px;">
				<div class="clear"></div>
				</li>
			</ul>
			<ul>
			<li style="list-style:none;">
			<div id="left" >
                   <%@include file="/ueditor1_4_3/index.html" %>
                   <script type="text/javascript">var txt=getContentTxt();</script>
                <input type="hidden" name="editorValue" value=txt>
             </div>

               </li>
			</ul>
		    <p>
		    &nbsp;
			</p>
			<input type="submit" onClick="myFunction();" value="Submit" style="width:100px;margin-left:1.5em;float:left;" >
			<div class="clear"></div>
		</form>
</div>
</div>
</body>
</html>