<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<h3>Registeration Form</h3>
	<form action="registrationServlet" method="post">
	
	First name:<br>
	<input type="text" placeholder="firstname" name="firstname"><br>
	Last name:<br>
	<input type="text" placeholder="lastname" name="lastname"><br>
	What is your lucky number?<br>
	<input type="text" placeholder="luckynumber" name="luckynumber"><br>
	User name:<br>
	<input type="text" placeholder="username" name="username"><br>
	Password:<br>
	<input type="text" placeholder="password" name="password"><br>
	
	<input type="submit" value="Submit"> 
	<a href="login.jsp">Login</a>
	</form>
</body>
</html>