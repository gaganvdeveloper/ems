<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Student | Create Student</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f9;
}

nav {
	background-color: #007bff;
	color: white;
	padding: 10px 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	height: 70px;
}

nav h1 {
	margin: 0;
}

nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
}

nav ul li {
	margin-left: 20px;
}

nav ul li a {
	color: white;
	text-decoration: none;
	font-weight: bold;
}

main {
	padding: 20px;
	max-width: 600px;
	margin: 20px auto;
	background-color: white;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

main h2 {
	margin-bottom: 20px;
	text-align: center;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-group input, .form-group select {
	width: calc(100% - 20px);
	padding: 10px;
	margin: 0 auto;
	border: 1px solid #ccc;
	border-radius: 4px;
	display: block;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #28a745;
	border: none;
	border-radius: 4px;
	color: white;
	font-size: 16px;
	cursor: pointer;
}

button:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<nav>
		<div>
			<h1>
				<a href="allemployees" style='margin-left:50px; font-size:40px; text-shadow: 0px 0px 20px  white;  text-decoration: none; color: white;'>G-Soft</a>
			</h1>
		</div>
		<div>
			<ul>
				<li><a href="allemployees">Home</a></li>
				<li><a href="addemployee">Add Employee</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
	</nav>
	<main>
		<h2>Register Student</h2>
		<form action="saveemployee" method="post">
			<div class="form-group">
				<label for="firstName">First Name:</label> <input type="text" required="required"
					id="firstName" name="firstName">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name:</label> <input type="text" 
					id="lastName" name="lastName">
			</div>
			<div class="form-group">
				<label for="department">Department:</label> <input type="text" required="required"
					id="department" name="department">
			</div>
			<div class="form-group">
				<label for="salary">Salary:</label> <input type="text" id="salary" required="required"
					name="salary">
			</div>
			<div class="form-group">
				<label for="contactNo">Contact No:</label> <input type="text"
					required="required" id="contactNo" name="contactNo">
			</div>
			<div class="form-group">
				<label for="emailId">Email Id:</label> <input type="email"
					id="emailId" name="emailId" required="required">
			</div>
			<div class="form-group">
				<label for="experience">Experience:</label> <select id="experience"
					name="experience">
					<option value="YES">---Select---</option>
					<option value="YES">YES</option>
					<option value="NO">NO</option>
				</select>
			</div>
			<div class="form-group">
				<label for="activeStatus">Active Status:</label> <select
					id="activeStatus" name="activeStatus">
					<option value="ACTIVE">---Select---</option>
					<option value="ACTIVE">ACTIVE</option>
					<option value="INACTIVE">INACTIVE</option>
				</select>
			</div>
			<button type="submit">Submit</button>
		</form>
	</main>
</body>
</html>
