<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Register Employee</title>
<style>
* {
	box-sizing: border-box;
}

div {
	width: 500px;
	margin: 100px auto 0px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	border: 1px solid black;
}

input, label {
	margin: 5px;
	padding: 5px;
	border: none;
}

input {
	border-bottom: 1px solid black;
}

#btn {
	border: 3px solid black;
	margin: 30px 50px 20px 130px;
	padding: 10px;
	color: black;
	font-weight: 500px;
	font-size: 18px;
	border-radius: 5px;
}

#btn:hover {
	background-color: green;
	border-color: green;
	font-size: 20px;
}
</style>
</head>
<body>
	<div>
		<h1>Employee Registration Form</h1>
		<form action="<%=request.getContextPath()%>/register" method="post">
			<label for="firstName">First Name : </label> <input type="text"
				name="firstName" id="firstName" required /><br /> <label
				for="lastName">Last Name : </label> <input type="text"
				name="lastName" id="lastName" required /><br /> <label
				for="username">Username : </label> <input type="text"
				name="username" id="username" /><br /> <label for="password">Password
				: </label> <input type="password" name="password" id="password" required /><br />

			<label for="address">Address Info: </label> <input type="text"
				name="address" id="address" /><br /> <label for="contact">Contact
				Detai:</label> <input type="text" name="contact" id="contact" /><br /> <input
				type="submit" value="Submit" id="btn" />
		</form>
	</div>
</body>
</html>
