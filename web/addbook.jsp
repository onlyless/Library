<%--
  Created by IntelliJ IDEA.
  User: onlyless
  Date: 2018/7/2
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="admin" class="beans.AdminBean" scope="request"/>
<jsp:setProperty name="admin" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>HBUT SE2</title>
    <style type="text/css">
        body{
            color : #000 ;
            font-size : 12px ;

            margin : 0px auto ;
        }

    </style>

    <script type="text/javascript">
        function check(form){
            //document.forms.form1.username.value取得form1中Username的值 并判断是否为空
            if(document.forms.form1.isbn.value==""){
                //如果 为""则弹出提示
                alert("pls input username");
                //将输入焦点定位到没有输入的地方
                document.forms.form1.isbn.focus();
                //返回错误
                return false;
            }
            if(document.forms.form1.name.value==""){
                alert("pls input password");
                document.forms.form1.name.focus();
                return false;
            }
        }

    </script><link type="text/css" rel="stylesheet" href="/tpl/css/style.css">
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
        <p style="margin-top:60px;" class="header_right_font">
            <a href="/login.jsp" style="color:#ff0000;">登录</a></p>
        <a href="/rsg.jsp" style="color:red;">注册</a>
    </div>
</div>
<div id="menubar">
    <ul id="menu_top">
        <li><a href="/" target="_self" >图书馆</a></li>
        /<li><a href="/success.jsp" target="_self" >图书库存</a></li>
        <li><a href="/addbook.jsp" target="_self" >添加图书</a></li>
        <div class="clear"></div>
    </ul>
</div>
<form action="AddBookServlet" method="post" name="form1">


    <table border="1" cellspacing="1" cellpadding="1"  bordercolor="silver" align="center">
        <tr>
            <td colspan="2" align="center" bgcolor="#e8e8e8">用户登陆</td>
        </tr>
        <tr>
            <td>书名：</td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>ISBN：</td>
            <td><input type="text" name="isbn"/></td>
        </tr>
        <tr>
            <td>出版社：</td>
            <td><input type="text" name="publisher"/></td>
        </tr>
        <tr>
            <td>作者：</td>
            <td><input type="text" name="author"/></td>
        </tr>
        <tr>
            <td>购买价格：</td>
            <td><input type="text" name="price"/></td>
        </tr>
        <tr>
            <!-- onclick="return check(this) 调用上面的Script进行验证 -->
            <td><input type="submit" name="submit" onclick="return check(this);"/><input type="reset" name="reset"/></td>
        </tr>
    </table>

</form>
</body>
</html>
