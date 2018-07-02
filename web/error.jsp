<%--
  Created by IntelliJ IDEA.
  User: onlyless
  Date: 2018/7/2
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030">
    <title>HBUT SE2</title>
    <link type="text/css" rel="stylesheet" href="/tpl/css/style.css">
    <link type="text/css" rel="stylesheet" href="/tpl/css/mylib.css" />
    <link type="text/css" rel="stylesheet" href="/tpl/css/ui-lightness/jquery-ui-1.8.13.custom.css">
    <script  type="text/javascript" src="/tpl/js/jquery.1.7.1.min.js"></script>
    <script  type="text/javascript" src="/tpl/js/jquery-ui-1.8.13.custom.min.js"></script>
    <script  type="text/javascript" src="/tpl/js/highlighter.js"></script>


</head>
<body>
<div id="header_opac">
    <h1 class="header_opac_img">
        <div class="header_opac_logo">
            　　　　　　　图书管理系统<br>
            <p>Online Public Access Catalogue</p>

        </div>
    </h1>
    <div class="header_right header_right_top">
        <p class="header_right_font"><a href="../opaceng/opac/" target="_blank">EngLish</a> |        </p>
        <p style="margin-top:60px;" class="header_right_font">
            <a href="../opac/book_cart.php">暂存书架(<span id="bookcartCount">0</span>)</a> | <font color="blue"></font> <a href="../reader/login.php" style="color:#ff0000;">登录</a></p>
    </div>
</div>
<div id="menubar">
    <ul id="menu_top">
        <li><a class="menu_top_on" style="color:#6C5B23;"	href="../opac/search.php" target="_self" >书目检索</a></li>
        <li><a href="../top/top_lend.php" target="_self" >热门推荐</a></li>
        <li><a href="../browse/cls_browsing.php" target="_self" >分类浏览</a></li>
        <li><a href="../newbook/newbook_cls_browse.php" target="_self" >新书通报</a></li>
        <li><a href="../peri/peri_nav_e.php" target="_self" >期刊导航</a></li>
        <li><a href="../asord/asord_hist.php" target="_self" >读者荐购</a></li>
        <li><a href="../shelf/curriculum.php" target="_self" >学科参考</a></li>
        <li><a href="../info/info_guide.php" target="_self" >信息发布</a></li>
        <li><a href="../reader/redr_info.php" target="_self" >我的图书馆</a></li>
        <div class="clear"></div>
    </ul>
</div>
Sorry!你的登陆信息不正确!系统无法让你登陆!<a href="login.jsp">点击返回</a>
</body>
</html>
