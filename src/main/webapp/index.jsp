<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<% response.sendRedirect("allemployees");  %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login - Employee Management System</title>
<title>Welcome to EMS Application</title>
<style type="text/css">
/* styles.css */
body {
	font-family: Arial, sans-serif;
	background-color: #f0f2f5;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.login-container {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
}

.login-container h1 {
	font-size:10px;
}
.login-container h2 {
	font-size:20px;
}

.input-group {
	margin-bottom: 15px;
	text-align: left;
}

.input-group label {
	display: block;
	margin-bottom: 5px;
}

.input-group input {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	border: none;
	border-radius: 4px;
	color: white;
	font-size: 16px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}
</style>



</head>
<body>
	<div class="login-container">
		<h1>${msg }</h1>
		<h1>Employee Management System</h1>
		<h2>Login Here 😊</h2>
		<form action="login" method="POST">
			<div class="input-group">
				<label for="email">Email</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="input-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" required>
			</div>
			<button type="submit">Login</button>
		</form>
	</div>
</body>
</html>
