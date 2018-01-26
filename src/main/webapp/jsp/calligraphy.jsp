<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--名家名墨</title>
<link rel="shortcut icon" href="${context}/static/images/favicon.ico" type="image/x-icon"/>
<link href="${context}/static/JsCss/common.css" rel="stylesheet" media="screen" type="text/css" />
<script type="text/javascript" src="${context}/static/JsCss/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${context}/static/JsCss/min_contentslider.js"></script>
<link href="${context}/static/JsCss/calligraphy.css" rel="stylesheet" type="text/css" />
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
    	<div class="position">当前位置：<a href="#">关于我们</a>  >  <a href="#">名家名墨</a></div>
        <div class="zy_title"><p>名家名墨<span>Famous inscription </span></p></div>
        
        <div class="calligraphy">
            <DIV class=syFocusThumb >
                <DIV id=syFocusThumb class=sliderwrapper>
                    <DIV class=contentdiv>
                    <DIV class=dPic><A href="#" ><IMG src="${context}/static/images/pic1.gif" width="800" height="407"></A></DIV></DIV>
                    
                    <DIV class=contentdiv>
                    <DIV class=dPic><A href="#" ><IMG src="${context}/static/images/pic2.gif" width="800" height="407"></A></DIV></DIV>
                    
                    <DIV class=contentdiv>
                    <DIV class=dPic><A href="#" ><IMG src="${context}/static/images/pic1.gif" width="800" height="407"></A></DIV></DIV>
                    
                    <DIV class=contentdiv>
                    <DIV class=dPic><A href="#" ><IMG src="${context}/static/images/pic2.gif" width="800" height="407"></A></DIV></DIV>
                    
                    <DIV class=contentdiv>
                    <DIV class=dPic><A href="#" ><IMG src="${context}/static/images/pic1.gif" width="800" height="407"></A></DIV></DIV>
                    
                    <DIV class=contentdiv>
                    <DIV class=dPic><A href="#" ><IMG src="${context}/static/images/pic2.gif" width="800" height="407"></A></DIV></DIV>
                    
                    <DIV class=contentdiv>
                    <DIV class=dPic><A href="#" ><IMG src="${context}/static/images/pic1.gif" width="800" height="407"></A></DIV></DIV>
                </DIV>
            
                <DIV id=paginate-syFocusThumb class=pagination>
                    <I id=prev class=prev title=上一幅></I>
                        <DIV class=thumbWrap>
                            <DIV class=holder>
                                <I class=toc><A href="#" ><IMG src="${context}/static/images/Spic1.gif" width="107" height="55"></A></I> 
                                <I class=toc><A href="#" ><IMG src="${context}/static/images/Spic1.gif" width="107" height="55"></A></I> 
                                <I class=toc><A href="#" ><IMG src="${context}/static/images/Spic1.gif" width="107" height="55"></A></I> 
                                <I class=toc><A href="#" ><IMG src="${context}/static/images/Spic1.gif" width="107" height="55"></A></I> 
                                <I class=toc><A href="#" ><IMG src="${context}/static/images/Spic1.gif" width="107" height="55"></A></I>
                                <I class=toc><A href="#" ><IMG src="${context}/static/images/Spic1.gif" width="107" height="55"></A></I> 
                                <I class=toc><A href="#" ><IMG src="${context}/static/images/Spic1.gif" width="107" height="55"></A></I> 
                            </DIV>
                        </DIV>
                    <I id=next class=next title=下一幅></I>
                </DIV>
                
                <SCRIPT type=text/javascript>
                //焦点图初始化
                featuredcontentslider.init({
                id: "syFocusThumb", //指定ID
                contentsource: ["inline", ""], //有效值: ["inline", ""] 嵌入html or ["ajax", "path_to_file"] 嵌入utf-8文件
                toc: "scroll", //有效值: "#increment" 标记序号, "markup", ["markup1", "markup2", etc]标记具体内容
                nextprev: ["", ""], //next_pre标记 ，如："上一条" "下一条"，设置为 "" 为不出现
                revealtype: "click", //鼠标事件有效值: "click" or "mouseover"
                enablefade: [false, 0.15], // 切换褪色度 "true"or "false"
                autorotate: [true, 3500], // 切换停留时间 "true"or "false"
                delay: 0, //事件延迟时间(默认值：0，单位：ms)
                //playtab: 4, 默认的播放舌签
                onChange: function(previndex, curindex){ //触发处理；previndex 触发处理上一个记录； curindex 触发处理上一个记录 可以自定义函数控制；参考亲子网首页"亲子部落-相册"
                }
                });
                </SCRIPT>
            </DIV>
        </div>
    </div>
    

    <div id="footer-top">
        <jsp:include page="bottom.jsp"></jsp:include>
    </div>
 
</body>
</html>
