<%@page import="com.tangwen.model.stuInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="com.tangwen.service.stuInfoservice"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="stuSer" class="com.tangwen.service.stuInfoservice"></jsp:useBean>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		/* out.print(id); */
		stuInfo stu = stuSer.queryStubyID(id);
/* 		out.print(stu.getId());
		out.print(stu.getInterests()); */
	%>
	<form action="modifyonestu_result.jsp" method="post">
		<table bgColor="#c0c0c0">
			<tr>
				<td align="center" bgcolor=green colspan=2><font color=white>学生信息录入</font></td>
			</tr>
			<tr>
				<td>昵称：</td>
				<td><input type="text" size=20 name="nickname"
					value="<%=stu.getNickname()%>"></td>
			</tr>
			<tr>
				<td>真实姓名：</td>
				<td><input type="text" size=20 name="realname"
					value="<%=stu.getRealname()%>"></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><input type="radio" name="sex" <%if (stu.getSex() == 1) {%>
					checked <%}%> value="1">男&nbsp;&nbsp; <input type="radio"
					name="sex" <%if (stu.getSex() == 0) {%> checked <%}%> value="0">女</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td><input type="text" name="birthday" size=20
					value="<%=stu.getBirthday()%>"></td>
			</tr>
			<tr>
				<td>所学专业：</td>
				<td><select name="profession">
						<option <%if (stu.getProfession().equals("计算机科学与技术")) {%> selected
							<%}%>>计算机科学与技术</option>
						<option <%if (stu.getProfession().equals("网络工程")) {%> selected
							<%}%>>网络工程</option>
						<option <%if (stu.getProfession().equals("信息安全")) {%> selected
							<%}%>>信息安全</option>
				</select></td>
			</tr>
			<tr>
				<td>所学课程：</td>
				<td><select name="course" size=3 multiple="multiple">
						<option
							<%String course[] = stu.getCourse();
			for (int i = 0; i < course.length; i++) {
				if (course[i].equals("C语言")) {%>
							selected <%break;
				}
			}%>>C语言</option>
						<option
							<%for (int i = 0; i < course.length; i++) {
				if (course[i].equals("数据结构")) {%>
							selected <%break;
				}
			}%>>数据结构</option>
						<option
							<%for (int i = 0; i < course.length; i++) {
				if (course[i].equals("数据库")) {%>
							selected <%break;
				}
			}%>>数据库</option>

						<option
							<%for (int i = 0; i < course.length; i++) {
				if (course[i].equals("操作系统")) {%>
							selected <%break;
				}
			}%>>操作系统</option>
						<option
							<%for (int i = 0; i < course.length; i++) {
				if (course[i].equals("计算机网络")) {%>
							selected <%break;
				}
			}%>>计算机网络</option>
						<option
							<%for (int i = 0; i < course.length; i++) {
				if (course[i].equals("软件工程")) {%>
							selected <%break;
				}
			}%>>软件工程</option>
				</select></td>
			</tr>
			<tr>
				<td>兴趣</td>
				<td><input type="checkbox" value="music" name="interest"
					<%String interest[] = stu.getInterest();
			for (int i = 0; i < interest.length; i++) {
				if (interest[i].equals("music")) {%>
					checked <%break;
				}
			}%>>听音乐&nbsp; <input
					type="checkbox" value="book" name="interest"
					<%for (int i = 0; i < interest.length; i++) {
				if (interest[i].equals("book")) {%>
					checked <%break;
				}
			}%>>看小说&nbsp; <input
					type="checkbox" value="game" name="interest"
					<%for (int i = 0; i < interest.length; i++) {
				if (interest[i].equals("game")) {%>
					checked <%break;
				}
			}%>>玩游戏&nbsp;</td>
			</tr>
			<tr valign="top">
				<td>备注</td>
				<td><textarea rows=3 cols=20 name="note"><%=stu.getNote() %></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="hidden" name="id" value="<%=stu.getId() %>"/><input type="submit" value="提交">&nbsp;&nbsp;
					<input type="reset" value="重置"></td>
			</tr>
		</table>

	</form>
</body>
</html>