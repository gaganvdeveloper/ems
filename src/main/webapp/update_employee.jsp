<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
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
}

nav h1 a {
    color: white;
    text-decoration: none;
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
    max-width: 800px;
    margin: 20px auto;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

main h2, main h3 {
    text-align: center;
    margin-bottom: 20px;
    color: #007bff;
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
    margin-top: 10px;
}

button:hover {
    background-color: #218838;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table th, table td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

table th {
    background-color: #090977;
    color: white;
}

table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #f1f1f1;
}

.action-btn {
    padding: 5px 10px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

.add-btn {
    background-color: #28a745;
    color: white;
}

.add-btn:hover {
    background-color: #218838;
}

h4 {
    text-align: center;
    color: #dc3545;
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
                <li><a href="addemployee">Add Student</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
    </nav>
    <h4>${msg}</h4>
    <main>
        <h2>Update Student</h2>
        <form action="updateemployee" method="post">
            <input type="hidden" value="${employee.getEmployeeId()}" name="employeeId">
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" value="${employee.getFirstName()}" id="firstName" name="firstName">
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" value="${employee.getLastName()}" id="lastName" name="lastName">
            </div>
            <div class="form-group">
                <label for="department">Department:</label>
                <input type="text" value="${employee.getDepartment()}" id="department" name="department">
            </div>
            <div class="form-group">
                <label for="salary">Salary:</label>
                <input type="text" id="salary" value="${employee.getSalary()}" name="salary">
            </div>
            <div class="form-group">
                <label for="contactNo">Contact No:</label>
                <input type="text" value="${employee.getContactNo()}" id="contactNo" name="contactNo">
            </div>
            <div class="form-group">
                <label for="emailId">Email Id:</label>
                <input type="email" value="${employee.getEmailId()}" id="emailId" name="emailId" required="required">
            </div>
            <div class="form-group">
                <label for="experience">Experience:</label>
                <select id="experience" name="experience">
                    <option value="${employee.getExperience()}">${employee.getExperience()}</option>
                    <option value="YES">YES</option>
                    <option value="NO">NO</option>
                </select>
            </div>
            <div class="form-group">
                <label for="activeStatus">Active Status:</label>
                <select id="activeStatus" name="activeStatus">
                    <option value="${employee.getActiveStatus()}">${employee.getActiveStatus()}</option>
                    <option value="ACTIVE">ACTIVE</option>
                    <option value="INACTIVE">INACTIVE</option>
                </select>
            </div>
            <center><button type="submit" style="width: 20%;">Update</button></center>
            
        </form>
    </main>
    <main>
        <h3>Education Details</h3>
        <a href="addeducation?id=${employee.getEmployeeId() }" style="float:right; width:20%; margin-top: -60px;">
            <button class="add-btn">Add Qualification</button>
        </a>
        <table>
            <thead>
                <tr>
                    <th>Qualification</th>
                    <th>University / College</th>
                    <th>Percentage / Grade</th>
                    <th>Year of Passout</th>
                    <th>Highest Qualification</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="q" items="${educations}">
                    <tr>
                        <td>${q.getQualification()}</td>
                        <td>${q.getUniversityName()}</td>
                        <td>${q.getPercentage()}</td>
                        <td>${q.getCompletionYear()}</td>
                        <td>${q.getHighestQualification()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
    <main>
        <h3>Address</h3>
        <a href="addaddress?id=${employee.getEmployeeId() }" style="float:right; width:20%; margin-top: -60px;">
            <button class="add-btn">Add Address</button>
        </a>
        <table>
            <thead>
                <tr>
                    <th>Door No</th>
                    <th>Street Address</th>
                    <th>Address Line 2</th>
                    <th>City</th>
                    <th>State</th>
                    <th>Country</th>
                    <th>Postal Code</th>
                    <th>Permanent / Present</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="a" items="${addresses}">
                    <tr>
                        <td>${a.getDoorNo()}</td>
                        <td>${a.getStreetAddress()}</td>
                        <td>${a.getAddressLine2()}</td>
                        <td>${a.getCity()}</td>
                        <td>${a.getState()}</td>
                        <td>${a.getCountry()}</td>
                        <td>${a.getPostalCode()}</td>
                        <td>${a.getAddressType()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
</body>
</html>
