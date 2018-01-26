  <%@ page contentType="text/html; charset=utf-8"%>
  <%@ include file="/jsp/common/common.jsp" %>
 
  <ul class="top-link">
        <li class="title"><a href="login.jsp">登陆</a><a href="register.jsp">注册</a></li>
        <li class="pi"></li>
        <li class="title"><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.renheyimei.com/');"title='设置本站为浏览器首页(启始页)'>设为首页</a></li>
        <li class="pi"></li>
        <li class="title"><a target=_top href="http://www.renheyimei.com/">加入收藏</a></li>
        <li class="pi"></li>
        <li class="title"><a href="contact_us.jsp">联系我们</a></li>
    </ul>
    
	<div class="logo">
		<a href="index.jsp">&nbsp;&nbsp;&nbsp;<img src="${context}/static/images/logo1.jpg" width="150" height="122" /></a>
	</div>
    <div class="menu">
    	<ul>
    	    <li class="active"><a href="index.jsp">首页</a><span>index</span></li>
        	<li><a href="about.jsp">关于我们</a><span>about us</span></li>
            <li><a href="product.jsp">产品介绍</a><span>collection</span></li>
            <li><a href="caring.jsp">线上商城</a><span>our culture</span></li> 
            <li><a href="product.jsp">加盟介绍</a><span>collection</span></li>
            <li><a href="calligraphy.jsp">团队介绍</a><span>collection</span></li>
            <li><a href="news.jsp">新闻中心</a><span>News center</span></li>    
        </ul>
    </div>