<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生成绩删除页面</title>
<script>
function greeting(){
	alert("删除成功")
}
</script>
</head>
<style tape="image">
body {
  background: url(images/bg1.jpg);
  }
</style>
<center><font color=black size=7 >学生成绩删除页面</font></center>
<body>
	<div id="box">
		<div id="mid">
			<div id="denglu">
				${errorMsg}
				

				<form
				onsubmit="greeting()"
					action="${pageContext.request.contextPath}/DeleteStudentServlet"
					method="post" onsubmit="return checkForm();">
					<table width="100%" height="94" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<br><br><br>
							<td width="121" height="35" align="right"><font color=white size=5 >学号：</font></td>
							<td width="121" align="left">
										<input type="text" id="id" name="id" class="bian"
											size="18" value="${CUSTOMER_NAME}">*</td>
						</tr>
						<tr>
						
							<td height="24" colspan="2" align="center"><input
								value="删除" type="submit"
								/> </td>
						</tr>
						
					</table>
				</form>
			</div>
		<div id="foot"></div>
</body>
</html>