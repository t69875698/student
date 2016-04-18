<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="com.tangwen.model.userTable" %>
<%@ page language="java" import="com.tangwen.service.userservice" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="com.tangwen.model.userTable"></jsp:useBean>
	<jsp:useBean id="userservice" class="com.tangwen.service.userservice"></jsp:useBean>
	<jsp:setProperty property="*" name="user" />
	<%
		//user.setUsername("aa");
		out.print(user.getUsername());
		out.print(user.getPassword());
		if (userservice.valiUser(user)) {
		session.setAttribute("user", user);
		%>
			<jsp:forward page="main.jsp"></jsp:forward>
		<%} else {%>
			<jsp:forward page="index.jsp"></jsp:forward>
		<%}
	%>
</body>
</html>