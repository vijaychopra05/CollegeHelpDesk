<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#section {
	width: 100%;
	height: 400px;
	float: left;
 background-image: url("Image/c.jpg");
 margin-right: 20px;}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COE</title>
</head>
<body>
<%@include file="/Common/header.jsp" %>

	
	
	<div id="section" align="right">
<h3 style="text-decoration: underline;">View Complaint/s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
<form action=viewcomplaint1.jsp method="post"><br />
<br />

&nbsp;&nbsp;Department :&nbsp;&nbsp;<select
	name="a">
	<option value="IT DEPARTMENT">IT DEPARTMENT</option>
	<option value="CSE DEPARTMENT">CSE DEPARTMENT</option>
	<option value="ECE DEPARTMENT">ECE DEPARTMENT</option>
	<option value="MECH. DEPARTMENT">MECH. DEPARTMENT</option>
	<option value="EEE DEPARTMENT">EEE DEPARTMENT</option>
	<option value="CIVIL DEPARTMENT">CIVIL DEPARTMENT</option>
	<option value="student">STUDENT COMPLAINTS</option>
</select>&nbsp;&nbsp;&nbsp;&nbsp;<br></br>


<input type="submit" value="submit" />
<input type="reset" value="reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</form>
<br/><br/><a href="welcome.jsp" style="color: black;">GO BACK</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div><br/><br/>
<%@include file="/Common/footer.jsp" %>


</body>
</html>