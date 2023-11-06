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
            <a href="stuportal.html" style="color: #fff; text-decoration: none;">
            <h1><i class="fas fa-user-graduate"></i> Student Portal </h1></a>
          </div>
        
        <!-- <h1><i class="fas fa-user-shield"></i> Admin Portal</h1> -->
        <nav>
            <a href="stuportal"><i class="fas fa-home"></i> Dashboard</a>
            <a href="endsemresult"><i class="fas fa-file-alt"></i> End Sem Results</a>
            <a href="#"><i class="fas fa-clipboard"></i> Answer Scripts</a>
            <a href="mycgpa"><i class="fas fa-chart-line"></i> My CGPA</a>
            <a href="reverification"><i class="fas fa-search"></i> Reverification</a>
            <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </nav>
        <br>
    </header>
    <br>
    <br>
    <div class="cards-container">
        <!-- profile -->
        <div class="card">
            <a href="stuportal">
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
            <a href="endsemresult">
                <div class="card-icon">
                    <i class="fas fa-file-alt"></i>
                </div>
                <div class="card-title">
                    End Sem Results
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
                    Answer Scripts
                </div>
            </a>
        </div>
        <!-- my CGPA -->
        <div class="card">
            <a href="mycgpa">
                <div class="card-icon">
                    <i class="fas fa-chart-line"></i>
                </div>
                <div class="card-title">
                    My CGPA
                </div>
            </a>
        </div>

        <!-- reverification -->
        <div class="card">
            <a href="reverification">
                <div class="card-icon">
                    <i class="fas fa-search"></i>
                </div>
                <div class="card-title">
                    Reverification
                </div>
            </a>
        </div>
    </div>
    <footer>
        <div style="background-color: #084a92; padding: 10px; text-align: center; color: white;">
            &copy; 2023 Student Grade Hub. All rights reserved.
        </div>
    </footer>
</body>
</html>
