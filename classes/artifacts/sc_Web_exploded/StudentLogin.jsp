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
                    onsubmit="greeting()"
                    action="${pageContext.request.contextPath}/Student_login"
                    method="post">
                <table width="100%" height="94" border="0" cellpadding="0"
                       cellspacing="0">
                    <tr>
                        <td width="70" height="135" align="right"></td>
                        <td width="20000" align="center">

                            <input type="text" id="username" name="username" class="bian"
                                   placeholder="账号" size=18 style="height:25px; font-size:22px;" value="${CUSTOMER_NAME}">*</td>
                    </tr>

                    <tr>
                        <td height="35" align="right"></td>
                        <td align="center"><input type="password" id="password"
                                                  name="password" class="bian" size=18 style="height:25px; font-size:22px;"  placeholder="密码">*</td>
                    </tr>
<tr>
    <td height="66" colspan="2" align="center"><input
            type="image" style="height:40px; font-size:22px;"
            src="${pageContext.request.contextPath}/images/sg3.PNG"
            alt="学生登录" /> </td>
</tr>



                </table>
        </form>

        </div>
            </div>
            <div id="foot"></div>
            </div>
</body>
</html>
