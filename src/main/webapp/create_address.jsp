<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Address Page</title>
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
        <h1>Add Address</h1>
        <form action="saveaddress?id=${id}" method="post">
            <div class="form-group">
                <label for="doorNo">Door No:</label>
                <input type="text" id="doorNo" name="doorNo">
            </div>
            <div class="form-group">
                <label for="streetAddress">Street Address:</label>
                <input type="text" id="streetAddress" name="streetAddress">
            </div>
            <div class="form-group">
                <label for="addressLine2">Address Line 2:</label>
                <input type="text" id="addressLine2" name="addressLine2">
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <input type="text" id="city" name="city">
            </div>
            <div class="form-group">
                <label for="state">State:</label>
                <input type="text" id="state" name="state">
            </div>
            <div class="form-group">
                <label for="country">Country:</label>
                <input type="text" id="country" name="country">
            </div>
            <div class="form-group">
                <label for="postalCode">Postal Code:</label>
                <input type="text" id="postalCode" name="postalCode">
            </div>
            <div class="form-group">
                <label for="addressType">Address Type:</label>
                <select id="addressType" name="addressType">
                    <option value="">---Select---</option>
                    <option value="PERMANENT">PERMANENT</option>
                    <option value="PRESENT">PRESENT</option>
                </select>
            </div>
            <button type="submit">Submit</button>
        </form>
    </main>
</body>
</html>
