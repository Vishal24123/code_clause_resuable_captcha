<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Captcha Generated</title>
<style>
div {
	background-color:lightpink; 
    color:purple;
    font-size: 30px;
 	height: 50px;
 	width: 100%;
 	text-align:center;
}
div1{
	background-image: url('image.jpg');
	background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: cover;
  	letter-spacing: 20px;
  	font-family: "Blackadder ITC";
  	font-size:35px;
  	width: 25%;
  	border: 5px solid green;
  	padding: 2%;
  	margin: 5px;
}
body{
	 background-color: powderblue;
     color:purple;
     font-size:15px;
     text-align:justify;
}
</style>
</head>
<body>
	<div> Congratulations,Your Captcha is generated </div><br>
	<!-- The generated captcha is displayed here using the textfield(read-only purpose) -->
	<h4>Captcha Generated:</h4><br>
	<div1><%=request.getAttribute("captcha")%></div1><br><br><br><br>
	<!-- Here this form contains a button which is used to regenerate the captcha -->
	<form method="post" action="generate" >
		<input type="submit" value="ReGenerate Captcha" name="ReGenerate Captcha" /> 
	</form>
</body>
</html>