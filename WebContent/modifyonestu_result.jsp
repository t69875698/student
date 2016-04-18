<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="com.tangwen.model.stuInfo"%>
<%@ page language="java" import="com.tangwen.service.stuInfoservice"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="stu" class="com.tangwen.model.stuInfo"></jsp:useBean>
	<jsp:setProperty property="*" name="stu"/>
	<jsp:useBean id="stuSer" class="com.tangwen.service.stuInfoservice"></jsp:useBean>
<%
out.print(stu.getNickname());
out.print(stu.getCourses());
out.print(stu.getInterests());
out.print(stu.getId());
%>
<%
if(stuSer.updateStu(stu))
out.print("success!!");
else
	out.print("failure!!");
%>
</body>
</html>