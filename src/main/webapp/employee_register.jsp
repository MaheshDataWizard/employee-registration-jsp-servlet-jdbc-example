<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Employee</title>
</head>
<body>
	<h1>Registration Form</h1>
	
	<div>
		<form action="<%= request.getContextPath() %>/register" method="post">
			
			<label for="firstName">First Name: </label>
			<input type="text" name="firstName" id="firstName" required><br/>
			
			<label for="lastName">Last Name: </label>
			<input type="text" name="lastName" id="lastName" required><br/>
			
			<label for="username">Username: </label>
			<input type="text" name="username" id="username"><br/>
			
			<label for="password">Password: </label>
			<input type="password" name="password" id="password" required><br/>
			
			<label for="address">Address: </label>
			<input type="text" name="address" id="address"><br/>
			
			<label for="contact">Contact</label>
			<input type="text" name="contact" id="contact"><br/>
			
			<input type="submit" value="Submit">
		</form>	
	</div>
</body>
</html>