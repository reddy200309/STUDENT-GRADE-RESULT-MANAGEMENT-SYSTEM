<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Sign Up</title>
    <link rel="stylesheet" href="style/facsignup.css"/>

    <link rel="website icon" href="static/website_icons/faculty.svg"/>
  
</head>
<body>
    <header>
        <h1><i class="fas fa-chalkboard-teacher"></i> Faculty Portal</h1>
    </header>
    
    <div class="signup-container">
        <form class="signup-form"  method="post" action="facreg">
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

            <input type="submit" value="Sign Up">
        </form>
        <div class="login-container">
            <a href="faclogin">
                <button class="login-button" type="button">Already Signed Up? Login</button>
            </a>
        </div>
    
    </div>

    
    <footer>
        <div style="background-color: #6C757D; padding: 10px; text-align: center; color: white;">
            &copy; 2023 Student Grade Hub. All rights reserved.
        </div>
    </footer>
    
</body>
</html>
