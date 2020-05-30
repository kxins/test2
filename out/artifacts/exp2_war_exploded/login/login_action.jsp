<%--
  Created by IntelliJ IDEA.
  User: Kxin
  Date: 2020-05-21
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("GB18030");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String result = new String();

    System.out.println(name);
    System.out.println(password);

    if(name.equals("admin") && password.equals("Abc123#")){
        result = "管理员成功登陆";
    }
    else if(name.equals(password)){
        result = "普通用户"+name+"成功登陆";
    }
    else {
        System.out.println("失败");
        response.sendRedirect(request.getContextPath()+"/login/login.jsp");
        return;
    }

    System.out.println("成功");
    session.setAttribute("result",result);
    response.sendRedirect(request.getContextPath()+"/login/user_info.jsp");
%>
