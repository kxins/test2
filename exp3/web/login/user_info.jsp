<%@ page import="Login.UserDB" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Login.UserInfo" %><%--
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
    String username = (String) session.getAttribute("username");
    String result;
    if(username.equals("admin")){
        result = "管理员登录成功";
        UserDB userDB = new UserDB();
        ArrayList<UserInfo> users = userDB.GetUser();
%>
<table border="1">
    <tr><td>Id</td><td>name</td><td>password</td></tr>
    <%
        for(UserInfo user: users){
            out.println("<tr><td>"+user.getNUserId()+"</td><td>"+user.getVcLoginName()+"</td><td>"+user.getVcPassword()+"</td></tr>");
        }
    %>
</table>
<%
    }

    else {
        result = "普通用户"+username+"登录成功";
    }

%>
    <h1><%=result%></h1>
</body>
</html>
