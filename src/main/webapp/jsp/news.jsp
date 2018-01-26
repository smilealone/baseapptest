<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--品牌动态</title>
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
            	<div class="title">品牌动态</div>
                <ul>
                	<li><a href="#">企业资讯</a></li>
                    <li class="activer"><a href="#">行业动态</a></li>
                </ul>
            </div>
            <div class="bottom_bg"></div>
            
            <div class="ph">
            	<img src="images/ph.png" width="169" height="67" />
            </div>
        </div>
        
        <div class="zy_right">
        	<div class="position">当前位置：<a href="#">品牌动态</a>  >  <a href="#">行业动态</a></div>
          <div class="zy_title"><p>品牌动态<span>News center </span></p></div>
          
          
          
        <div class="news">
            <div class="news_frist">
                <div class="news_frist_img"><a href="#"><img src="images/news1.gif" width="149" height="115" /></a></div>
                <div class="news_frist_w">
                    <h2><a href="news_show.html">兼容并蓄 自成一家</a></h2>
                    <p>
                    海以其博大，纳百川成其浩瀚；山以其厚重，历沧桑而为之雄浑。依托福建省恒伟阁集团夯实雄厚的国企背景嫁接"仙作"名门——醉仙堂红
                    木家具的艺术根源，福建省恒伟阁红木文化发展有限公司正以山的浑厚，以海的广博，以求精求善、追求卓越的企业精神，迅速崛起于红
                    木之林福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司董事长的李
                    金耀先生便提出以"品质为先，艺术至上"的企业核心宗旨，以...
                    </p>
                </div>
            </div>
            <ul>
                <li><a href="news_show.html">福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司</a><span>2013-06-03</span></li>
                <li><a href="news_show.html">福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司</a><span>2013-06-03</span></li>
                <li><a href="news_show.html">福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司</a><span>2013-06-03</span></li>
                <li><a href="news_show.html">福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司</a><span>2013-06-03</span></li>
                <li><a href="news_show.html">福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司</a><span>2013-06-03</span></li>
                <li><a href="news_show.html">福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司</a><span>2013-06-03</span></li>
                <li><a href="news_show.html">福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司</a><span>2013-06-03</span></li>
                <li><a href="news_show.html">福建省恒伟阁红木文化发展有限公司其前身为始创于1998年的仙游醉仙堂红木古典家具有限公司，创业伊始，时任公司</a><span>2013-06-03</span></li>
            </ul>
        </div>
        
        
        <div class="clr40"></div>
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
        <div class="clr10"></div>    
            
        </div>
    </div>
    
<div id="footer-top">
       <jsp:include page="bottom.jsp"></jsp:include>
    </div>
 
</body>
</html>
