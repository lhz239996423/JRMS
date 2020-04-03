<%-- 
    Document   : test
    Created on : 2018-12-6, 20:18:13
    Author     : lhz239996423
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>CSS3响应式二级导航菜单 - 源码之家</title>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/bkcolor.css?v=<%= System.currentTimeMillis()%>">
<link rel="stylesheet" type="text/css" href="css/index.css?v=<%= System.currentTimeMillis()%>">
<style>
    #mydiv{
        
    }
</style>
</head>
<script language="javascript">
function change(src)
{
document.getElementById(ifr).src = src;
}
</script>
<body style="background: #84C1FF;">
    <div class="index-nav">
        <div class="index-nav-frame-line active" tabindex="-1">
            个人中心
            <div class="index-nav-frame-line-center">
                <div class="index-nav-frame-line-li">
                    <button class="leftbutton" onclick="return change(index.html)">
                    <a href="#" >通讯录管理</a>
                    </button>
                </div>
                <div class="index-nav-frame-line-li">
                    首页2
                </div>
                <div class="index-nav-frame-line-li">
                    首页3
                </div>
                <div class="index-nav-frame-line-li">
                    首页4
                </div>
                <div class="index-nav-frame-line-li">
                    首页5
                </div>
            </div>
        </div>
    </div>
    <iframe id="ifr">
<div id="mydiv"><h3 style="text-align: center;line-height: 50px;color: aliceblue;font-size: 18px">调整浏览器窗口大小查看效果</h3></div>

<div style="text-align:center;">
<p>更多源码：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div></iframe>


左边的导航加个链接
<a href="#" onclick="change(--这里要写iframe中需要显示的页面--)"></a>
</body>
</html>
