<%--
  Created by IntelliJ IDEA.
  User: onlyless
  Date: 2018/7/2
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
            if(document.forms.form1.username.value==""){
                //如果 为""则弹出提示
                alert("please input username");
                //将输入焦点定位到没有输入的地方
                document.forms.form1.username.focus();
                //返回错误
                return false;
            }
            if(document.forms.form1.password.value==""){
                alert("please input password");
                document.forms.form1.password.focus();
                return false;
            }
            if(document.forms.form1.password.value!=document.forms.form1.repasswd.value){
                alert("please input your reply password")
                document.forms.form1.repasswd.focus();
                return false;
            }
        }

    </script>
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
        <p style="margin-top:60px;" class="header_right_font">
            <a href="/login.jsp" style="color:#ff0000;">登录</a></p>
        <a href="/rsg.jsp" style="color:darkred;">注册</a>
    </div>
</div>
<div id="menubar">
    <ul id="menu_top">
        <li><a href="/" target="_self" >图书馆</a></li>
        /<li><a href="/success.jsp" target="_self" >现有图书</a></li>
        <li><a href="/addbook.jsp" target="_self" >添加图书</a></li>
        <div class="clear"></div>
    </ul>
</div>
<form action="AddUserServlet" method="post" name="form1">


    <table border="1" cellspacing="1" cellpadding="1"  bordercolor="silver" align="center">
        <tr>
            <td colspan="2" align="center" bgcolor="#e8e8e8">用户注册</td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td>确认密码：</td>
            <td><input type="password" name="repasswd"/></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" onclick="return check(this);"/><input type="reset" name="reset"/></td>
        </tr>
    </table>

</form>
</body>
</html>
