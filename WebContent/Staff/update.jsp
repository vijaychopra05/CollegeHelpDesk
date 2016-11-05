<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
<script type="text/javascript">
function getConfirmation(){
    var retVal = confirm("Please Login again after processing to continue ?");
    if( retVal == true ){
      
       return true;
    }
    else{
       Document.write ("User does not want to continue!");
       return false;
    }
 }

</script>

</head>
<body>
<%@include file="/Common/header.jsp" %>
	<center><h3>UPDATE DETAILS</h3></center><%
		
		String c = (String) session.getAttribute("a");
		String d = (String) session.getAttribute("b");
		String Driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3307/heliyo";
		String user = "root";
	
		String password = "root";
		
		try {
	
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user,
					password);
			Statement stmt = conn.createStatement();
			String s = "select * from staff where username='" + c
					+ "' && password='" + d + "'";
	
			ResultSet rs = stmt.executeQuery(s);
			if (rs.next()) {
			
				String o = rs.getString("name");
				String p = rs.getString("username");
				String w = rs.getString("password");
				String j = rs.getString("id");
				String q = rs.getString("phone");
				String t = rs.getString("address");
				String y = rs.getString("department");
				String f = rs.getString("designation");

				session.setAttribute("o", o);
				session.setAttribute("j", j);
				
				
	%>
	<form method="post" action="update2.jsp" style="border: medium;border-style: ridge;">
		&nbsp;&nbsp;Name :&nbsp;&nbsp;<input type="text" name="name" value=<%=o %> readonly="readonly"><br />
		<br /> &nbsp;&nbsp;Username :<input type="text" name="username" value=<%=p %> ><br /> <br />
		&nbsp;&nbsp;Password :<input type="password" name="password" value=<%=w %> ><br /> <br />
		&nbsp;&nbsp;Staff Id :<input type="text" name="id" value=<%=j%> readonly="readonly"><br /> <br />
		&nbsp;&nbsp;Phone no.:<input type="text" name="phone" value=<%=q %> ><br /> <br />
		&nbsp;&nbsp;Address:<input type="text" name="address" value=<%=t %> ><br /> <br />

		&nbsp;&nbsp;Department :&nbsp;&nbsp;<select
	name="b">
	<option value="IT DEPARTMENT">IT DEPARTMENT</option>
	<option value="CSE DEPARTMENT">CSE DEPARTMENT</option>
	<option value="ECE DEPARTMENT">ECE DEPARTMENT</option>
	<option value="MECH. DEPARTMENT">MECH. DEPARTMENT</option>
	<option value="EEE DEPARTMENT">EEE DEPARTMENT</option>
	<option value="OTHER">OTHER</option>
</select><br></br>
&nbsp;&nbsp;Designation :<select
	name="c">
	<option value="HOD">HOD</option>
	<option value="PROFESSOR">PROFESSOR</option>
	<option value="ASST. PROFESSOR">ASST. PROFESSOR</option>
	<option value="OTHER">OTHER</option>
</select><br></br>
		
		&nbsp;&nbsp;<input type="submit" value="update" onclick="getConfirmation()"/>
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
	%>


<%@include file="/Common/footer.jsp" %>
</body>
</html>