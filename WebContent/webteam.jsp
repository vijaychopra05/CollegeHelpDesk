<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div.background {
    background-image:url("Image/g2.jpg");
    border: 2px solid black;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
</style>
</head>
<body>
<%@include file="/Common/header.jsp" %>
<div class="background">
<br/><br/><br/>
<center>
<h2>Members(In No Particular Order):</h2><br/>


<br/>
<br/>
<table style="width:50%; text-align: center;">
  <tr>
    <th>S.No.</th>
    <th style="text-align: center;">Name</th>		
  
  </tr>
  <tr>
    <td>1.</td>
   		
    <td>Ajay Kumar Tejania</td>
  </tr>
  <tr>
    <td>2.</td>
    	
    <td>Akash Shukla</td>
  </tr>
  <tr>
    <td>3.</td>
    		
    <td>Deepesh Jain</td>
  </tr>
  <tr>
    <td>4.</td>
    		
    <td>Lakhan Khandelwal</td>
  </tr>
  <tr>
    <td>5.</td>
    		
    <td>Priyanka Pawar</td>
  </tr>
   <tr>
    <td>6.</td>
    		
    <td>Shalini Shahi</td>
  </tr>
  <tr>
    <td>7.</td>
    		
    <td>Vijay Chopra</td>
  </tr>
  
</table>
</center><br/><br/>
</div>

<%@include file="/Common/footer.jsp" %>
</body>
</html>