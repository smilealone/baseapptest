<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--电子期刊</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
<link href="JsCss/common.css" rel="stylesheet" media="screen" type="text/css" />
<script type="text/javascript" src="JsCss/jquery-1.4.2.min.js"></script>
<script src="JsCss/index.js"></script>
</head>

<body>
    <div class="header">
         <jsp:include page="top.jsp"></jsp:include>
    </div>
    
    <div class="clr50"></div>
    <div class="zy_banner_bg">
    	<div class="zy_banner"></div>
    </div>
    
    
    
    <div class="zy_main">
    	<div class="Left_subMenu">
        	<div class="top_bg"></div>
            <div class="c_bg">
            	<jsp:include page="about_menu.jsp"></jsp:include>
            </div>
            <div class="bottom_bg"></div>
            
            <div class="ph">
            	<img src="images/ph.png" width="169" height="67" />
            </div>
        </div>
        
        <div class="zy_right">
        	<div class="position">当前位置：<a href="#">关于我们</a>  >  <a href="#">电子期刊</a></div>
            <div class="zy_title"><p>电子期刊<span> Electronic journals</span></p></div>
            <div class="ts">提示：点击图片可以直接下载观看！</div>
            <ul class="cz-ullist">
            	<li>
                	<a href="#" target="_blank">
                    	<img src="images/ullist-bg.jpg"/>
                        <p>&middot;红木的加工工艺一</p>
                    </a>
                </li>
            	<li>
                	<a href="#" target="_blank">
                    	<img src="images/ullist-bg.jpg"/>
                        <p>&middot;红木的加工工艺一</p>
                    </a>
                </li>
            	<li class="last">
                	<a href="#" target="_blank">
                    	<img src="images/ullist-bg.jpg"/>
                        <p>&middot;红木的加工工艺一</p>
                    </a>
                </li>
            	<li>
                	<a href="#" target="_blank">
                    	<img src="images/ullist-bg.jpg"/>
                        <p>&middot;红木的加工工艺一</p>
                    </a>
                </li>
            	<li>
                	<a href="#" target="_blank">
                    	<img src="images/ullist-bg.jpg"/>
                        <p>&middot;红木的加工工艺一</p>
                    </a>
                </li>
            	<li class="last">
                	<a href="#" target="_blank">
                    	<img src="images/ullist-bg.jpg"/>
                        <p>&middot;红木的加工工艺一</p>
                    </a>
                </li>
            </ul>
            <div class="cz-list-link">
            	<ul class="cz-link-bg">
                	<li class="frist"><a href="#">上一页</a></li>
                	<li><a href="#"><b>1</b></a></li>
                	<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                	<li><a style="letter-spacing: -3px;" href="#">...</a></li>
                	<li><a href="#">25</a></li>
                	<li class="frist"><a href="#">下一页</a></li>
                </ul>
                
                <script type="text/javascript">
                	$(function(){
						$(".cz-link-bg").width($(".cz-link-bg").find("li").width()*2+($(".cz-link-bg").find("li").length-2)*20);
						})
                </script>
            </div>
        </div>
    </div>
    

    <div id="footer-top">
        <jsp:include page="bottom.jsp"></jsp:include>
    </div>
 
</body>
</html>
