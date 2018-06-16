<%--
  Created by IntelliJ IDEA.
  User: onlyless
  Date: 2018/6/14
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>CourseDesign</title>
</head>
<body>

<h1>Django's CourseDesign</h1>
<table border="1" width="100%">
    <tr>
        <th>ID</th>
        <th>USERNAME</th>
    </tr>
        <%
    Connection connection = null;
    Statement statement = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pro1", "root", "root");
        statement = connection.createStatement();
        String sql = "SELECT * FROM user;";
        ResultSet resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
            %>
    <tr>
        <td><%=resultSet.getString("id")%>
        </td>
        <td><%=resultSet.getString("username")%>
        </td>
    </tr>
        <%
              }
          } catch (ClassNotFoundException e) {
            e.printStackTrace();
          } catch (SQLException e) {
            e.printStackTrace();
          }
          %>
</body>
</html>
