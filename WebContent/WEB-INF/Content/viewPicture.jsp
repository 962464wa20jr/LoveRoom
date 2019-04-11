<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
img{
 max-width:280px;
 max-height:560px;
}
</style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>相册</title>

    <!-- load stylesheets -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400"> <!-- Google web font "Open Sans", https://fonts.google.com/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">         <!-- Font Awesome, http://fontawesome.io/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">                               <!-- Bootstrap styles, https://getbootstrap.com/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tooplate-style.css">                            

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
      </head>

      <body>
        <div class="container-fluid">
            <div class="tm-body">
                <div class="tm-sidebar sticky">
                    <section id="welcome" class="tm-content-box tm-banner margin-b-15">
                        <div class="tm-banner-inner">
                            <i class="fa fa-film fa-4x margin-b-40"></i>
                            <h1 class="tm-banner-title">Witness</h1>
                            <p class="tm-banner-subtitle">Our Story</p>                   
                        </div>                    
                    </section>
                    <nav class="tm-main-nav">
                        <ul class="tm-main-nav-ul">
                            <li class="tm-nav-item"><a href="login.action" class="tm-nav-item-link tm-button active">主页</a>
                            </li>
                            <li class="tm-nav-item"><a href="viewDocument.action" class="tm-nav-item-link tm-button">日志</a>
                            </li>
                            <li class="tm-nav-item"><a href="viewMessage.action" class="tm-nav-item-link tm-button">留言板</a>
                            </li>
                            <li class="tm-nav-item"><a href="about.jsp" class="tm-nav-item-link tm-button">我们的故事</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
                <div class="tm-main-content tm-gallery-container">                    
                    <div class="grid">                                                    
                     
                        <c:forEach items="${paths}" var="picture" varStatus="vs">
                <div class="grid-item">
                    <img src="${pageContext.request.contextPath}/pictures/${picture}" alt="Image">
                </div>
            </c:forEach> 
                    </div>                    
                </div> <!-- tm-main-content -->
            </div>

            <footer class="tm-footer text-right">
                <p>Copyright &copy; <span class="tm-current-year">2018</span> Your Company 
                
                - Designed by <a href="#/tooplate" target="_parent">Tooplate</a>. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">LOVEROOM</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">LOVEROOM</a></p>
            </footer> 

        </div> <!-- container-fluid -->
        
        <!-- load JS files -->
        
        <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script> <!-- https://masonry.desandro.com/ -->
        <script src="${pageContext.request.contextPath}/js/masonry.pkgd.min.js"></script> <!-- https://masonry.desandro.com/ -->
        
        <!-- Templatemo scripts -->
        <script>  
    
        $(document).ready(function(){

            // init Masonry
            // https://codepen.io/craigwheeler/pen/MYjBga
            var $grid = $('.grid').masonry({
                
                // set itemSelector so .grid-sizer is not used in layout
                // itemSelector: '.grid-item',
                // use element for option
                // columnWidth: '.grid-sizer',
                // percentPosition: true

                itemSelector: '.grid-item',
                isFitWidth: true,
                columnWidth: 1
            });
            // layout Masonry after each image loads
            $grid.imagesLoaded().progress( function() {
              $grid.masonry('layout');
            });            

            // Update the current year in copyright
            $('.tm-current-year').text(new Date().getFullYear());        
        });

        </script>
    </body>
    </html>