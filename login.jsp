<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>

<script>
function greeting(){
	alert("确认登录")
}
</script>
</head>
<style tape="image">
body {
  background: url(images/sg1.jpg);
  }
</style>


	<center><font color=black size=7 >学生成绩管理系统</font></center>

<body>
	<div id="box">
		<div id="mid">
			<div id="denglu">

			     <center><font color=red size=5 >${errorMsg}</font></center>
                     
				<form
						action="${pageContext.request.contextPath}/StudentLogin.jsp">

						<tr>
							<div style="display: flex;width: 100%">
							<div ><input
									type="image" style="height:100px; font-size:22px;margin-left: 500px;margin-top: 200px ; "
									src="${pageContext.request.contextPath} /images/sg3.PNG"
									alt="学生登录" />
							</div>
							</div>
						</tr>
					<br>
				</form>
>				<form
						action="${pageContext.request.contextPath}/AdminLogin.jsp">
						<tr>

							<td height="66" colspan="10" align="right"><input
									type="image" style="height:100px; font-size:22px;margin-left: 1200px; margin-bottom: 300px;"
								src="${pageContext.request.contextPath}/images/sg4.PNG"
								alt="管理员登录" /> </td>
						</tr>

					</table>
				</form>
				
			</div>
		</div>
		<div id="foot"></div>
	</div>

</body>
</html>
