<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--珍品典藏</title>
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
            	<img src="images/ph.png" width="169" height="67" />
            </div>
        </div>
        
        <div class="zy_right">
        	<div class="position">当前位置：<a href="#">珍品典藏</a>  >  <a href="#">客厅系列</a></div>
            <div class="zy_title"><p>珍品典藏<span> Gem collection</span></p></div>
            
            <div style="padding-top:25px;">
            	<div class="pro_img">
                	<img src="images/p.gif" width="625" height="328" />
                </div>
                
                <div class="pro_word">
                	<h2>·这里是家具名称</h2>
                    <p><span>介绍：</span>南与老挝交界的长山山脉（Giai Nui Truong Son）东西两侧。自古以来，人们观念
                    中的黄花梨只特指产于中国海南省的黄花梨，而当前市场上红木(5张)的所谓黄花梨则大多是产于与海南一海之隔、纬
                    度相同的越南以及老挝、柬埔寨、缅甸等东南亚国家的花梨木也就是香枝木，其颜色较艳、味道较浓，纹理、层次较乱。
                    </p>
                </div>
            </div>
        </div>
    </div>
    
    <div id="footer-top">
       <jsp:include page="bottom.jsp"></jsp:include>
    </div>
 
</body>
</html>
