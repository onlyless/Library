<%--
  Created by IntelliJ IDEA.
  User: onlyless
  Date: 2018/7/2
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="model.Book" %>
<%@ page import="beans.BookBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="beans.UserBean" scope="request"/>
<jsp:setProperty name="user" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <p style="margin-top:60px;" class="header_right_font">
            <a href="/login.jsp" style="color:#ff0000;">登录</a></p>
            <a href="/rsg.jsp" style="color:red;">注册</a>
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
<%
    session.setAttribute("user",user);
    String username=user.getUsername();
    Book book = new Book();
    ArrayList<BookBean> bookBeans = null;
    try {
        bookBeans = book.getBooks();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

<%=username %>,欢迎您来到HBUT_SE@2_图书馆!<br>
<table border="1" cellspacing="1" cellpadding="1"  bordercolor="silver" align="center">
    <tr>
        <td colspan="4" align="center" bgcolor="#e8e8e8">现藏书</td>
    </tr>
    <tr>
        <td>书名</td>
        <td>ISBN</td>
        <td>作者</td>
        <td>出版社</td>
    </tr>
    <% for(BookBean b:bookBeans){ %>
    <tr>
        <td><% out.print(b.getName()); %> </td>
        <td><% out.print(b.getIsbn()); %> </td>
        <td><% out.print(b.getAuthor()); %></td>
        <td><% out.print(b.getPublisher()); %> </td>
    </tr>
    <% } %>
</table>
</body>
</html>
