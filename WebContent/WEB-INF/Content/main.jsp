<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>主页</title>
	<meta name="description" content="Free Html5 Templates and Free Responsive Themes Designed by Kimmy | zerotheme.com">
	<meta name="author" content="www.zerotheme.com">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/zerogrid.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsiveslides.css" />
	
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
	
	<link href='${pageContext.request.contextPath}/images/favicon.ico' rel='icon' type='image/x-icon'/>
	
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/responsiveslides.js"></script>
	<script>
    $(function () {
      $("#slider").responsiveSlides({
        auto: true,
        pager: true,
        nav: true,
        speed: 500,
        maxwidth: 800,
        namespace: "centered-btns"
      });
    });
  </script>
    
</head>
<body>
<!--------------Header--------------->
<header> 
	<div class="zerogrid">
		
	</div>
</header>

<!--------------Navigation--------------->

<nav>
	<ul>
		<li><a href="#">主页</a></li>
		<li><a href="viewPicture.action">相册</a></li>
		<li><a href="viewDocument.action">日志</a></li>
		<li><a href="viewMessage.action">留言板</a></li>
		<li><a href="#">我们的故事</a></li>
        <li style="float:right"><a href="logout.action">退出登录</a></li>
	</ul>
</nav>

<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >Website Template</a></div>	
<!--------------Content--------------->
<section id="content">
	<div class="zerogrid">
		<div class="row block">
			<div class="main-content col11">
			
				<div class="rslides_container">
					<ul class="rslides" id="slider">
						<li><img src="${pageContext.request.contextPath}/images/1.jpg" style="height:600px;max-width:750px;"/></li>
						<li><img src="${pageContext.request.contextPath}/images/IMG_3890.JPG" style="height:600px;max-width:750px;"/></li>
						<li><img src="${pageContext.request.contextPath}/images/IMG_3907.JPG" style="height:600px;max-width:750px;"/></li>
						<li><img src="${pageContext.request.contextPath}/images/2.jpg" style="height:600px;max-width:750px;"/></li>
					</ul>
				</div>
				
				<article>
					<div class="heading">
						<h2><a href="#">${leastdoc.get(0).title }</a></h2>
						<p class="info">>>> Posted by ${leastdoc.get(0).user.username } - ${leastdoc.get(0).date } - 0 Comments</p>
					</div>
					<div class="content">
						<img src="${pageContext.request.contextPath}/images/bg1.jpg" style="max-width:185px;max-height:140px;"/>
						${shortContent.get(0) }
					</div>
					<div class="footer">
						<p class="more"><a class="button" href="viewDocument.action">Read more >></a></p>
					</div>
				</article>
				<article>
					<div class="heading">
						<h2><a href="#">${leastdoc.get(1).title }</a></h2>
						<p class="info">>>> Posted by ${leastdoc.get(1).user.username } - ${leastdoc.get(1).date } - 0 Comments</p>
					</div>
					<div class="content">
						<img src="${pageContext.request.contextPath}/images/bg1.jpg" style="max-width:185px;max-height:140px;"/>
								${shortContent.get(1) }			
				</div>
					<div class="footer">
						<p class="more"><a class="button" href="viewDocument.action">Read more >></a></p>
					</div>
				</article>
				<article>
					<div class="heading">
						<h2><a href="#">${leastdoc.get(2).title }</a></h2>
						<p class="info">>>> Posted by ${leastdoc.get(2).user.username } - ${leastdoc.get(2).date } - 0 Comments</p>
					</div>
					<div class="content">
						<img src="${pageContext.request.contextPath}/images/bg1.jpg" style="max-width:185px;max-height:140px;"/>
						${shortContent.get(2) }
					</div>
					<div class="footer">
						<p class="more"><a class="button" href="viewDocument.action">Read more >></a></p>
					</div>
				</article>
			</div>
			
			<div class="sidebar col05">
				<section>
					<div class="heading">关于我们</div>
					<div class="content">
						这是徐玮南先生和朱国敏女士共同拥有的网站！这个网站主要是用来记录他们两个的爱情的。只有他们两个可以登录这个网站，在这里他们可以上传他们生活中点点滴滴的各种瞬间。emmmmmm，由于朱国敏女士怕被亲戚发现，所以徐玮南先生没办法在她的QQ空间留言，那么现在可以在这里畅所欲言了。不仅能留言，每隔一段时间，他们还可以在这里发表日志，记录他们的心情，有什么心事心里话想说，都可以写成日志！想看更多他们的故事，请点击上方导航栏！
					</div>
				</section>
				<section>
					<div class="heading">最新留言</div>
					<div class="content">
						<ul class="list">
							<li><a href="viewMessage.action">${shortlms.get(0)}</a></li>
							<li><a href="viewMessage.action">${shortlms.get(1)}</a></li>
							<li><a href="viewMessage.action">${shortlms.get(2)}</a></li>
							<li><a href="viewMessage.action">${shortlms.get(3)}</a></li>
							<li><a href="viewMessage.action">${shortlms.get(4)}</a></li>
						</ul>
					</div>
				</section>
				<section>
					<div class="heading">最新日志</div>
					<div class="content">
					<ul class="list">
						<li><a href="viewDocument.action">${leastdoc.get(0).title}</a></li>
						<li><a href="viewDocument.action">${leastdoc.get(1).title}</a></li>
						<li><a href="viewDocument.action">${leastdoc.get(2).title}</a></li>
						<li><a href="viewDocument.action">${leastdoc.get(3).title}</a></li>
						<li><a href="viewDocument.action">${leastdoc.get(4).title}</a></li>
					</ul>
					</div>
				</section>
				
			</div>
			
		</div>
	</div>
</section>
<!--------------Footer--------------->

<div id="copyright">
	<p>Copyright © 2012 - Domain Name</p>
	<p>Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">LOVEROOM</a> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">LOVEROOM</a></p>
</div>

</body></html>