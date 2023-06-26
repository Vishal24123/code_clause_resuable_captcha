<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reusable Captcha Generator</title>
<style>
div {
	background-color:lightpink; 
    color:purple;
    font-size: 30px;
 	height: 50px;
 	width: 100%;
 	text-align:center;
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
	<div> Welcome,You can generate the Captcha here </div><br>
	<!-- Here this form contains a button which is used to generate the captcha -->
	<form method="post" action="generate" >
		<b>You can generate the captcha by clicking button </b><input type="submit" value="Generate Captcha" name="Generate Captcha"/>
	</form>
</body>
</html>