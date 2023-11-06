<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/reverification.css"/>
    <link rel="website icon" href="static/website_icons/search.svg"/>

    <title>Reverification</title>
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
    
        <div class="marquee-container">
            <p class="marquee-text">NOTE: Reverification charges are 1000/- per subject. Please fill out the details accurately. Otherwise, your request will be canceled and the payment will not be refunded.</p>
        </div>
        <div class="content push-content">
        <div class="container">
            <h2>Re-verification Page</h2>
            <form>
                <label for="study-year">Study Year:</label>
                <select id="study-year" name="study-year" required>
                    <option value="" disabled selected>Select Study Year</option>
                    <option value="year1">2024-2023</option>
                    <option value="year2">2023-2022</option>
                    <option value="year3">2022-2021</option>
                    <option value="year3">2021-2020</option>
                </select>

                <label for="current-semester">Current Semester:</label>
                <select id="current-semester" name="current-semester" required>
                    <option value="" disabled selected>Select Current Semester</option>
                    <option value="Semester 1">Odd semester</option>
                    <option value="Semester 2">Even semester</option>
                    <option value="Semester 3">Summer term</option>
                </select>

                <label for="subject-code">Subject code:</label>
                <input type="tel" id="subject-code" name="subject-code" required>

                <label for="amount">Amount:</label>
                <input type="number" id="amount" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" required>
                
                <button type="button" onclick="redirectToPayment()">Proceed to Payment</button>
            </form>
        </div>
    </div>
    <footer>
        <div style="background-color: #084a92; padding: 10px; text-align: center; color: white;">
            &copy; 2023 Student Grade Hub. All rights reserved.
        </div>
    </footer>
    <script src="JS/reverification.js"></script>
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
            margin-bottom: 500px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: calc(100vh - 124px); /* Adjust based on header and nav heights */
        }

        .container {
            max-width: 400px;
            padding: 45px;
            margin-top: 10px;
            height: 750px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
            color: #555;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #084a92;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 0.1rem;
            width: 100%;
        }

        .push-content {
            margin-bottom: 20px;
        }
            .marquee-container {
            background-color: #f2f2f2;
            padding: 10px;
            text-align: center;
        }

        .marquee-text {
            display: inline-block;
            animation: marquee-scroll 20s linear infinite;
            white-space: nowrap;
        }

        @keyframes marquee-scroll {
            0% {
                transform: translateX(0%);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        footer {
            background-color: #084a92;
            padding: 10px;
            text-align: center;
            color: white;
           position: relative;
            margin-bottom: -17rem;
            bottom: 1px;
            width: 98.7%;
        }
</style>
<script>
function redirectToPayment() {
    var studyYear = document.getElementById("study-year").value;
    var currentSemester = document.getElementById("current-semester").value;
    var phoneNumber = document.getElementById("subject-code").value;
    var amount = document.getElementById("amount").value;
    var email = document.getElementById("email").value;
    var params = `studyYear=${studyYear}&currentSemester=${currentSemester}&phoneNumber=${phoneNumber}&amount=${amount}&email=${email}`;
    window.location.href = `payment?${params}`;
}
</script>