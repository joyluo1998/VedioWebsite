<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/base_Js/jquery-1.9.1.js" charset="utf-8"></script>
<script type="text/javascript" src="js/base_Js/bootstrap.js" charset="utf-8"></script>
<script type="text/javascript" src="js/base_Js/jquery.cycle.all.js" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8"></script>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="css/base_css/bootstrap.css">
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
<!-- 文本收索框的字体颜色等等 -->
<script type="text/javascript">
	$(document).ready(function(){
		var searchTextNode = $("#search-text");
		searchTextNode.focus(function(){
			searchTextNode.attr("value","");
		});
	});
</script>
<script language="javascript">
        $(function() {
            /*图片轮播*/
            $('#leftside').cycle({
                fx:        'cover',
                direction: 'right', // one of up|down|left|right  default=left
                delay:    -1000
            });

            $('#rightside').cycle({
                fx:        'cover',
                direction: 'left', // one of up|down|left|right  default=left
                delay:    -1000
            });
            /*搜索区域定位：调用定义好的resize函数*/
            $(window).resize();
            /*设置视频和图片站logo链接的hover效果：替换背景图片*/
            $(".part-video").hover(function(){
                $(".part-video a>img").attr({ src:"images/front_img/image_index/video-logo-Hover.png" });
            },function(){
                $(".part-video a>img").attr({src: "images/front_img/image_index/video-logo.png" });
            });
            /*  */
            $(".part-images").hover(function(){
                $(".part-images a>img").attr({src:"images/front_img/image_index/image-logo-Hover.png"})
            },function(){
                $(".part-images a>img").attr({src:"images/front_img/image_index/image-logo.png"})
            });
        });
        /*函数：获取窗口宽高并赋值确定搜索框容器的位置*/
        $(window).resize(function(){
            $("#search").css({
                left:($(window).width()-$("#search").outerWidth())/2,
                top:($(window).height()-$("#search").outerHeight())/3
            });
        });
    </script>
    <!--兼容IE引擎的元素-->
    <!--if IE>
    <script type="text/javascript">
        document.createElement("header");
        document.createElement("section");
        document.createElement("article");
        document.createElement("footer");
    </script>
    <![endif]--> 
     <style>
        html,body{
            height: 100%;
            background-color: #1e1700;
        }
        /*设置页眉和页尾的样式*/
        header {
            background-color: #1e1700;
            height: 4%;
            min-height: 29px;
        }
        header div{
          color: #ffffff;
          font-size: 14px;
          line-height: 29px;
          float: right;
          margin-right: 50px;
       }
        header div a{
            color: #ffffff;
        }
        footer{
            min-height: 29px;
            height: 4%;
            background-color: #1e1700;
            text-align: center;

            color: #ffffff;
        }
        footer label{
            line-height: 29px;
        }
        /*设置中间内容容器section的样式*/
        #content{
            height: 700px;
            width: 1366px;
            background-color: #1e1700;
            position: relative;
            z-index: 0;
        }
        /*左右两边轮播图片容器的样式*/
        #leftside,#rightside{
            height: 100%;
            width: 682px;
            overflow: hidden;
        }
        #leftside{
            float: left;
        }
        #rightside{
            float: right;
        }
        #leftside img{
            width: 682px;
            height: 100%;
        }
        #rightside img{
            width: 682px;
            height: 100%;
        }
        /*搜索框部分的样式*/
        #search{
            position: absolute;
            z-index: 20;
            width: 1000px;
            height: 162px;
          /* left: 188px;
            top: 202px;*/
        }
        #top{
            width: 1000px;
            height: 98px;
        }
        #top .part-video{
            width: 380px;
            height: 32px;
            float: left;
            margin-top: 33px;
            background-image: url("images/front_img/image_index/left-line.png");
        }
        #top .part-media{
            width: 228px;
            height: 98px;
            float: left;
            margin: 0 6px 0 6px;
        }
        #top .part-images{
            width: 380px;
            height: 32px;
            float: left;
            margin-top: 33px;
            background-image: url("images/front_img/image_index/right-line.png");
        }
        #down{
            width: 503px;
            margin: 0 auto;
            margin-top: 27px;
            height: 37px;
        }
        .caret1 {
            display: inline-block;
            width: 0;
            height: 0;
            /*应项目需要，vertical-align由原来的top值改为middle*/
            vertical-align:middle;
            border-top: 6px solid #009874;
            border-right: 6px solid transparent;
            border-left: 6px solid transparent;
            content: "";
            float: right;
            margin-top: 10px;
        }
        /*搜索框的样式*/
        .search{
            position: relative;
            z-index: 20;
        }
        .select-btn{
            float: left;
            width: 78px;
            height: 78px;
        }
       .search-bar{
           float: right;
           width: 422px;
           height: 38px;
       }
        #search-text{
            width: 408px;
            height: 27px;
            line-height: 27px;
            border-radius: 10px;
            behavior: url(js/base_Js/ie-css3.htc);
        }
        .search #search-icon{
            position: absolute;
            right: 10px;
            top: 5px;
            z-index: 50;
        }
    </style>
</head>
<body>
  	<header>
   <div><a href="welcomeAction">跳转到后台(暂时)</a> &nbsp;|&nbsp;<a href="#">登录</a> &nbsp;|&nbsp;<a href="#">注册</a>&nbsp;|&nbsp;<a href="#">联系我们</a></div>
</header>
<section id="content">
    <!--left-part-->
    <article id="leftside">
        <c:forEach items="${leftPart}" var="var">
        <img src="${var.url}">
        </c:forEach>
    </article>
    <!--right-part-->
    <article id="rightside">
       <c:forEach items="${rightPart}" var="var">
        <img src="${var.url}">
        </c:forEach>
    </article>
    <!--搜索框部分--------只含视频、多媒体、图片的logo链接--->
    <section id="search">
        <article id="top">
            <section class="part-video"><a href="ReceptionVedio"> <img src="images/front_img/image_index/video-logo.png" style="padding-left: 232px;"></a></section>
            <section class="part-media"><img src="images/front_img/image_index/media-logo.png"></section>
            <section class="part-images"><a href="receptionImage"> <img src="images/front_img/image_index/image-logo.png" style="padding-left: 58px;"></a></section>
        </article>
        <!--搜索框内容部分：只含表单------------------------------------------------------------------------>
        <article id="down">
           <form action="receptionIndexVedio" method="post">
                <section class="select-btn">
                    <div class="btn-group">
                        <!--应设计需要，要把下拉按钮的圆角去掉，样式在第3680行左右-->
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#" style="height: 27px; vertical-align: middle;line-height: 27px;border-radius:0;width:60px;">
                           <label style="font-family: '宋体'; border-radius: 10px;font-weight:bold;font-size:14px;color:#009874;display:inline-block;">分类</label>
                            <span class="caret1"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="ReceptionVedio" target="_blank">视频</a> </li>
                            <li class="divider"></li>
                            <li><a href="receptionImage" target="_blank">图片</a> </li>
                        </ul>
                    </div>
                </section>
                <section class="search-bar">
                    <div class="controls">
                        <div class="input-append search"><!--引用了框架中的扩展表单控件样式-->
                            <input type="search" name="search" id="search-text" value="请输入您要搜索的内容">
                            <input type="image" src="images/front_img/image_index/search.png" id="search-icon"/>
                        </div>
                    </div>
                </section>
            </form>
        </article>
    </section>
</section>
<footer><label>copyright@</label></footer>
</body>
</html>
