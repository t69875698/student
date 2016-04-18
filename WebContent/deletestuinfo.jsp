<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="com.tangwen.service.stuInfoservice"%>
<%@ page language="java" import="com.tangwen.model.stuInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
	<jsp:useBean id="stuSer" class="com.tangwen.service.stuInfoservice"></jsp:useBean>
	<%
		List stus = stuSer.queryAllStu();
		//out.print(stus.size());
		Iterator iter = stus.iterator();
	%>
	<table>
		<tr>
			<td>id</td>
			<td>昵称</td>
			<td>真实姓名</td>
			<td>性别</td>
			<td>出生日期</td>
			<td>所学专业</td>
			<td>所选课程</td>
			<td>兴趣</td>
			<td>备注</td>
			<td></td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				stuInfo student = (stuInfo) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#CDCDCD" <%}%>>
			<td><%=student.getId()%></td>
			<td><%=student.getNickname()%></td>
			<td><%=student.getRealname()%></td>
			<td>
				<%
					if (student.getSex() == 1)
							out.print("男");
						else
							out.print("女");
				%>
			</td>
			<td><%=student.getBirthday()%></td>
			<td><%=student.getProfession()%></td>
			<td><%=student.getCourses()%></td>
			<td><%=student.getInterests()%></td>
			<td><%=student.getNote()%></td>
			<td><a href="deleteonestu.jsp?id=<%= student.getId() %>">删除</a></td>
		</tr>
		<%
			i++;
			}
		%>
	</table>
</body>
</html>