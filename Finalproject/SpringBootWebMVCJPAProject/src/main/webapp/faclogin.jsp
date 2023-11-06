<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/faclogin.css"/>
    <title>Faculty Login</title>
    <link rel="website icon" href="static/website_icons/faculty.svg"/>

</head>
<body>
    <header>
        <h1><i class="fas fa-chalkboard-teacher"></i> Faculty Portal</h1>
    </header>
    <span class="blink">
   <h3 align=center  style="color:red ">${message }</h3>
    </span>
    
    <div class="login-container">
        <form class="login-form" method="post" action="checkfaclogin">
            <h2 class="results-heading">Login</h2>
            <label for="email">Username</label>
            <input type="text" id="email" name="email" required>
            <label for="pwd">Password</label>
            <input type="password" id="pwd" name="pwd" required>
            <input type="submit" value="Login">

            <button class="secondary-button" type="button" onclick="window.location.href='facsignup'">
                <i class="fas fa-user-plus"></i> Sign Up
            </button>
            <button class="secondary-button" type="button" onclick="window.location.href='forgot_password'">
                <i class="fas fa-question-circle"></i> Forgot Password
            </button>
        </form>
    </div>
    
    <footer>
        <div style="background-color: #6C757D; padding: 10px; text-align: center; color: white;">
            &copy; 2023 Student Grade Hub. All rights reserved.
        </div>
    </footer>
</body>
</html>
    