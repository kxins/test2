<%--
  Created by IntelliJ IDEA.
  User: Kxin
  Date: 2020-05-21
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
<%
    String username = (String) session.getAttribute("username");
    String loginFlag=request.getParameter("loginflag");
    if(loginFlag==null){ //无登录失败标识，是正常访问登录页面
        loginFlag="";
    }
    if(loginFlag.equals("1")){
        out.println("alert('用户【"+username+"】不存在！')");
    }else if(loginFlag.equals("2")){
        out.println("alert('密码错误！')");
    }
%>
</script>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../css/student.css" />
    <script type="application/javascript" src="../js/login.js"></script>
</head>
<body>
    <form name="frm" action="login_action.jsp" method="get">
        <table border="1" >
            <tr>
                <td colspan="2" align="center" class="head">用户登录信息录入，<span class="star">*</span>为必填项</td>
            </tr>
            <tr>
                <th>用户名：</th>
                <td>
                    <input type="text" name="name" ><span class="star">*</span>
                </td>
            </tr>
            <tr>
                <th>密码：</th>
                <td>
                    <input type="password" name="password" ><span class="star">*</span>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="提交" onclick="return check()">
                    <input type="reset" value="重置" >
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
