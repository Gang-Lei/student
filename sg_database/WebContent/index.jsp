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
<center><font color=black size=12 >管理学生成绩页面</font></center>
<body>
  	<font color=white size=5 ><right>欢迎您，${sessionScope.customers.username }!</right></font>
           <a href="${pageContext.request.contextPath }/LogoutServlet"><font color=black size=5 >注销</font></a><br><br>
           <center><a href="${pageContext.request.contextPath }/ShowStudentServlet"><font color=black size=6 >学生全部成绩</a><br><br>
           <a href="${pageContext.request.contextPath }/s_select.jsp"><font color=black size=6 >查找学生成绩</a><br><br>
               <a href="${pageContext.request.contextPath }/s_add.jsp"><font color=black size=6 >添加学生成绩</a><br><br>
           <a href="${pageContext.request.contextPath }/xiugai.jsp"><font color=black size=6 >修改学生成绩</a><br><br>
           <a href="${pageContext.request.contextPath }/s_delete.jsp"><font color=black size=6 >删除学生成绩</a><br>
           
</body>
</html>