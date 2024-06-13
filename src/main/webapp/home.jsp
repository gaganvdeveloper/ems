<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SMS &nbsp;&nbsp;|&nbsp;&nbsp; Home Page</title>
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
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

table th, table td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

table th {
	background-color: #007bff;
	color: white;
}

table tr:nth-child(even) {
	background-color: #f2f2f2;
}

table tr:hover {
	background-color: #E4E4E9;
}

button {
	padding: 5px 10px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

button:hover {
	opacity: 0.8;
}

.update-btn {
	background-color: #28a745;
	color: white;
}

.delete-btn {
	background-color: #dc3545;
	color: white;
}

#msg {
	background-color: #28A745;
	background-color: silver;
	color: white;
	color: black;
	width: 12%;
	border-radius: 1rem;
	z-index: 10;
	position: fixed;
	left: 42%;
	display: none;
	padding: 10px
}
</style>
</head>
<body>
	<nav>
		<div>
			<h1>
				<a href="allemployees"
					style='margin-left: 50px; font-size: 40px; text-shadow: 0px 0px 20px white; text-decoration: none; color: white;'>G-Soft</a>
			</h1>
		</div>
		<div>
			<ul>
				<li><a href="allemployees">Home</a></li>
				<li><a href="addemployee">Add Student</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
	</nav>
	<center>
		<h3 id="msg">${msg }</h3>
	</center>
	<main>
		<h2>Student Data</h2>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Date Of Join</th>
					<th>Department</th>
					<th>Contact No</th>
					<th>Email Id</th>
					<th>Highest Qualification</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${employees }">
					<tr>
						<td>${e.getFirstName() }</td>
						<td>${e.getDateOfJoin() }</td>
						<td>${e.getDepartment() }</td>
						<td>${e.getContactNo() }</td>
						<td>${e.getEmailId() }</td>
						<td><c:if test="${e.getEducations().size()>0 }">
						${e.getEducations().get(0).getQualification() }
						</c:if></td>
						<td><a href="update?id=${e.getEmployeeId() }"><button
									class="update-btn">Update</button></a></td>
						<td><a href="delete?id=${e.getEmployeeId() }"><button
									class="delete-btn">Delete</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
	<script type="text/javascript">
		let msg = document.getElementById("msg");
		msg.style.display = "block";
		setTimeout(()=>{msg.style.display="none"},1000);
	</script>
</body>
</html>
