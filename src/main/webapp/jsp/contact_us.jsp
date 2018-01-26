<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--联系我们</title>
<link rel="shortcut icon" href="${context}/static/images/favicon.ico" type="image/x-icon"/>
<link href="${context}/static/JsCss/common.css" rel="stylesheet" media="screen" type="text/css" />
<script type="text/javascript" src="JsCss/jquery-1.4.2.min.js"></script>
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
            	<div class="title">联系我们</div>
                <ul>
                	<li class="activer"><a href="contact_us.html">联系方式</a></li>
                    <li><a href="guestbook.jsp">观赏预约</a></li>
                </ul>
            </div>
            <div class="bottom_bg"></div>
            
            <div class="ph">
            	<img src="images/ph.png" width="169" height="67" />
            </div>
        </div>
        
        <div class="zy_right">
        	<div class="position">当前位置：<a href="#">联系我们</a>  >  <a href="#">联系方式</a></div>
          <div class="zy_title"><p>联系我们<span> Contact us </span></p></div>
           <div class="cz-cont">
           		<img src="${context}/static/images/map.png"/>
                <div class="cz-cont-title">
                	<div class="cz-cont-t">
                    	恒玮阁红木文化发展有限公司<br/><span>FUJIAN XINHUA REDWOOD CULTURE DEVELOPMENT CO.,LTD</span>
                    </div>
                    <div class="cz-adress">
                    	<p>电&nbsp; &nbsp; &nbsp; &nbsp;话： 1000000000000&nbsp; &nbsp; &nbsp; &nbsp; 传&nbsp; &nbsp; &nbsp; &nbsp;真： 0594-8279998</p>
                        <p>品鉴热线： 400-000-57&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  网&nbsp; &nbsp; &nbsp; &nbsp;址： www.***.com</p>
                        <p>仙游展厅： 某某某某某某某某105号</p>   
                        <p>福州展厅： 某某某某某某某某某某116号</p>
                    </div>
                </div>
           </div>
        </div>
    </div>

    
<div id="footer-top">
        <jsp:include page="bottom.jsp"></jsp:include>
    </div>
 
</body>
</html>
