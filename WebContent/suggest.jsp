<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function getConfirmation(){
    var retVal = confirm("Success");
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
	height: 430px;
	float: left;
 background-image: url("Image/c.jpg");
 margin-right: 20px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
</head>
<body>
<%@include file="/Common/header.jsp" %>

	
	
	<div id="section" align="right">
<h3 style="text-decoration: underline;">FEEDBACK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
<form action=suggest1.jsp method="post"><br />



<textarea rows="20" cols="30" name="f" >
</textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>
<input type="submit" value="submit" onclick="getConfirmation()"/>
<input type="reset" value="reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</form>
</div>
<%@include file="/Common/footer.jsp" %>


</body>
</html>