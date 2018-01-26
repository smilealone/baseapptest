<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--首页2</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
<link href="${context}/static/JsCss/common.css" rel="stylesheet" media="screen" type="text/css" />
<script type="text/javascript" src="${context}/static/JsCss/jquery-1.4.2.min.js"></script>
<script src="${context}/static/JsCss/index.js"></script>
<script type="text/javascript">
	
    window.onload=init;
	var n=1; //图片标记数
	var dingshi; //让图片动的定时器
	function init(){
		dingshi=window.setInterval("tupian()",2000);
	}
	//更换图片
	function tupian(){
		var obj=document.getElementById("myPic");
		n++;
		if(n>=4){
			n=1;
		}
		obj.src="${context}/static/images/"+n+".jpg";
	}
	//鼠标放上图片停止
	function stoptupian(){
		window.clearInterval(dingshi);
	}
	//鼠标离开图片动起来
	function dongqilai(){
		dingshi=window.setInterval("tupian()",1000);
	}
         
 </script>
</head>

<body>
    <div id="cz-center">
        <div class="header">
           <jsp:include page="top.jsp"></jsp:include>
        </div>
        
        <div class="index_banner">
            <div class="index_banner_bg">
		       	<div id="showPic" >  
			        <img src="${context}/static/images/1.jpg" id="myPic" style="width:970;height:330"/>  
			    </div>  
            </div>
        </div>
		
        <div class="index_3c_k">
        	<div class="c3_1">
            	<div class="title">
                	<p><span>News</span>站内资讯</p><a href="news.jsp"></a>
                </div>
                <div class="c3_1c">
                	<ul>
                    	<li><a href="#">·香紫檀仅产于印度主要在迈索尔邦</a></li>
                        <li><a href="#">·常言十檀九空最大的紫檀木直径仅为二十</a></li>
                        <li><a href="#">·木材有光泽稀少具有香气久露空气后变紫</a></li>
                        <li><a href="#">·耐久性强材质硬重细腻香枝木主产于越南与</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="yy"></div>
            
            <div class="c3_2">
            	<div class="title">
                	<p><span>Produsts</span>产品展示</p><a href="product.jsp"></a>
                </div>
                <div class="c3_2c">
                
                	<div class="left_btn"><a href="javascript:;"></a></div>
                    <div class="pro_s">
                        <ul>
                            <li>
                                <div class="img"><a href="product_show.jsp"><img src="${context}/static/images/pro.png" width="97" height="81" /></a></div>
                                <div class="word">
                                    <h3><a href="#">这里是产品名称</a></h3>
                                    <p>紫檀别名青龙木属蝶形花科亚热带常绿乔木属蝶形木热带常绿乔...</p>
                                </div>
                            </li>
                            
                            <li>
                                <div class="img"><a href="product_show.jsp"><img src="${context}/static/images/pro.png" width="97" height="81" /></a></div>
                                <div class="word">
                                    <h3><a href="#">这里是产品名称2</a></h3>
                                    <p>紫檀别名青龙木属蝶形花科亚热带常绿乔木属蝶形木热带常绿乔...</p>
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                    <div class="right_btn"><a href="javascript:;"></a></div>
                </div>
            </div>
            
            <div class="yy"></div>
            
            <div class="c3_3">
            	<div class="title">
                	<p><span>About</span>关于我们</p><a href="about.jsp"></a>
                </div>
                <div class="c3_3c">
					<div class="img"><a href="#"><img src="${context}/static/images/ab.gif" width="103" height="77" /></a></div>
                    <div class="word"><p>本公司经国家工商总局批准于2015年7月正式成立，总部位于北京，是一家...</p></div>
                </div>
            </div>
            
        </div>
        
        <div id="footer-top">
            <jsp:include page="bottom.jsp"></jsp:include>
        </div>
    </div>    
</body>
</html>
