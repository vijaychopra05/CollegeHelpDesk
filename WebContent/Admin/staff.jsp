<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
<style type="text/css">
div.background {
    background-image:url("Image/g2.jpg");
    border: 2px solid black;
}
</style>
</head>
<body>	<%@include file="/Common/connection.jsp" %>
<%@include file="/Common/header.jsp" %>
<div class="background">
<center><h3 style="text-decoration: underline;">STAFF RECORDS</h3></center>
<%

		
		try {
			Class.forName(Driver);
			Connection conn = DriverManager.getConnection(url, user, password);
			Statement stmt = conn.createStatement();
			String s ="select * from staff";
			ResultSet rs = stmt.executeQuery(s);
			if(rs.next()){do {
				
				String q = rs.getString("name");
		
				String z = rs.getString("id");
		%>
		<br/><pre>Employee ID=<%=z %>  ,   Name=<%=q %></pre> <br/>  
<%

			}while (rs.next());}else{
				out.println(s);
			}
		} catch (ClassNotFoundException k)

		{
			k.printStackTrace();

		}

		catch (SQLException se)

		{

			se.printStackTrace();
		}


%><a href="welcome.jsp">GO BACK</a><br/><br/><br/><br/><br/><br/></div>
<%@include file="/Common/footer.jsp" %>
</body>
</html>