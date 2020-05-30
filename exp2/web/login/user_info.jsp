<%--
  Created by IntelliJ IDEA.
  User: Kxin
  Date: 2020-05-21
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user_info</title>
</head>
<body>
<%
    String result = (String) session.getAttribute("result");
%>
    <h1><%=result%></h1>
</body>
</html>
