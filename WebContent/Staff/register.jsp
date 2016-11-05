<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>

function validateForm() {
    var a = document.forms["myForm"]["name"].value;
    var b = document.forms["myForm"]["username"].value;
  
    var q = document.forms["myForm"]["password"].value;
    var c = document.forms["myForm"]["id"].value;
    var d = document.forms["myForm"]["phone"].value;
    var e = document.forms["myForm"]["address"].value;
    var f = document.forms["myForm"]["b"].value;
    var x = document.forms["myForm"]["c"].value;
    
    if (a == null || a == "") {
        alert("Name must be filled out");
        return false;
        
         }
    if (b == null || b == "") {
        alert("username can't be blank");
        return false;
}
    if (b == null || b == "") {
        alert("username can't be blank");
        return false;
}
if (q == null || q == "") {
    alert("password can't be blank");
    return false;
}
if (c == null || c == ""||c=="isNaN()") {
    alert("id can't be blank and must contain numeric values");
    return false;
}
if (d == null || d == ""||d==NaN()) {
    alert("phone no can't be blank and must contain numeric values");
    return false;
}
if (e == null || e == "") {
    alert("Address can't be blank");
    return false;
}
if (f == null || f == "") {
    alert("department can't be blank");
    return false;
}
if (x == null || x == "") {
    alert("designation can't be blank");
    return false;
}
}

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
</head>
<body>
<%@include file="/Common/header.jsp" %>
<center>REGISTER ACCOUNT</center>
<center>

<form action="register1.jsp" method="post" name="myForm" onsubmit="return validateForm() " style="border: medium;border-style: ridge;">
<br></br>
&nbsp;&nbsp;Name :&nbsp;&nbsp;<select
	name="a">
	<option value="Mr">Mr</option>
	<option value="Mrs.">Mrs.</option>
	<option value="Dr.">Dr.</option>
	<option value="Miss">Ms.</option>
	
</select> &nbsp;<input type="text" name="name" style="border: medium;border-style: groove;"><br />
<br />
&nbsp;&nbsp;Username :<input type="text" name="username" style="border: medium;border-style: groove;"><br />
<br />
&nbsp;&nbsp;Password :<input type="password" name="password" style="border: medium;border-style: groove;"><br />
<br />
&nbsp;&nbsp; Staff Id :<input type="text" name="id" style="border: medium;border-style: groove;"><br />
<br />
&nbsp;&nbsp;Phone no.:<input type="text" name="phone" style="border: medium;border-style: groove;">(please enter numeric values 0-9)<br />
<br />
&nbsp;&nbsp;Address:<input type="text" name="address" style="border: medium;border-style: groove;"><br />
<br />

&nbsp;&nbsp;Department :&nbsp;&nbsp;<select
	name="b" style="border: medium;border-style: groove;">
	<option value="IT DEPARTMENT">IT DEPARTMENT</option>
	<option value="CSE DEPARTMENT">CSE DEPARTMENT</option>
	<option value="ECE DEPARTMENT">ECE DEPARTMENT</option>
	<option value="MECH. DEPARTMENT">MECHANICAL DEPARTMENT</option>
	<option value="EEE DEPARTMENT">EEE DEPARTMENT</option>
	<option value="CIVIL DEPARTMENT">CIVIL DEPARTMENT</option>
	
	
</select><br></br>
&nbsp;&nbsp;Designation :<select
	name="c" style="border: medium;border-style: groove;">
	<option value="HOD">HOD</option>
	<option value="PROFESSOR">PROFESSOR</option>
	<option value="ASST. PROFESSOR">ASST. PROFESSOR</option>
	<option value="OTHER">OTHER</option>
</select><br></br>
&nbsp;&nbsp;<input type="submit" value="Submit" style="border: medium;border-style: groove;" onclick="getConfirmation()";><br />
<br />
&nbsp;&nbsp;<input type="reset" value="Cancel" style="border: medium;border-style: groove;"><br />
<br />

</form>
</center>
<%@include file="/Common/footer.jsp" %>

</body>
</html>