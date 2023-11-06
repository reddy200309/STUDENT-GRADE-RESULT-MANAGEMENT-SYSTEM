<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
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
            <a href="#"><i class="fas fa-edit"></i> Edit Faculty</a>
            <a href="deletefac"><i class="fas fa-user-minus"></i> Remove Faculty</a>
            <a href="adminportal"><i class="fas fa-sign-out-alt"></i> Back</a>
        </nav>
        <br>
    </header>
</head> 
<body> 
 
<br> 

   <span class="blink">
    <h3 align=center  style="color:red">${message}</h3>
    </span>
     
    <h3 align="center"><u>Update Status</u></h3> 
  
<table align=center  border=2>  
<tr bgcolor="black" style="color:rgb(23, 22, 22)"> 
<td>ID</td> 
<td>NAME</td> 
<td>DEPARTMENT</td> 
<td>LOCATION</td> 
<td>EMAIL ID</td> 
<td>CONTACT NO</td> 
<td>STATUS</td>
<td>ACTION</td>
</tr> 
 
<c:forEach items="${facdata}"  var="fac"> 
<tr> 
<td><c:out value="${fac.universityid}" /></td> 
<td><c:out value="${fac.fullname}" /></td> 
<td><c:out value="${fac.department}" /></td> 
<td><c:out value="${fac.dateofbirth}" /></td> 
<td><c:out value="${fac.email}" /></td> 
<td><c:out value="${fac.phonenumber}" /></td> 

<c:if test="${fac.active==true}">
<td bgcolor="green">ACTIVE</td>
</c:if>
<c:if test="${fac.active==false}">
<td bgcolor="red">INACTIVE</td>
</c:if>

<td>
<a href='<c:url value="setstatus?id=${fac.id}&status=true"></c:url>' class="status-button active">
                <i class="fas fa-check-circle"></i> Active
            </a>
            <!-- Button for setting status to Inactive -->
<a href='<c:url value="setstatus?id=${fac.id}&status=false"></c:url>' class="status-button inactive">
                <i class="fas fa-times-circle"></i> Inactive
</td>
 
</tr> 
</c:forEach> 
</table>
 
</body>

<footer>
    <div style="background-color: #426060; padding: 10px; text-align: center; color: white;">
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
    /* Common button styles */
    .status-button {
        display: inline-flex;
        align-items: center;
        padding: 10px 20px;
        text-decoration: none;
        border: none;
        border-radius: 5px;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.3s;
        font-size: 14px;
        margin: 5px;
        text-transform: uppercase;
    }

    /* Active button */
    .active {
        background-color: #28a745; /* Green */
        color: white;
    }

    /* Inactive button */
    .inactive {
        background-color: #dc3545; /* Red */
        color: white;
    }

    /* Icons within buttons */
    .status-button i {
        margin-right: 8px; /* Adjust icon spacing */
    }

    /* Spacing between buttons */
    .status-button + .status-button {
        margin-left: 10px;
    }
    .status-button a {
        text-decoration: none;
    }

    /* Hover styles for both buttons */
    .status-button:hover {
        opacity: 0.9;
    }

    /* Hover styles to add depth on hover */
    .status-button:hover {
        transform: scale(1.05);
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
</style>

</style>



</style>