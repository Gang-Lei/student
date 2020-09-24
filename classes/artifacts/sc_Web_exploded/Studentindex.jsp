<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" import="java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>显示登录的用户信息</title>
</head>
<style tape="image">
    body {
        background: url(images/sg1.jpg);
    }
</style>
<center><font color=black size=12 >学生成绩页面</font></center>
<body>
<font color=white    size=5 ><right>欢迎您，${sessionScope.student.username}!</right></font>
<a href="${pageContext.request.contextPath }/LogoutServlet"><font color=black size=5 >注销</font></a><br><br>
<center>
    <br>
    <a href="${pageContext.request.contextPath }/ShowStudentServlet"><font color=black size=6 >查询成绩</a><br><br>
</body>
</html>