<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--企业视频</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
<link href="JsCss/common.css" rel="stylesheet" media="screen" type="text/css" />
<script type="text/javascript" src="JsCss/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="JsCss/video.js"></script>

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
        	<jsp:include page="about_menu.jsp"></jsp:include>
        </div>
        
        <div class="zy_right">
        	<div class="position">当前位置：<a href="#">关于我们</a>  >  <a href="#">企业视频</a></div>
            <div class="zy_title"><p>企业视频<span>Corporate video</span></p></div>
            
            <div class="videobox">
                <div class="video-img">
                    <embed id="js_videoCon_1" class="js_videoCon"   src="http://player.youku.com/player.php/sid/XNTMyNzE2ODk2/v.swf" allowFullScreen="true" quality="high" width="615" height="380" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                    <embed id="js_videoCon_2" class="js_videoCon" style="display:none"  src="http://player.youku.com/player.php/sid/XNTMyNzM4MzA4/v.swf" allowFullScreen="true" quality="high"  width="615" height="380" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                    <embed id="js_videoCon_3" class="js_videoCon" style="display:none"  src="http://player.youku.com/player.php/sid/XNTMyNzQ1MjQw/v.swf" allowFullScreen="true" quality="high"  width="615" height="380" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                    <embed id="js_videoCon_4" class="js_videoCon" style="display:none"  src="http://player.youku.com/player.php/sid/XNTMyODE3NTU2/v.swf" allowFullScreen="true" quality="high"  width="615" height="380" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                    <embed id="js_videoCon_5" class="js_videoCon" style="display:none"  src="http://player.youku.com/player.php/sid/XNTMyNzE2ODk2/v.swf" allowFullScreen="true" quality="high" width="615" height="380" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                    <embed id="js_videoCon_6" class="js_videoCon" style="display:none"  src="http://player.youku.com/player.php/sid/XNTMyNzM4MzA4/v.swf" allowFullScreen="true" quality="high"  width="615" height="380" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                    <embed id="js_videoCon_7" class="js_videoCon" style="display:none"  src="http://player.youku.com/player.php/sid/XNTMyNzQ1MjQw/v.swf" allowFullScreen="true" quality="high"  width="615" height="380" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                    <embed id="js_videoCon_8" class="js_videoCon" style="display:none"  src="http://player.youku.com/player.php/sid/XNTMyODE3NTU2/v.swf" allowFullScreen="true" quality="high"  width="615" height="380" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
                    <div id="video_introduction">视频标题1</div>
                </div>
                
                
                <div style="float:left; padding-left:10px;">
                    <div id="up" class="up2"></div>
                    <div class="video-list">
                        <ul>
                            <li class="now" id="http://player.youku.com/player.php/sid/XNTMyNzE2ODk2/v.swf" video="1" vid="1" title="视频1">
                                <img src="images/video.gif" width="92" height="52">
                            </li>
                            <li id="http://player.youku.com/player.php/sid/XNTMyNzM4MzA4/v.swf" video="2" vid="2" title="视频2">
                                <img src="images/video.gif" width="92" height="52">
                            </li>
                            <li id="http://player.youku.com/player.php/sid/XNTMyNzQ1MjQw/v.swf" video="3" vid="3" title="视频3">
                                <img src="images/video.gif" width="92" height="52">
                            </li>
                            <li id="http://player.youku.com/player.php/sid/XNTMyODE3NTU2/v.swf" video="4" vid="4" title="视频4">
                                <img src="images/video.gif" width="92" height="52">
                            </li>
                            <li id="http://player.youku.com/player.php/sid/XNTMyNzE2ODk2/v.swf" video="5" vid="5" title="视频5">
                                <img src="images/video.gif" width="92" height="52">
                            </li>
                            <li id="http://player.youku.com/player.php/sid/XNTMyNzM4MzA4/v.swf" video="6" vid="6" title="视频6">
                                <img src="images/video.gif" width="92" height="52">
                            </li>
                            <li id="http://player.youku.com/player.php/sid/XNTMyNzQ1MjQw/v.swf" video="7" vid="7" title="视频7">
                                <img src="images/video.gif" width="92" height="52">
                            </li>
                            <li id="http://player.youku.com/player.php/sid/XNTMyODE3NTU2/v.swf" video="8" vid="8" title="视频8">
                                <img src="images/video.gif" width="92" height="52">
                            </li>
                        </ul>
                    </div>
                    <div id="down" class="down"></div>
                </div>
            </div>
 
        </div>
    </div>

    <div id="footer-top">
        <jsp:include page="bottom.jsp"></jsp:include>
    </div>
 
</body>
</html>
