<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="website icon" href="static/website_icons/dashboard.svg"/>
    <link rel="stylesheet" href="style/stuportal.css"/>

    <title>Student Dashboard</title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="adminportal" style="color: #fff; text-decoration: none;">
            <h1><i class="fas fa-user-shield"></i> Admin Portal </h1></a>
          </div>
        
        <nav>
            <a href="adminportal"><i class="fas fa-home"></i> Dashboard</a>
            <a href="viewallstus"><i class="fas fa-chalkboard-teacher"></i> Student</a>
            <a href="viewallfacs"><i class="fas fa-user-graduate"></i> Faculty</a>
            <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </nav>
        <br>
    </header>
    <br>
    <br>
    <div class="cards-container">
        <!-- Student Card -->
        <div class="card">
            <a href="viewallstus">
                <div class="card-icon">
                    <i class="fas fa-user-graduate"></i>
                </div>
                <div class="card-title">
                     Student
                    <h3>Total Students</h3>
                    <p id="anotherStatCount">${scount}</p>
                </div>
            </a>
        </div>

        <!-- Faculty Card -->
        <div class="card">
            <a href="viewallfacs">
                <div class="card-icon">
                    <i class="fas fa-chalkboard-teacher"></i>
                </div>
                <div class="card-title">
                    Faculty
                   <h3>Total Facuty</h3>
                   <p id="anotherStatCount">${fcount}</p>
                </div>
            </a>
        </div>
    </div>
    <footer>
        <div style="background-color: #426060; padding: 10px; text-align: center; color: white;">
            &copy; 2023 Student Grade Hub. All rights reserved.
        </div>
    </footer>
</body>
</html>
<style>
    
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
header {
    background-color: #426060;
    color: white;
    padding: 10px;
    text-align: center;
}
nav {
    background-color: #f4f9f9;
    padding: 10px;
    text-align: center;
}
nav a {
    margin: 0 10px;
    text-decoration: none;
    color: #426060;
}
.content {
    padding: 20px;
}
.center {
    display: flex;
    justify-content: center;
    align-items: center;
    height: calc(100vh - 100px); /* Adjust based on header and nav heights */
    padding: 50px; /* Unique padding for centering */
}
.results-heading {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}
form {
    background-color: #f2f2f2;
    padding: 30px;
    height: 400px;
    border-radius: 10px;
    width: 400px;
    box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
}
label {
    display: block;
    margin-bottom: 10px;
}
select, input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
}
input[type="submit"] {
    background-color: #426060;
    color: white;
    border: none;
    cursor: pointer;
}
/* footer {
    background-color: #f2f2f2;
    text-align: center;
    padding: 10px;
} */
footer {
    background-color: #426060;
    padding: 10px;
    text-align: center;
    color: white;
    position: absolute;
    margin-top: 1rem;
    bottom: 1px;
    width: 98.7%;
}

/* cards.css */

.cards-container {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
}

.card {
    background-color: #fff;
    border: 2px solid #426060; /* Add a blue color border */
    border-radius: 5px;
    padding: 20px;
    margin: 10px;
    width: 200px;
    text-align: center;
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
    transition: transform 0.2s, box-shadow 0.2s; /* Add transition for the box-shadow property */
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0px 15px 20px #426060; /* Change box-shadow on hover for shine effect */
}

.card a {
    text-decoration: none;
    color: #333;
}

.card-icon {
    font-size: 48px;
    margin-bottom: 10px;
}

.card-title {
    font-size: 18px;
}

</style>