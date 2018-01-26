<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--领导关怀</title>
<link rel="shortcut icon" href="${context}/static/images/favicon.ico" type="image/x-icon"/>
<link href="${context}/static/JsCss/common.css" rel="stylesheet" media="screen" type="text/css" />
<script type="text/javascript" src="${context}/static/JsCss/jquery-1.4.2.min.js"></script>
<script src="${context}/static/JsCss/index.js"></script>
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
            	<div class="title">领导关怀</div>
                <ul>
                    <li class="activer"><a href="#">领导关怀</a></li>
                </ul>
            </div>
            <div class="bottom_bg"></div>
            
            <div class="ph">
            	<img src="${context}/static/images/ph.png" width="169" height="67" />
            </div>
        </div>
        
        <div class="zy_right">
        	<div class="position">当前位置：<a href="#">领导关怀</a>  >  <a href="#">领导关怀</a></div>
            <div class="zy_title"><p>领导关怀<span> Leading care</span></p></div>
            <ul class="cz-ullist">
            	<li>
                	<a href="#" target="_blank">
                    	<img src="${context}/static/images/caring-tu.jpg"/>
                        <p>&middot;领导关怀标题文字</p>
                    </a>
                </li>
            	<li>
                	<a href="#" target="_blank">
                    	<img src="${context}/static/images/caring-tu.jpg"/>
                        <p>&middot;领导关怀标题文字</p>
                    </a>
                </li>
            	<li class="last">
                	<a href="#" target="_blank">
                    	<img src="${context}/static/images/caring-tu.jpg"/>
                        <p>&middot;领导关怀标题文字</p>
                    </a>
                </li>
            	<li>
                	<a href="#" target="_blank">
                    	<img src="${context}/static/images/caring-tu.jpg"/>
                        <p>&middot;领导关怀标题文字</p>
                    </a>
                </li>
            	<li>
                	<a href="#" target="_blank">
                    	<img src="${context}/static/images/caring-tu.jpg"/>
                        <p>&middot;领导关怀标题文字</p>
                    </a>
                </li>
            	<li class="last">
                	<a href="#" target="_blank">
                    	<img src="${context}/static/images/caring-tu.jpg"/>
                        <p>&middot;领导关怀标题文字</p>
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
