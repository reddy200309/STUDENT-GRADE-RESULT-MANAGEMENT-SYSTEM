<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="website icon" href="static/website_icons/endexamresult.svg"/>
    <title>End Sem Results</title>

</head>
<body>
    <header>
        <div class="logo">
            <a href="stuportal.html" style="color: #fff; text-decoration: none;">
                <h1><i class="fas fa-user-graduate"></i> Student Portal </h1></a>
          </div>
        <nav>
            <a href="stuportal"><i class="fas fa-home"></i> Dashboard</a>
            <a href="endsemresult"><i class="fas fa-file-alt"></i> End Sem Results</a>
            <a href="#"><i class="fas fa-clipboard"></i> Answer Scripts</a>
            <a href="mycgpa"><i class="fas fa-chart-line"></i> My CGPA</a>
            <a href="reverification"><i class="fas fa-search"></i> Reverification</a>
            <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </nav>
    </header>
    
    <div class="content center" id="endsem-results">
        <form>
            <h2 class="results-heading">End Sem Results</h2>
            <br>
            
            <label for="year">Select Your Year:</label>
            <select id="year" name="year">
                <option value="year1">2024-2023</option>
                <option value="year2">2023-2022</option>
                <option value="year3">2022-2021</option>
                <option value="year3">2021-2020</option>
                <!-- Add more options for other years -->
            </select>
            
            <label for="semester">Select Your Semester:</label>
            <select id="semester" name="semester">
                <option value="odd">Odd Semester</option>
                <option value="even">Even Semester</option>
                <option value="summer">Summer Term</option>
            </select>
            <br><br>
            <input type="submit" value="Get Results">
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
    overflow: hidden;
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

.content {
    padding: 20px;
}
.center {
    display: flex;
    justify-content: center;
    align-items: center;
    height: calc(100vh - 100px); /* Adjust based on header and nav heights */
    padding: 10px; /* Unique padding for centering */
}
.results-heading {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}
form {
    background-color: #f2f2f2;
    padding: 30px;
    height: 300px;
    border-radius: 10px;
    width: 400px;
    margin-bottom: 190px;
    margin-top: 100px;
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
    background-color: #084a92;
    color: white;
    border: none;
    cursor: pointer;
}
footer {
    background-color: #084a92;
    padding: 10px;
    text-align: center;
    color: white;
    position: absolute;
    margin-top: 1rem;
    bottom: 1px;
    width: 100%;
}
</style>