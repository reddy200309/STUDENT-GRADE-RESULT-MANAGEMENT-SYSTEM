<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="website icon" href="static/website_icons/dashboard.svg"/>

    <title>Student Dashboard</title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="stuportal.html" style="color: #fff; text-decoration: none;">
            <h1><i class="fas fa-user-shield"></i> Faculty-Admin </h1></a>
        </div>
        <nav>
            <a href="#"><i class="fas fa-user-plus"></i> Add Faculty</a>
            <a href="viewallfacs"><i class="fas fa-users"></i> View Faculty</a>
            <a href="updatefacstatus"><i class="fas fa-edit"></i> Edit Faculty</a>
            <a href="deletefac"><i class="fas fa-user-minus"></i> Remove Faculty</a>
            <a href="viewallfacs"><i class="fas fa-sign-out-alt"></i> Back</a>
        </nav>
        <br>
    </header>
</head> 
<body> 
    <br>
    <br>
    <span class="blink">
    <h3 align=center  style="color:#426060 ">Details of ${fac.fullname}</h3>
    </span>
    <span class="blink">
    <h3 align=center  style="color:red ">Status : ${fac.active}</h3>
    </span>

 
    <div class="cards-container">
    <!-- Student Card -->
    <table class="card">
        <tr>
            <td>ID :</td>
            <td>${fac.universityid}</td>
        </tr>
        <tr>
            <td>Name :</td>
            <td>${fac.fullname}</td>
        </tr>
        <tr>
            <td>Gender :</td>
            <td>${fac.gender}</td>
        </tr>
        <tr>
            <td>Location :</td>
            <td>${fac.dateofbirth}</td>
        </tr>
        <tr>
            <td>Department :</td>
            <td>${fac.department}</td>
        </tr>
        <tr>
            <td>Email :</td>
            <td>${fac.email}</td>
        </tr>
            <td>Contact No :</td>
            <td>${fac.phonenumber}</td>
        </tr>
    </table>
</div>

</div>
<div class="button-container">
    <a href="updatefacstatus" class="edit-button">Edit Status<span>&#9998;</span></a>
    <a href="viewallfacs" class="close-button">Close <span>&#128473;</span></a>
</div>
 

</body>

<footer>
  <div style="background-color: #426060; padding: 10px; text-align: center; color: white;">
      &copy; 2023 Student Grade Hub. All rights reserved.
  </div>
</footer>
</html>
<style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    /* overflow: hidden; */
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
    border-radius: 10px;
    width: 400px;
    box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);

}
label {
    display: block;
    margin-bottom: 9px;
}
select, input[type="text"], input[type="password"], input[type="email"], input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}
input[type="submit"] {
    background-color: #426060;
    color: white;
    border: none;
    cursor: pointer;
}
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



.card {
    border-collapse: collapse;
    width: 100%;
    max-width: 400px; /* Adjust as needed */
}

.card td {
    border: 1px solid #dddddd;
    padding: 8px;
    text-align: left;
}

.card td:first-child {
    font-weight: bold;
    width: 40%; /* Adjust based on your preference */
}

.card {
    border-collapse: collapse;
    width: 100%;
    max-width: 400px; /* Adjust as needed */
}

.card td {
    border: 1px solid #dddddd;
    padding: 8px;
    text-align: left;
}

.card td:first-child {
    font-weight: bold;
    width: 40%; /* Adjust based on your preference */
}


/* Style for the blinking effect */
@keyframes blink {
  0% { opacity: 1; }
  50% { opacity: 0; }
  100% { opacity: 1; }
}

/* Applying blink animation to the span with class "blink" */
span.blink {
  animation: blink 1s infinite;
}

/* Centering the H3 text */
h3 {
  text-align: center;
  font-family: cursive;
  font-size: large;
}

/* Styling the color of the text to red */
h3 {
  color: red;
}



/* Styling for the buttons */
.button-container {
    display: flex;
    justify-content: space-around;
    margin-top: 20px;
}

.edit-button,
.close-button {
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    transition: all 0.3s;
}

.edit-button {
    background-color: #3498db; /* Blue background for Edit */
    color: white;
}

.close-button {
    background-color: #e74c3c; /* Red background for Close */
    color: white;
}

.edit-button:hover,
.close-button:hover {
    transform: scale(1.1);
}

.button-container a {
    text-decoration: none;
}


</style>