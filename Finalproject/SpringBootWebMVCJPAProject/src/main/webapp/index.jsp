<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- External CSS and Fonts -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <link rel="stylesheet" href="style/index.css"/>
  <link rel="website icon" href="static/website_icons/index.svg"/>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Grade Hub</title>
</head>
<body>
  <header>
    <!-- Background Video -->
    <video autoplay muted loop id="bgVideo">
      <source src="static/index-bg.mp4" type="video/mp4">
    </video>

    <!-- Navigation Bar -->
    <nav>
      <div class="logo">
        <a href="/" style="color: #fff; text-decoration: none;">
        <h1><i class="fas fa-graduation-cap"></i> Student Grade Hub </h1></a>
      </div>
      <div class="menu">
        <a href="/"><i class="fas fa-home"></i> Home</a>

        <div class="dropdown">
          <a href="#" class="dropdown-btn"><i class="fas fa-user-graduate"></i> Guidelines <i class="fas fa-caret-down"></i></a>
          <div class="dropdown-content">
            <a href=""><i class="fas fa-user-graduate"></i> Student</a>
            <a href=""><i class="fas fa-chalkboard-teacher"></i> Faculty</a>
            <!-- Add other guidelines here -->
          </div>
        </div>
        <a href="announcements.jsp"><i class="fas fa-bullhorn"></i> Announcements</a>
        <a href="location"><i class="fas fa-info-circle"></i> About Us</a>
        <a href="contact"><i class="fas fa-question-circle"></i> Help</a>
        
      </div>
    </nav>

    <!-- Main Content -->
    <main>
      <section>
        <h3>Welcome to Student Grade Management</h3>
        <h1 class="change_content">System ||</h1>
        <p>Manage student grades efficiently with ease.</p>
        <a class="btnone" href="stusignup"><i class="fas fa-user-graduate"></i> Student Portal</a>

        <a class="btntwo" href="facsignup"><i class="fas fa-chalkboard-teacher"></i> Faculty Portal</a>
      </section>
    </main>
  </header>

  <!-- Footer -->
  <footer style="display: block;">
    <div class="footer-content">
      <p>&copy; 2023 Student Grade Hub. All rights reserved.</p>
    </div>
  </footer>

  <!-- JavaScript -->
  <script src="script.js"></script>
</body>
</html>

