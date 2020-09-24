<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学生成绩添加页面</title>
    <script>
        function greeting(){
            alert("添加成功")
        }
    </script>
</head>
<style tape="image">
    body {
        background: url(images/bg1.jpg);
    }
</style>
<center><font color=black size=7 >学生成绩修改页面</font></center>
<body>
<div id="box">
    <div id="mid">
        <div id="denglu">
            ${errorMsg}
            <form
                    onsubmit="greeting()"
                    action="${pageContext.request.contextPath}/AddStudentServlet"
                    method="post" onsubmit="return checkForm();">
                <table width="100%" height="94" border="0" cellpadding="0"
                       cellspacing="0">
                    <tr>
                        <td width="121" height="35" align="right"><font color=black size=5 >修改后的学号：</font></td>
                        <td width="121" align="left">
                            <input type="text" id="id" name="id" class="bian"
                                   size="18" value="${CUSTOMER_NAME}">*</td>
                    </tr>
                    <tr>
                        <td height="35" align="right"><font color=black size=5 >修改后的姓名：</font></td>
                        <td align="left"><input type="text" id="name"
                                                name="name" class="bian" size="18">*</td>
                    </tr>
                    <tr>
                        <td height="35" align="right"><font color=black size=5 >修改后的性别：</font></td>
                        <td><select id="sex" name="sex" class="bian" data-options="editable: false, panelHeight: 50, width: 60, height: 30" name="sex"><option value="男">男</option><option value="女">女</option></select></td>
                    </tr>
                    <tr>
                        <td height="35" align="right"><font color=black size=5 >修改后的java成绩：</font></td>
                        <td align="left"><input type="text" id="mobile"
                                                name="mobile" class="bian" size="18">*</td>
                    </tr>
                    <tr>
                        <td height="35" align="right"><font color=black size=5 >修改后的数据库成绩：</font></td>
                        <td align="left"><input type="text" id="address"
                                                name="address" class="bian" size="18">*</td>
                    </tr>
                    <tr>
                        <td height="35" align="right"><font color=black size=5 >修改后的绩点：</font></td>
                        <td align="left"><input type="text" id="grade"
                                                name="grade" class="bian" size="18">*</td>
                    </tr>
                    <tr>
                        <td height="24" colspan="2" align="center"><input
                                value="修改学生成绩" type="submit" style="font-size:16px"
                        /> </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div id="foot"></div>
</div>
</body>
</html>