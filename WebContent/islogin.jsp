<%@page import="com.tangwen.model.userTable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
userTable user=(userTable)session.getAttribute("user");
if(user==null)
{
%>
<jsp:forward page="index.jsp"></jsp:forward>

<%}
%>