<%@page import="java.sql.*"%>
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
<body>
<%@include file="/Common/header.jsp" %>
	<div class="background">
	<br/><br/><center><h3 style="text-decoration: underline;">VIEW COMPLAINT/s</h3></center><%
	String b=request.getParameter("a");
	
		String Driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/heliyo";
		String user = "root";
		String password = "root";
		try{
			Class.forName(Driver);
			Connection conn = DriverManager.getConnection(url, user,
					password);
			Statement stmt = conn.createStatement();
			String s ="select * from complaint where department='"+b+"'";
			ResultSet rs = stmt.executeQuery(s);
			if(rs.next()){ do{
				String r= rs.getString(1);
				String q = rs.getString("complaint");
				out.println(r);
				out.println(q);
				out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;<a href=reply.jsp?var="+r+">Reply to post</a><br/><br/>");
%> <form>
	Department:<input type="text" value="<%=b %>"/><br/><br/>
	
	
</form>
<% 			
			
			}while(rs.next());}
			else{
				%> <form>
				Department:<input type="text" value="<%=b %>"/><br>
				
				<textarea rows="20" cols="30"><%="No Complaints" %></textarea>
			</form>
			<% 	
			}
		} catch (ClassNotFoundException k)

		{
			k.printStackTrace();

		}

		catch (SQLException se)

		{

			se.printStackTrace();
		}
	%><br/></br><br/><a href="viewcomplaint.jsp">GO BACK</a></br><br/></br>
	</div>
	<%@include file="/Common/footer.jsp" %>
</body>
</html>
