<%--
  Created by IntelliJ IDEA.
  User: Kxin
  Date: 2020-05-21
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB18030" language="java" import="java.util.*"%>
<%@ page import="Login.*" %>
<%
    request.setCharacterEncoding("GB18030");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    session.setAttribute("username",name);
    int flag=0;

    UserDB userDB = new UserDB();
    UserInfo user = userDB.GetUserbyName(name);

    if(user == null) {
        flag = 1;
    }
    else if(!password.equals(user.getVcPassword())){
        flag = 2;
    }

    if(flag == 0){
        response.sendRedirect(request.getContextPath()+ "/login/user_info.jsp");
    }
    else {
        response.sendRedirect(request.getContextPath()+ "/login/login.jsp?loginflag=" +flag);
    }
%>
