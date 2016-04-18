<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>My JSP 'inputstuinfo.jsp' starting page</title>


</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
	<center>
		<form action="inputstuinfo_result.jsp" method="post">
			<table bgColor="#c0c0c0">
				<tr>
					<td align="center" bgcolor=green colspan=2><font color=white>学生信息录入</font></td>
				</tr>
				<tr>
					<td>昵称：</td>
					<td><input type="text" size=20 name="nickname"></td>
				</tr>
				<tr>
					<td>真实姓名：</td>
					<td><input type="text" size=20 name="realname"></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="radio" name="sex" checked value="1">男&nbsp;&nbsp;
						<input type="radio" name="sex" value="0">女</td>
				</tr>
				<tr>
					<td>出生日期：</td>
					<td><input type="text" name="birthday" size=20></td>
				</tr>
				<tr>
					<td>所学专业：</td>
					<td><select name="profession">
							<option selected>计算机科学与技术</option>
							<option>网络工程</option>
							<option>信息安全</option>
					</select></td>
				</tr>
				<tr>
					<td>所学课程：</td>
					<td><select name="course" size=3 multiple="multiple">
							<option>C语言</option>
							<option>数据结构</option>
							<option>数据库</option>

							<option>操作系统</option>
							<option>计算机网络</option>
							<option>软件工程</option>
					</select></td>
				</tr>
				<tr>
					<td>兴趣</td>
					<td><input type="checkbox" value="music" name="interest">听音乐&nbsp;
						<input type="checkbox" value="book" name="interest">看小说&nbsp;
						<input type="checkbox" value="game" name="interest">玩游戏&nbsp;</td>
				</tr>
				<tr valign="top">
					<td>备注</td>
					<td><textarea rows=3 cols=20 name="note"></textarea></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="提交">&nbsp;&nbsp; <input type="reset" value="重置"></td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>
