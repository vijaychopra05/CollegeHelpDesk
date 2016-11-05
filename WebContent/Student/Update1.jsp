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
	var a=document.getElementById(select1);
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
<style>
#section {
	width: 100%;
	height: 400px;
	float: left;
    
}
</style>
</head>
<body>
	<%@include file="/Common/connection.jsp" %>
<%@include file="/Common/header.jsp" %>
	<div id="section" align="left">
	<center><h3>Update Details</h3></center>

	<%	
	
	String b=(String)session.getAttribute("a");
	String c=(String)session.getAttribute("b");

		
		try {
			Class.forName(Driver);
			Connection conn = DriverManager.getConnection(url, user,
					password);
			Statement stmt = conn.createStatement();
			String s ="select * from student where name='" + b + "' && password='"+c+"'";
			ResultSet rs = stmt.executeQuery(s);
			while (rs.next()) {
				
				String q = rs.getString("name");
				String w = rs.getString("password");
				String z = rs.getString("rollno");

				String f = rs.getString("phoneno");
				String g = rs.getString("stream");
				
				
		%>   
		<form method="post" action="Update2.jsp" style="border: medium;border-style: ridge;" name="a">
				
		        &nbsp;&nbsp;UserName :&nbsp;&nbsp;<input type="text" name="username" value=<%=q%> readonly="readonly"><br />
<br />

&nbsp;&nbsp;Password :&nbsp;&nbsp;<input type="password" name="password" value=<%=w%>><br />
<br />
&nbsp;&nbsp;Rollno. :&nbsp;&nbsp;<input type="text" name="rollno"  value=<%=z%> readonly="readonly"><br />
<br /> 

&nbsp;&nbsp;Phone no.:&nbsp;&nbsp;<input type="text" name="phoneno" value=<%=f%>><br />
<br />

&nbsp;&nbsp;Stream :&nbsp;&nbsp;<select
	name="k" id="select1">
	<option value="IT">IT</option>
	<option value="CSE">CSE</option>
	<option value="ECE">ECE</option>
	<option value="MECHANICAL">MECHANICAL</option>
	<option value="EEE">EEE</option>
	<option value="OTHER">OTHER</option>
	
</select>
<script>
var a=ab.
</script>
&nbsp;&nbsp;<input type="submit" value="submit	" align="left" onclick="getConfirmation()"/>

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
	</div>
<%@include file="/Common/footer.jsp" %>
</body>
</html>