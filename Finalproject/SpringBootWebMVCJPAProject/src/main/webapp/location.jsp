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
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Grade Hub</title>
</head>
<body>
  <header>
    <!-- Background Video -->
    <video autoplay muted loop id="bgVideo">
      <!-- <source src="static/index-bg.mp4" type="video/mp4"> -->
      Your browser does not support the video tag.
    </video>

    <!-- Navigation Bar -->
    <nav>
      <div class="logo">
        <a href="index.html" style="color: #fff; text-decoration: none;">
        <h1><i class="fas fa-graduation-cap"></i> Student Grade Hub </h1></a>
      </div>
      <div class="menu">
        <a href="index.html"><i class="fas fa-home"></i> Home</a>

        <div class="dropdown">
          <a href="#" class="dropdown-btn"><i class="fas fa-user-graduate"></i> Guidelines <i class="fas fa-caret-down"></i></a>
          <div class="dropdown-content">
            <a href=""><i class="fas fa-user-graduate"></i> Student</a>
            <a href=""><i class="fas fa-chalkboard-teacher"></i> Faculty</a>
            <!-- Add other guidelines here -->
          </div>
        </div>
        <a href="announcements.html"><i class="fas fa-bullhorn"></i> Announcements</a>
        <a href=""><i class="fas fa-info-circle"></i> About Us</a>
        <a href="help.html"><i class="fas fa-question-circle"></i> Help</a>
        
      </div>
    </nav>

    <!-- Main Content -->
    <main>
      <section>
        <div class="container mt-5">
            <h2 class="text-center">Reach Out</h2>
            <div class="row">
              <div class="col">
                <div class="text-right">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7653.329207344009!2d80.6131910558116!3d16.441851725170807!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35f0a2a073957d%3A0xe79d66babc83e470!2sK%20L%20UNIVERSITY%2C%20Vaddeswaram%2C%20Andhra%20Pradesh%20522303!5e0!3m2!1sen!2sin!4v1699113436098!5m2!1sen!2sin" width="500" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
              </div>
              <div class="col">
                <div class="">
                  <h3>Study Buddy</h3>
                  <p>Any questions or concerns before signing up? <br> Let us know, and we will be happy to talk to you.</p>
                  <address>
                    55 Main Street<br>
                    VADDESWARAM Town, GUNTUR<br>
                    12345<br>
                    S: 555.STUDY.BUDZ (555.786.2839)<br>
                    E: <a href="mailto:info@studybuddy.io">info@pumpbuddy.io</a>
                  </address>
                </div>
              </div>
            </div>
          </div>
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
<style>
    /* Add a gradient background to the container */
    .container {
      margin: 20px;
      padding: 20px;
      background: linear-gradient(to bottom, #b5d1d942, #2e547d);
      border-radius: 10px;
    }
  
    /* Style the "Reach Out" heading */
    h2 {
      color: #fff;
      font-size: 28px;
      text-transform: uppercase;
      margin-bottom: 20px;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
  
    /* Style the map iframe */
    iframe {
      border: 2px solid #333;
      border-radius: 5px;
    }
  
    /* Style the "Pump Buddy" heading */
    h3 {
      color: rgb(255, 89, 0);
      font-size: 24px;
      margin-top: 20px;
    }
  
    /* Style the address text */
    address {
      color: #fff;
      font-style: italic;
      font-size: 16px;
      margin-top: 10px;
    }
  
    /* Style the email link */
    a[href^="mailto"] {
      color: rgb(5, 5, 6);
      text-decoration: none;
    }
  
    /* Add hover effect to the email link */
    a[href^="mailto"]:hover {
      text-decoration: underline;
    }

    
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Josefin Sans", sans-serif;
  }

  /* Header Styles */
  header {
    width: 100%;
    height: 100vh;
    position: relative;
    overflow: hidden; /* Prevent video overflow */
  }

  #bgVideo {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: -1;
  }

  /* Navigation Bar Styles */
  nav {
    width: 100%;
    height: 10vh;
    background: rgb(19, 20, 20);
    color: rgb(253, 247, 247);
    display: flex;
    justify-content: space-between;
    align-items: center;
    text-transform: uppercase;
  }

  nav .logo {
    width: auto;
    margin-left: 20px;
    text-align: center;
  }

  nav .menu {
    width: auto;
    margin-right: 20px;
    display: flex;
    align-items: center;
  }

  nav .menu a {
    text-decoration: none;
    color: #00b894;
    font-weight: bold;
    margin-left: 20px;
  }

  nav .menu h1 {
    font-size: 24px;
    margin-right: 20px;
  }

  /* Main Content Styles */
  main {
    width: 100%;
    height: 85vh;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    color: white;
  }

  section h3 {
    font-size: 35px;
    font-weight: 200;
    letter-spacing: 3px;
    text-shadow: 1px 1px 2px black;
  }

  section h1 {
    margin: 30px 0 20px 0;
    font-size: 55px;
    font-weight: 700;
    text-shadow: 2px 1px 5px black;
    text-transform: uppercase;
  }

  /* Footer Styles */
  footer {
    width: 100%;
    background: rgb(19, 20, 20);
    color: white;
    text-align: center;
    padding: 20px 0;
    position: absolute;
    bottom: 0;
  }

  .footer-content {
    font-size: 14px;
  }

  /* Additional Section Styles */
  section p {
    font-size: 25px;
    word-spacing: 2px;
    margin-bottom: 25px;
    text-shadow: 1px 1px 1px black;
  }

  section a {
    padding: 12px 30px;
    border-radius: 4px;
    outline: none;
    text-transform: uppercase;
    font-size: 13px;
    font-weight: 500;
    text-decoration: none;
    letter-spacing: 1px;
    transition: all 0.5s ease;
  }

  section .btnone {
    background: #fff;
    color: #000;
  }

  .btnone:hover {
    background: #00b894;
    color: white;
  }

  section .btntwo {
    background: #00b894;
    color: white;
  }

  .btntwo:hover {
    background: #fff;
    color: #000;
  }

  /* Text Animation */
  .change_content:after {
    content: "";
    animation: changetext 5s infinite linear;
    color: #00b894;
  }

  @keyframes changetext {
    0% {
      content: " YOU";
    }
    20% {
      content: " CAN";
    }
    35% {
      content: " GET";
    }
    60% {
      content: " GRADE";
    }
    80% {
      content: " CARD";
    }
    100% {
      content: " HERE";
    }
  }
  /* Dropdown Styles */
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-btn {
  text-decoration: none;
  color: #00b894;
  font-weight: bold;
  margin-left: 10px;
  cursor: pointer;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #101010;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 0;
}

.dropdown-content a {
  color: #000;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  font-size: 13px;
  font-weight: 500;
  text-transform: uppercase;
}

.dropdown-content a:hover {
  background-color: #00b894;
  color: #fff;
}

.dropdown:hover .dropdown-content {
  display: block;
}


  

  </style>

