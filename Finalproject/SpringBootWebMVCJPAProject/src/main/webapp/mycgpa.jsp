<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="website icon" href="static/website_icons/mycgpa.svg"/>
    <link rel="stylesheet" href="style/mycgpa.css"/>
    <title>My CGPA</title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="stuportal.html" style="color: #fff; text-decoration: none;">
            <h1><i class="fas fa-user-graduate"></i> Student Portal </h1></a>
        </div>
        <nav>
            <<a href="stuportal"><i class="fas fa-home"></i> Dashboard</a>
            <a href="endsemresult"><i class="fas fa-file-alt"></i> End Sem Results</a>
            <a href="#"><i class="fas fa-clipboard"></i> Answer Scripts</a>
            <a href="mycgpa"><i class="fas fa-chart-line"></i> My CGPA</a>
            <a href="reverification"><i class="fas fa-search"></i> Reverification</a>
            <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </nav>
    </header>
    <div class="content">
        <h2 class="results-heading">My CGPA</h2>
        <h3>Total CGPA: 9.2</h3>
        <table>
            <thead>
                <tr>
                    <th>Registration Number</th>
                    <th>Name</th>
                    <th>Year</th>
                    <th>Semester</th>
                    <th>Subject</th>
                    <th>Subject Code</th>
                    <th>Marks</th>
                    <th>CGPA</th>
                    <th>Grade</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2100032258</td>
                    <td>manikanta</td>
                    <td>2023</td>
                    <td>pass</td>
                    <td>jfsd</td>
                    <td>fullstack</td>
                    <td>95</td>
                    <td>9.5</td>
                    <td>A</td>
                </tr>
                <tr>
                    <td>2100032262</td>
                    <td>bhagath</td>
                    <td>2023</td>
                    <td>pass</td>
                    <td>pfsd</td>
                    <td>fullstack</td>
                    <td>95</td>
                    <td>9.5</td>
                    <td>A</td>
                </tr>
                <tr>
                    <td>2100032175</td>
                    <td>balaji</td>
                    <td>2023</td>
                    <td>pass</td>
                    <td>mern</td>
                    <td>fullstack</td>
                    <td>95</td>
                    <td>9.5</td>
                    <td>A</td>
                </tr>
                <tr>
                    <td>2100032215</td>
                    <td>yuvrajj</td>
                    <td>2023</td>
                    <td>pass</td>
                    <td>jfsd</td>
                    <td>fullstack</td>
                    <td>95</td>
                    <td>9.5</td>
                    <td>A</td>
                </tr>
                
                
                <!-- Add more rows as needed -->
            </tbody>
        </table>
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
    background-color: #007BFF;
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
    width: 98.7%;
}
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
}

th {
    background-color: #084a92;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}
</style>