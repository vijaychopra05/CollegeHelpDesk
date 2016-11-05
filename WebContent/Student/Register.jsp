<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateForm() {
    var q = document.forms["myForm"]["username"].value;
    var w = document.forms["myForm"]["password"].value;
    var e = document.forms["myForm"]["rollno"].value;
    var r = document.forms["myForm"]["phone"].value;
   
    if (q == null || q == "") {
        alert("Name must be filled out");
        return false;
        
         }
    if (w == null || w == "") {
        alert("password can't be blank");
        return false;
}
    if (e == null || e == "") {
        alert("rollno can't be blank");
        return false;
}
    if (r == null || r == "") {
        alert("phone can't be blank");
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
    }}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
</head>
<body>
<%@include file="/Common/header.jsp" %>
<center><b>STUDENT REGISTER</b></center>
<center>
<form name="myForm" action="Register1.jsp" onsubmit="return validateForm()" method="post" style="border: medium;border-style: ridge;">
<br></br>

&nbsp;&nbsp;<pre>USERNAME  :<input type="text" name="username" style="border: medium;border-style: groove;"></pre><br/><br/>
&nbsp;&nbsp;<pre>PASSWORD  :<input type="password" name="password" style="border: medium;border-style: groove;"></pre><br/><br/>
&nbsp;&nbsp;<pre>ROLLNO    :<input type="text" name="rollno" style="border: medium;border-style: groove;"></pre><br/><br/>
&nbsp;&nbsp;<pre>PHONE NO. :<input type="text" name="phone" style="border: medium;border-style: groove;"></pre><br/><br/>

&nbsp;&nbsp;Stream :&nbsp;&nbsp;<select
	name="k" style="border: medium;border-style: groove;">
	<option value="IT">IT</option>
	<option value="CSE">CSE</option>
	<option value="ECE">ECE</option>
	<option value="MECHANICAL">MECHANICAL</option>
	<option value="EEE">EEE</option>
	<option value="OTHER">OTHER</option>
</select>

&nbsp;&nbsp;<input type="submit" value="Submit" onclick="getConfirmation()" style="border: medium;border-style: groove;"><br/><br/>

</form>
<form>
&nbsp;&nbsp;<input type="reset" value="Cancel" style="border: medium;border-style: groove;"><br/><br/>
</form>
</center>
<%@include file="/Common/footer.jsp" %>
</body>
</html>