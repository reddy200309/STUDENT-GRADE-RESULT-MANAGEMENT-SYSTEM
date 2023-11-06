<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="style/facportal.css"/>
</head>
<body>
    <header>
        <div class="logo">
        <a href="facportal.html" style="color: #0c0c0c; text-decoration: none;">
        <h1><i class="fas fa-chalkboard-teacher"></i> Faculty Portal</h1></a>
        </div>
   
    <nav>
        <a href="facportal"><i class="fas fa-home"></i> Dashboard</a>
        <a href="provideendsemresult"><i class="fas fa-file-alt"></i> Provide End Sem Results</a>
        <a href="#"><i class="fas fa-clipboard"></i> Provide Answer Scripts</a>
        <a href="#"><i class="fas fa-search"></i> Reverification Requests</a>
        <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </nav>
    </header>
    <br>
    <br>
    <div class="cards-container">
        <!-- profile -->
        <div class="card">
            <a href="#">
                <div class="card-icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="card-title">
                    Account
                </div>
            </a>
        </div>
        
        <!-- Endsem resulrt -->
        <div class="card">
            <a href="provideendsemresult">
                <div class="card-icon">
                    <i class="fas fa-file-alt"></i>
                </div>
                <div class="card-title">
                    Provide End Results
                </div>
            </a>
        </div>

        <!-- answer scripts -->
        <div class="card">
            <a href="#">
                <div class="card-icon">
                    <i class="fas fa-clipboard"></i>
                </div>
                <div class="card-title">
                    Provide Key
                </div>
            </a>
        </div>
        <!-- reverification -->
        <div class="card">
            <a href="#">
                <div class="card-icon">
                    <i class="fas fa-search"></i>
                </div>
                <div class="card-title">
                    Reverification Requests
                </div>
            </a>
        </div>
    </div>
    <footer>
        <div style="background-color: #6C757D; padding: 10px; text-align: center; color: rgb(16, 16, 16);">
            &copy; 2023 Student Grade Hub. All rights reserved.
        </div>
    </footer>
    
</body>
</html>
