<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/jsp/common/common.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仁禾益美--企业简介</title>
<link rel="shortcut icon" href="${context}/static/images/favicon.ico" type="image/x-icon"/>
<link href="${context}/static/JsCss/common.css" rel="stylesheet" media="screen" type="text/css" />
<script type="text/javascript" src="${context}/static/JsCss/jquery-1.4.2.min.js"></script>
<script src="${context}/static/JsCss/index.js"></script>
<style>
        table_context{ border:1px solid #0094ff;width: 600px; min-height: 25px; line-height: 25px; text-align: center; border-collapse: collapse;}   
    </style>
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
        	<div class="position">当前位置：<a href="#">关于我们</a>  >  <a href="#">企业简介</a></div>
          <div class="zy_title"><p>企业简介<span> About us </span></p></div>
                <div class="cz-con-text">
                    <h1>
                        本公司经国家工商总局批准于2015年7月正式成立，总部位于北京，是一家集科研，生产，销售和服务于一体的多元化经营的科技公司，主要经营养生茶，护肤品，营养品，减肥产品等健康产业产品。</h1>
 
                    <br/>
                    <br/>
                    <h1>公司介绍</h1>
                    <table class="table_context">
                    
                       <tr>
                       <td width="10%"></td>
                       <td width="90%">
                    <table >
                       <tr>
                          <td><h2>企业文化</h2></td>
                          <td><h2>健康生活，快乐每一天</h2></td>
                       </tr>
                       <tr>
                       <td><h2>企业理念</h2></td>
                          <td><h2>诚信为本，真才实干，团结向上，创新俱进</h2></td>
                       </tr>
                       <tr>
                       <td><h2>企业核心</h2></td>
                          <td><h2>以人才为基础，以质量为保障，以制度为轨道，以成就为价值</h2></td>
                       </tr>
                       <tr>
                       <td><h2>企业使命</h2></td>
                          <td><h2>取之社会，用之社会</h2></td>
                       </tr>
                    </table>
                    </td>
                    </tr>
                    </table>
   					
               </div>
        </div>
    </div>
    
<div id="footer-top">
       <jsp:include page="bottom.jsp"></jsp:include>
       </div>
 
</body>
</html>
