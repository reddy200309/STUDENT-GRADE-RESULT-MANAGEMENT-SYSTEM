<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="website icon" href="static/website_icons/dashboard.svg"/>
    <link type="text/css" rel="stylesheet" href="css/style.css"> 

    <title>Student Dashboard</title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="stuportal.html" style="color: #fff; text-decoration: none;">
            <h1><i class="fas fa-user-shield"></i> Student-Admin </h1></a>
          </div>
        
        <!-- <h1><i class="fas fa-user-shield"></i> Admin Portal</h1> -->
        <nav>
            <a href="addstudent"><i class="fas fa-user-plus"></i> Add Students</a>
            <a href="viewallstus"><i class="fas fa-users"></i> View Students</a>
            <a href="updatestustatus"><i class="fas fa-edit"></i> Edit Student</a>
            <a href="deletestu"><i class="fas fa-user-minus"></i> Remove Student</a>
            <a href="adminportal"><i class="fas fa-sign-out-alt"></i> Back</a>
        </nav>
        
        <br>
      </header>
</head> 
<body> 
 
<br> 
 
<h3 align="center"><u>View All Students</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:rgb(23, 22, 22)"> 
<td>ID</td> 
<td>NAME</td> 
<td>DEPARTMENT</td> 
<td>LOCATION</td> 
<td>EMAIL ID</td> 
<td>CONTACT NO</td> 
<td>ACTION</td>
</tr> 
 
<c:forEach items="${studata}"  var="stu"> 
<tr> 
<td><c:out value="${stu.universityid}" /></td> 
<td><c:out value="${stu.fullname}" /></td> 
<td><c:out value="${stu.department}" /></td> 
<td><c:out value="${stu.dateofbirth}" /></td> 
<td><c:out value="${stu.email}" /></td> 
<td><c:out value="${stu.phonenumber}" /></td> 
<td>
<a class="view-button" href='<c:url value="view?id=${stu.id}"></c:url>'>View <i class="fas fa-eye"></i></a></tr> 
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body>

<footer>
  <div style="background-color: #084a92; padding: 10px; text-align: center; color: white;">
      &copy; 2023 Student Grade Hub. All rights reserved.
  </div>
</footer>
</html>
<style>
  /* CSS for the table */
table {
  width: 80%; /* Adjust the width as needed */
  margin: 20px auto; /* Centers the table */
  border-collapse: collapse;
}

th, td {
  padding: 10px;
  text-align: center;
}

th {
  background-color: #333;
  color: white;
}

td {
  background-color: #f2f2f2;
}

/* Styling the headings */
h3 {
  text-align: center;
  text-decoration: underline;
  color: #333;
}

/* Styling the links */
a {
  text-decoration: none;
  color: #007bff; /* Change link color as desired */
}

a:hover {
  text-decoration: underline;
  color: #0056b3; /* Change link hover color as desired */
}


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
/* footer {
    background-color: #f2f2f2;
    text-align: center;
    padding: 10px;
} */
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
.view-button {
    display: inline-block;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    color: #fff;
    background: linear-gradient(45deg, #0076ff, #00b4ff);
    border: 2px solid #0076ff;
    border-radius: 25px;
    transition: all 0.3s;
    font-weight: bold;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    font-size: 16px;
    text-transform: uppercase;
    letter-spacing: 1px;
  }

  .view-button:hover {
    background: linear-gradient(45deg, #0054ff, #0080ff);
    border-color: #0054ff;
    box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
  }



</style>