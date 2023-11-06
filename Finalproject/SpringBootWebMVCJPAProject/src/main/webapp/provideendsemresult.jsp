<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Provide end sem Result</title>
  
</head>
<body>
    <header>
        <div class="logo">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
            <link rel="stylesheet" href="style/provideendsemresults.css"/>

        <a href="facportal.html" style="color: #0c0c0c; text-decoration: none;">

        <h1><i class="fas fa-chalkboard-teacher"></i> Faculty Portal</h1></a>
        </div>
   
    <nav>
        <a href="facportal"><i class="fas fa-home"></i> Dashboard</a>
        <a href="provideendsemresult"><i class="fas fa-file-alt"></i> Provide End Sem Results</a>
        <a href="#"><i class="fas fa-clipboard"></i> Provide Answer Scripts</a>
        <a href="#"><i class="fas fa-search"></i> Reverification Requests</a>
        <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </nav>
    </header>
    
    <div class="container">
        <div class="section">
            <h2>Enter Student Details:</h2>
            <div class="frame">
                <form>
                    <div class="form-columns">
                        <div class="form-column">
                            <label for="regNo">Registration Number:</label>
                            <input type="text" id="regNo" name="regNo"> 
                        </div>
                        <div class="form-column">
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name">
                        </div>
                    </div>
                    <div class="form-columns">
                        <div class="form-column">
                            <label for="year">Select Year:</label>
                            <select id="year" name="year">
                                <option value="year1">2024-2023</option>
                                <option value="year2">2023-2022</option>
                                <option value="year3">2022-2021</option>
                                <option value="year3">2021-2020</option>
                                <!-- Add more options as needed -->
                            </select>
                        </div>
                        <div class="form-column">
                            <label for="semester">Select Semester:</label>
                            <select id="semester" name="semester">
                                <option value="Semester 1">Odd semester</option>
                                <option value="Semester 2">Even semester</option>
                                <option value="Semester 3">Summer term</option>
                                <!-- Add more options as needed -->
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="section">
            <h2>Provide Student Grade:</h2>
            <div class="frame">
                <h3>Add Result</h3>
                <button id="addResultBtn">Add Result</button>
                <div id="resultForm" style="display: none;">
                    <label for="subject">Subject:</label>
                    <input type="text" id="subject" name="subject">

                    <label for="subjectCode">Subject Code:</label>
                    <input type="text" id="subjectCode" name="subjectCode">

                    <label for="marks">Marks:</label>
                    <input type="number" id="marks" name="marks">

                    <label for="cgpa">CGPA:</label>
                    <input type="number" step="0.01" id="cgpa" name="cgpa">

                    <label for="grade">Grade:</label>
                    <input type="text" id="grade" name="grade">

                    <button id="saveResultBtn">Save Result</button>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div style="background-color: #6C757D; padding: 10px; text-align: center; color: rgb(16, 16, 16);">
            &copy; 2023 Student Grade Hub. All rights reserved.
        </div>
    </footer>
    <script src="JS/provideendsemresults.js"></script>
</body>
</html>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
header {
    background-color: #6C757D;
    color: rgb(13, 13, 13);
    padding: 10px;
    text-align: center;
}
nav {
    background-color: #161515;
    padding: 10px;
    text-align: center;
}
nav a {
    margin: 0 10px;
    text-decoration: none;
    color: #a8adb1;
}
.content {
    padding: 20px;
}
footer {
    background-color: #6C757D;
    padding: 10px;
    text-align: center;
    color: rgb(8, 8, 8);
    position: absolute;
    margin-bottom: -35rem;
    bottom: 1px;
    width: 98.7%;
}


.container {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    border: 2px solid black;
    margin: 20px;
    border-radius: 8px;
    overflow: hidden;
}

.section {
    flex: 9;
    padding: 20px;
    background-color: white;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin: 10px;
    border-radius: 8px;
}

.frame {
    border: 2px solid black;
    padding: 35px;
    max-width: 600px;
    margin: 0 auto;
    background-color: white;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

.form-columns {
    display: flex;
    gap: 50px;
}

.form-column {
    flex: 1;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input,
select {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    display: block;
    background-color: #333;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #555;
}

#resultForm {
    margin-top: 20px;
    display: none;
}

/* Add some responsive adjustments */
@media screen and (max-width: 768px) {
    .form-columns {
        flex-direction: column;
        gap: 15px;
    }
    
    .frame {
        max-width: 100%;
    }
}
</style>
<script>
// JavaScript code for adding and saving results
const addResultBtn = document.getElementById('addResultBtn');
const resultForm = document.getElementById('resultForm');
const saveResultBtn = document.getElementById('saveResultBtn');

addResultBtn.addEventListener('click', () => {
    resultForm.style.display = 'block';
    addResultBtn.style.display = 'none';
});

saveResultBtn.addEventListener('click', () => {
    // You can write code here to save the result data
    // For example, retrieve values from input fields and perform necessary actions
    
    // After saving, you can clear the form and hide it
    resultForm.style.display = 'none';
    addResultBtn.style.display = 'block';

    // Clear input fields
    document.getElementById('subject').value = '';
    document.getElementById('subjectCode').value = '';
    document.getElementById('marks').value = '';
    document.getElementById('cgpa').value = '';
    document.getElementById('grade').value = '';
});
</script>