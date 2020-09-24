<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
	<div id="box">
		<div id="mid">
			<div id="denglu">
				${errorMsg}
				<form
					action="${pageContext.request.contextPath}/ShowStudentServlet"
					method="post" onsubmit="return checkForm();">
					<table width="100%" height="94" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="70" height="35" align="right">学号：</td>
							<td width="121" align="left">
										<input type="text" id="sid" name="sid" class="bian"
											size="18" value="${CUSTOMER_NAME}">
									</td>
						</tr>
						<tr>
							<td height="24" colspan="2" align="center"><input
								value="查找" type="submit"
								/> </td>
						</tr>
					</table>
				</form>
			</div>
		<div id="foot"></div>
</body>
</html>