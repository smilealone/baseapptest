<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--观赏预约</title>
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
            	<div class="title">联系我们</div>
                <ul>
                	<li><a href="contact_us.jsp">联系方式</a></li>
                    <li class="activer"><a href="guestbook.html">观赏预约</a></li>
                </ul>
            </div>
            <div class="bottom_bg"></div>
            
            <div class="ph">
            	<img src="images/ph.png" width="169" height="67" />
            </div>
        </div>
        
        <div class="zy_right">
        	<div class="position">当前位置：<a href="#">联系我们</a>  >  <a href="#">观赏预约</a></div>
          <div class="zy_title"><p>联系我们<span> Contact us </span></p></div>
           <div class="cz-cont">
           		<div class="cz-guestbook">
                        		<form action="" class="cz-form" method="post">
                                <p>昵称：<input type="text" name="name" value="给自己取个喜欢的昵称吧" id="name" class="cz-birds"></p>
                                <p>手机：<input type="text" name="tel" value="我们不会透露您的任何信息" id="tel" class="cz-birds"></p>
                                <p>QQ：<input type="text" name="qq" value="" id="qq" class="cz-birds"></p>
                                <p>E-mail：<input type="text" name="email" value="留下您的邮箱，关注我们的动态" id="email" class="cz-birds"></p>
                                <p>标题：<input type="text" name="title" value="" id="title" class="cz-birds"></p>
                                <p><label style="vertical-align:top;">留言：</label><textarea type="text" name="msg" value="文明发言，拒绝网络低俗文化！" id="msg" class="cz-birds"></textarea></p>
                                <div class="cz-sub">
                                <input type="submit" class="cz-gkbutton" id="submit_btn" value="" />
                                </div>
                                <input name="type" type="hidden" value="1" />
                                </form>
                        </div>
           </div>
        </div>
    </div>

<script type="text/javascript" src="JsCss/guestbook-input.js"></script>
<div id="footer-top">
        <jsp:include page="bottom.jsp"></jsp:include>
    </div>
 
</body>
</html>
