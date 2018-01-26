<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
<link href="JsCss/load.css" rel="stylesheet" media="screen" type="text/css" />
</head>
<body>
<div id="cz-center">
	<ul class="top-link">
    	<li class="title"><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.mycodes.net/');"title='设置本站为浏览器首页(启始页)'>设为首页</a></li>
        <li class="pi"></li>
    	<li class="title"><a target=_top href="http://www.mycodes.net/">加入收藏</a></li>
        <li class="pi"></li>
    	<li class="title"><a href="contact_us.html">联系我们</a></li>
    </ul>
    <div class="cz-top-right"></div>
    <div id="cz-load-logo">
    	<p><img src="images/load-logo.png"/></p>
        <div class="cz-logo-text">
        	恒玮品质&nbsp; &nbsp;彰显尊贵&nbsp; &nbsp;<span>Constant junwei reveals noble quality</span>
        </div>
        <div class="cz-logo-botton">
        	<a href="index.html"><img src="images/load-button.png" /></a>
        </div>
    </div>
    <div id="footer-top">
    	<jsp:include page="bonton.jsp"></jsp:include>
    </div>
</div>
<script type="text/javascript">
function b(){
		//自动获取整体宽度
		var H=document.documentElement.clientHeight;
		var CH=document.getElementById("cz-load-logo").offsetHeight;
		var FH=document.getElementById("footer-top").offsetHeight;
		var MH=H-CH-FH-H*0.33;
		if(H>=560){
		document.getElementById('cz-load-logo').style.paddingTop=H*0.33+'px';
		}else{
		document.getElementById('cz-load-logo').style.paddingTop=144+'px';
		}
		if(H>=560){
		document.getElementById('cz-center').style.height=H+'px';
		}else{
		document.getElementById('cz-center').style.height=560+'px';
		}
		if(MH>=50){
		document.getElementById('footer-top').style.marginTop=MH+'px';
		}else{
		document.getElementById('footer-top').style.marginTop=50+'px';
		}
}
window.onload=window.onscroll=window.onresize=function(){
	b();
}
</script>
</body>
</html>
