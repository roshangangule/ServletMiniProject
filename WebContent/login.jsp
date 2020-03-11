<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
#tableline {
	margin: 0 auto;
}

#register {
	font-style: italic;
}
</style>
</head>
<body>

	<%String msg = (String)request.getAttribute("message");
		if(msg !=null){
			%>
			<%= msg %>
	<% 	}
	%>
	
	<div id="tableline">
		<h3>Login</h3>
		<form action="loginServlet" method="post">
			<table>
				<thead>
					<tr>Username:
					</tr>
					<br>
					<tr>
						<input type="text" name="username"/>
					</tr>
					<br>
					<tr>Password:
					</tr>
					<br>
					<tr>
						<input type="text" name="password"/>
					</tr>
					<br>
					<tr>
						<input type="submit" value="Login" />

					</tr>
				</thead>


				<tbody></tbody>
			</table>
			<a href="registrationServlet"><span id="register">Register</span></a>
			<a href="forgotpass.jsp">Forgot Password</a>
		</form>

	</div>

</body>
</html>