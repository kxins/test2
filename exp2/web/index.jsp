<%--
  Created by IntelliJ IDEA.
  User: Kxin
  Date: 2020-05-21
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  response.sendRedirect(path+"/Login/Login.jsp");
%>
