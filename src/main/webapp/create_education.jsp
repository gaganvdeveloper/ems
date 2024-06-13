<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Education Details</title>
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

main h1 {
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
</style>
</head>
<body>
    <nav>
        <div>
            <h1>
                <a href="allemployees" style="text-decoration: none; color: white;">Employee Management System</a>
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
        <h1>Add Education Details</h1>
        <form action="saveeducation?id=${id}" method="post">
            <div class="form-group">
                <label for="qualification">Qualification:</label>
                <input type="text" id="qualification" name="qualification" placeholder="Ex: BE, Btech, Degree, Masters">
            </div>
            <div class="form-group">
                <label for="universityName">University / College Name:</label>
                <input type="text" id="universityName" name="universityName" placeholder="Ex: RVCE">
            </div>
            <div class="form-group">
                <label for="percentage">Percentage / Grade:</label>
                <input type="text" id="percentage" required="required" name="percentage" placeholder="Ex: 92.5">
            </div>
            <div class="form-group">
                <label for="completionYear">Year Of Passout:</label>
                <input type="text" id="completionYear" required="required" name="completionYear" placeholder="Ex: 2021">
            </div>
            <div class="form-group">
                <label for="highestQualification">Highest Qualification:</label>
                <select id="highestQualification" name="highestQualification">
                    <option value="NO">---Select---</option>
                    <option value="YES">YES</option>
                    <option value="NO">NO</option>
                </select>
            </div>
            <button type="submit">Submit</button>
        </form>
    </main>
</body>
</html>
