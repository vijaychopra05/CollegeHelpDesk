<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
</head>
<body>
	<%@include file="/Common/connection.jsp" %>
<%

int r=0;
String a=request.getParameter("username");
String b=request.getParameter("password");


	if(a.equals("admin")&&b.equals("admin")){
		r=1;
	}
	
	
	
	if(r==1)
	{
		
		out.println("a");
		session.setAttribute("a",a);
		session.setAttribute("b",b);
	    response.sendRedirect("welcome.jsp");
		
}
	
	else
	{

		  out.println("wrong credentials");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		    rd.include(request,response);
	}
	





%>


</body>
</html>