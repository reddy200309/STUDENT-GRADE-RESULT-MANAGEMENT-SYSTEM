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
            <a href="stuportal" style="color: #fff; text-decoration: none;">
            <h1><i class="fas fa-user-shield"></i> Student-Admin </h1></a>
        </div>
        <nav>
            <nav>
            <a href="addstudent"><i class="fas fa-user-plus"></i> Add Students</a>
            <a href="viewallstus"><i class="fas fa-users"></i> View Students</a>
            <a href="updatestustatus"><i class="fas fa-edit"></i> Edit Student</a>
            <a href="deletestu"><i class="fas fa-user-minus"></i> Remove Student</a>
            <a href="adminportal"><i class="fas fa-sign-out-alt"></i> Back</a>
        </nav>
        </nav>
        <br>
    </header>
    <div class="signup-container">
        <form class="signup-form" method="post" action="adddstudent">
            <h2 class="results-heading">Sign Up</h2>
            <label for="universityid">University ID</label>
            <input type="text" id="universityid" name="universityid" required>

            <label for="fullname">Full Name</label>
            <input type="text" id="fullname" name="fullname" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="contact">Phone Number</label>
            <input type="text" name="contact" pattern="[789][0-9]{9}" placeholder="Must be 10 digits" required/>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            
            <label for="location">Location</label>
            <input type="text" id="location" name="location" required>

            <label for="gender">Gender</label>
            <select name="gender" id="gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>

            <label for="dateofbirth">Date of Birth</label>
            <input type="date" id="dateofbirth" name="dateofbirth" required>
        </br>
    </br>

            <label for="department">Department</label>
            <select name="department" id="department">
                <option value="CSE">Computer Science and Engineering (CSE)</option>
                <option value="ECE">Electronics and Communication Engineering (ECE)</option>
                <option value="MECH">Mechanical Engineering (MECH)</option>
                <option value="BBA">Bachelor of Business Administration (BBA)</option>
                <option value="BCA">Bachelor of Computer Applications (BCA)</option>
            </select>
            <br>
        </br>

            <input type="submit" value="Add student">
        </form>
    
    </div>

    
    <footer>
        <div style="background-color: #084a92; padding: 10px; text-align: center; color: white;">
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
   background-color: #084a92;
    color: white;
    padding: 10px;
    text-align: center;
}
nav {
    background-color: #f2f2f2;
    padding: 10px;
    text-align: center;
}
nav a {
    margin: 0 10px;
    text-decoration: none;
    color: #084a92;
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
.signup-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: calc(100vh - 120px); /* Adjust based on header height */
}
.signup-form {
    background-color: #f2f2f2;
    padding: 35px;
    border-radius: 10px;
    width: 400px;
    box-shadow: 0px 10px 20px rgba(12, 7, 7, 0.1);
}
.signup-form label {
    font-weight: bold;
}
.signup-form input[type="text"],
.signup-form input[type="password"],
.signup-form input[type="email"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}
.signup-form input[type="submit"],
.login-button {
    background-color: #007BFF;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    padding: 10px 20px;
    font-size: 16px;
    transition: background-color 0.3s ease;
}
.signup-form input[type="submit"]:hover,
.login-button:hover {
    background-color: #0056b3;
}
.login-button {
    background-color: #333;
    margin-top: 10px;
}
        .signup-container {
    display: flex;
    flex-direction: column; /* Stack elements vertically */
    align-items: center;
    justify-content: center;
    height: calc(110vh - 1px); /* Adjust based on header height */
}

.login-container {
    margin-top: 10px; /* Adjust spacing */
}

        footer {
            background-color: #084a92;
            padding: 10px;
            text-align: center;
            color: white;
            position: absolute;
            margin-bottom: -16rem;
            bottom: 1px;
            width: 100%;
            
            
        }       
</style>