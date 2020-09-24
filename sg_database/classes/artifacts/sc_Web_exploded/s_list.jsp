<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8" import="java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>显示学生成绩</title>
	<style>
		body{
			display: flex;
			justify-content: center;
		}
	</style>
</head>
<body>

<table border="5">

		<tr>


			<td><font color=black size=10>学号</font></td>
			<td><font color=black size=10 >姓名</font></td>
			<td><font color=black size=10 >性别</font></td>
			<td><font color=black size=10 >java成绩</font></td>
			<td><font color=black size=10 >数据库成绩</font></td>
			<td><font color=black size=10 >绩点</font></td>
		</tr>
		<c:forEach var="student" items="${student}">
			<tr>
				<td><font color=black size=10 >${student.id}</font></td>
				<td><font color=black size=10 >${student.name}</font></td>
				<td><font color=black size=10 >${student.sex}</font></td>
				<td><font color=black size=10 >${student.mobile}</font></td>
				<td><font color=black size=10 >${student.address}</font></td>
				<td><font color=black size=10 >${student.grade} </font></td>

			</tr>
		</c:forEach>
	</table>
  
           
</body>
</html>