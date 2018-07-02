<%--
  Created by IntelliJ IDEA.
  User: onlyless
  Date: 2018/6/14
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
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
                alert("pls input username");
                //将输入焦点定位到没有输入的地方
                document.forms.form1.username.focus();
                //返回错误
                return false;
            }
            if(document.forms.form1.password.value==""){
                alert("pls input password");
                document.forms.form1.password.focus();
                return false;
            }
        }

    </script>
</head>
<body>
<form action="LoginServlet" method="post" name="form1">


    <table border="1" cellspacing="1" cellpadding="1"  bordercolor="silver" align="center">
        <tr>
            <td colspan="2" align="center" bgcolor="#e8e8e8">用户登陆</td>
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
            <td><a href="rsg.jsp" >新用户注册</a></td>
            <!-- onclick="return check(this) 调用上面的Script进行验证 -->
            <td><input type="submit" name="submit" onclick="return check(this);"/><input type="reset" name="reset"/></td>
        </tr>
    </table>

</form>
</body>
</html>


<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page import="java.sql.*" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>CourseDesign</title>--%>
    <%--<link type="text/css" rel="stylesheet" href="/tpl/css/style.css">--%>
    <%--<link type="text/css" rel="stylesheet" href="/tpl/css/mylib.css" />--%>
    <%--<link type="text/css" rel="stylesheet" href="/tpl/css/ui-lightness/jquery-ui-1.8.13.custom.css">--%>
    <%--<script  type="text/javascript" src="/tpl/js/jquery.1.7.1.min.js"></script>--%>
    <%--<script  type="text/javascript" src="/tpl/js/jquery-ui-1.8.13.custom.min.js"></script>--%>
    <%--<script  type="text/javascript" src="/tpl/js/highlighter.js"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div id="header_opac">--%>
    <%--<h1 class="header_opac_img">--%>
        <%--<div class="header_opac_logo">--%>
            <%--　　　　　　　图书馆书目检索系统<br>--%>
            <%--<p>Online Public Access Catalogue</p>--%>

        <%--</div>--%>
    <%--</h1>--%>
    <%--<div class="header_right header_right_top">--%>
        <%--<p class="header_right_font"><a href="../opaceng/opac/" target="_blank">EngLish</a> |        </p>--%>
        <%--<p style="margin-top:60px;" class="header_right_font">--%>
            <%--<a href="../opac/book_cart.php">暂存书架(<span id="bookcartCount">0</span>)</a> | <font color="blue"></font> <a href="../reader/login.php" style="color:#ff0000;">登录</a></p>--%>
    <%--</div>--%>
<%--</div>--%>
<%--<div id="menubar">--%>
    <%--<ul id="menu_top">--%>
        <%--<li><a class="menu_top_on" style="color:#6C5B23;"	href="../opac/search.php" target="_self" >书目检索</a></li>--%>
        <%--<li><a href="../top/top_lend.php" target="_self" >热门推荐</a></li>--%>
        <%--<li><a href="../browse/cls_browsing.php" target="_self" >分类浏览</a></li>--%>
        <%--<li><a href="../newbook/newbook_cls_browse.php" target="_self" >新书通报</a></li>--%>
        <%--<li><a href="../peri/peri_nav_e.php" target="_self" >期刊导航</a></li>--%>
        <%--<li><a href="../asord/asord_hist.php" target="_self" >读者荐购</a></li>--%>
        <%--<li><a href="../shelf/curriculum.php" target="_self" >学科参考</a></li>--%>
        <%--<li><a href="../info/info_guide.php" target="_self" >信息发布</a></li>--%>
        <%--<li><a href="../reader/redr_info.php" target="_self" >我的图书馆</a></li>--%>
        <%--<div class="clear"></div>--%>
    <%--</ul>--%>
<%--</div>--%>



<%--<h1>Django's CourseDesign</h1>--%>
<%--<table border="1" width="100%">--%>
    <%--<tr>--%>
        <%--<th>ID</th>--%>
        <%--<th>USERNAME</th>--%>
    <%--</tr>--%>
        <%--<%--%>
    <%--Connection connection = null;--%>
    <%--Statement statement = null;--%>

    <%--try {--%>
        <%--Class.forName("com.mysql.jdbc.Driver");--%>
        <%--connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pro1", "root", "root");--%>
        <%--statement = connection.createStatement();--%>
        <%--String sql = "SELECT * FROM user;";--%>
        <%--ResultSet resultSet = statement.executeQuery(sql);--%>
        <%--while(resultSet.next()){--%>
            <%--%>--%>
    <%--<tr>--%>
        <%--<td><%=resultSet.getString("id")%>--%>
        <%--</td>--%>
        <%--<td><%=resultSet.getString("username")%>--%>
        <%--</td>--%>
    <%--</tr>--%>
        <%--<%--%>
              <%--}--%>
          <%--} catch (ClassNotFoundException e) {--%>
            <%--e.printStackTrace();--%>
          <%--} catch (SQLException e) {--%>
            <%--e.printStackTrace();--%>
          <%--}--%>
          <%--%>--%>
</body>
</html>
