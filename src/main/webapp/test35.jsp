<%@page import="tw.ws1.classes.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member1 = new Member(4,"tony","Tony","1999-10-09");
	request.setAttribute("member1", member1);

%>

<jsp:useBean id="member" class="tw.ws1.classes.Member"></jsp:useBean>
<jsp:setProperty property="id" name="member" value="3"/>
<jsp:setProperty property="account" name="member" value="${param.account}"/>
<jsp:setProperty property="realname" name="member" value="${param.realname}"/>
<jsp:setProperty property="birthday" name="member" value="${param.birthday}"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Member:
	<jsp:getProperty property="id" name="member"/> :
	<jsp:getProperty property="account" name="member"/> 
	<jsp:getProperty property="realname" name="member"/>
	<jsp:getProperty property="birthday" name="member"/>
	<hr>
	Member: ${member.id}:${member.account}
	<hr>
	Member: ${member1.id}:${member1.account}
	
</body>
</html>