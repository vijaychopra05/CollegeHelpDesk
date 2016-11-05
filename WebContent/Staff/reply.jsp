<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COE</title>
</head>
<body>
<%@include file="/Common/header.jsp" %>
<center><h3>REPLY TO COMPLAINT</h3></center>
<%String a=request.getParameter("var"); %>
<form action="reply1.jsp" method="get">
<input value="<%=a%>" type="hidden" name="sid">
<textarea name="msg" rows="20" cols="50"></textarea>
<input type="submit" value="post">
</form>
<%
String x=request.getParameter("char");
session.setAttribute("x",x);
%>
<%@include file="/Common/footer.jsp" %>
</body>
</html>