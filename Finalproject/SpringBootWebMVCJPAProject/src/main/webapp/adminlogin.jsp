<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="style/faclogin.css"/> -->
    <title>Admin Login</title>
    <link rel="website icon" href="static/website_icons/faculty.svg"/>

</head>
<body>
    <header>
        <h1><i class="fas fa-chalkboard-teacher"></i> Admin Portal</h1>
    </header>
    <span class="blink">
   <h3 align=center  style="color:red ">${message }</h3>
    </span>
    
    <div class="login-container">
        <form class="login-form" method="post" action="checkadminlogin">
            <h2 class="results-heading">Login</h2>
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>
            <label for="pwd">Password</label>
            <input type="password" id="pwd" name="pwd" required>
            <input type="submit" value="Login">
        </form>
    </div>
    
    <footer>
        <div style="background-color: #426060;  padding: 10px; text-align: center; color: white;">
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
    overflow: hidden;
}
header {
    background-color: #426060; 
    color: rgb(13, 13, 13);
    padding: 10px;
    text-align: center;
}
.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: calc(100vh - 190px); /* Adjust based on header height */
}
.login-form {
    background-color: #f2f2f2;
    padding: 30px;
    border-radius: 10px;
    width: 400px;
    box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
}
.login-form label {
    font-weight: bold;
}
.login-form input[type="text"],
.login-form input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}
.login-form input[type="submit"],
.login-form .secondary-button {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease;
}
.login-form input[type="submit"] {
    background-color:#426060; 
    color: white;
}
.login-form .secondary-button {
    background-color: #426060; 
    color: white;
}
.login-form .secondary-button:hover {
    background-color: #426060; 
    color: white;
}
footer {
    background-color: #426060; /* Changed color */
    padding: 10px;
    text-align: center;
    color: #426060;  /* Changed color */
    position: absolute;
    margin-top: 1rem;
    bottom: 1px;
    width: 100%;
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


</style>