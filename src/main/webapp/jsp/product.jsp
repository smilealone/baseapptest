<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--产品介绍</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
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
            	<div class="title">珍品典藏</div>
                <ul>
                	<li class="activer"><a href="product.jsp">客厅系列</a></li>
                    <li><a href="product.jsp">书房系列</a></li>
                    <li><a href="product.jsp">餐厅系列</a></li>
                    <li><a href="product.jsp">卧室系列</a></li>
                    <li><a href="product.jsp">休闲系列</a></li>
                    <li><a href="product.jsp">工艺系列</a></li>
                </ul>
            </div>
            <div class="bottom_bg"></div>
            
            <div class="ph">
            	<img src="${context}/static/images/ph.png" width="169" height="67" />
            </div>
        </div>
        
        <div class="zy_right">
        	<div class="position">当前位置：<a href="#">珍品典藏</a>  >  <a href="#">客厅系列</a></div>
            <div class="zy_title"><p>珍品典藏<span> Gem collection</span></p></div>
            <div class="ts">提示：点击图片查看详情！</div>
            <ul class="cz-ullist">
            	<li>
                	<a href="product_show.html" target="_blank">
                    	<span class="pr-tu"><img src="${context}/static/images/el-tu.jpg"/></span>
                        <p>&middot;这里是家具名称</p>
                    </a>
                </li>
            	<li>
                	<a href="product_show.html" target="_blank">
                    	<span class="pr-tu"><img src="${context}/static/images/el-tu.jpg"/></span>
                        <p>&middot;这里是家具名称</p>
                    </a>
                </li>
            	<li class="last">
                	<a href="product_show.html" target="_blank">
                    	<span class="pr-tu"><img src="${context}/static/images/el-tu.jpg"/></span>
                        <p>&middot;这里是家具名称</p>
                    </a>
                </li>
            	<li>
                	<a href="product_show.html" target="_blank">
                    	<span class="pr-tu"><img src="${context}/static/images/el-tu.jpg"/></span>
                        <p>&middot;这里是家具名称</p>
                    </a>
                </li>
            	<li>
                	<a href="product_show.html" target="_blank">
                    	<span class="pr-tu"><img src="${context}/static/images/el-tu.jpg"/></span>
                        <p>&middot;这里是家具名称</p>
                    </a>
                </li>
            	<li class="last">
                	<a href="product_show.html" target="_blank">
                    	<span class="pr-tu"><img src="${context}/static/images/el-tu.jpg"/></span>
                        <p>&middot;这里是家具名称</p>
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
