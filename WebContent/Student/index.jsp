<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>COE</title>
<style>
#section {
	width: 100%;
	height: 410px;
	float: left;
    background-image: url("Image/c.jpg");
}
</style>
<script>
function validateForm() {
    var x = document.forms["myForm"]["username"].value;
    var y = document.forms["myForm"]["password"].value;
    
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
        
         }
    if (y == null || y == "") {
        alert("password can't be blank");
        return false;
}}
</script>

</head>
<body>
<%@include file="/Common/header.jsp" %>


	<div id="section" align="right">
	
	<h3 style="text-decoration: underline;">STUDENT LOGIN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
<form name="myForm" action="Login1.jsp" onsubmit="return validateForm()" method="post">
<pre><b><font size="4">USERNAME:</font></b><input type="text" name="username" style="border: ridge; border-width: medium;" />  </pre><br></br>
<pre><b><font size="4">PASSWORD:</font></b><input type="password" name="password" style="border: ridge; border-width: medium;" />  </pre><br></br>
<pre><input type="submit" value="Login" style="border: groove; border-bottom: ridge; border-color:rgb(205,127,50); width: 90px;height: 23px;">  <input type="reset" value="Reset" style="border: groove; border-bottom: ridge; border-color:rgb(205,127,50); width: 90px;height: 23px;"> </pre><br></br>
</form>

<pre> <b><font size="4">New User?? Register Now</font></b>     </pre>
<form action="Register.jsp" method="post" style="" >     
<pre><input type="submit" value="SignUp" style="border: groove; border-bottom: ridge; border-color:rgb(205,127,50); width: 90px;height: 23px;">     </pre>
</form>

<form action="/CollegeHelpdesk/index.jsp" method="post">
			<pre><input type="submit" value="HOME"  style="border: groove; font-style:bold; border-bottom: ridge; border-color:rgb(205,127,50);" />     </pre>
		</form><br/><br/><br/>
</div>
	
	
<%@include file="/Common/footer.jsp" %>
</body>
</html>