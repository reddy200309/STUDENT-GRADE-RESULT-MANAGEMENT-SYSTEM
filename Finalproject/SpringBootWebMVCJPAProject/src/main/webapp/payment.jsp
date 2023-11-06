<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link rel="stylesheet" href="style/payment.css"/>

   
        <!-- ... (your head content) ... -->
        <script src="JS/payment.js"></script>
    </head>
    <body onload="generateQRCode()">
        <h1>Payment Page</h1>
        <div id="qr-code-container">
            <h2>Scan QR Code to Make Payment</h2>
            <img id="qr-code" alt="QR Code">
            <p id="user-email"></p>
        </div>
    </body>
    </html>
    <style>
    body {
font-family: Arial, sans-serif;
margin: 0;
padding: 0;
background-color: #f5f5f5;
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
height: 100vh;
}

h1 {
text-align: center;
margin-bottom: 20px;
color: #007BFF;
}

h2 {
text-align: center;
margin-bottom: 20px;
color: #007BFF;
}

#qr-code-container {
max-width: 400px;
padding: 20px;
background-color: #fff;
border-radius: 8px;
box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
text-align: center;
}

#qr-code {
max-width: 100%;
height: auto;
margin-top: 20px;
}
    </style>
    
    <script>
    function generateQRCode() {
        var urlParams = new URLSearchParams(window.location.search);
        var amount = urlParams.get("amount");
        var email = urlParams.get("email");
        
        var upiId = "7989223892@ybl";  // Replace with your UPI ID
        var upiQrCodeData = "upi://pay?pa=" + upiId + "&am=" + amount;
        
        var qrCodeImg = document.getElementById("qr-code");
        qrCodeImg.src = "https://api.qrserver.com/v1/create-qr-code/?data=" + encodeURIComponent(upiQrCodeData);
        
        var emailElement = document.getElementById("user-email");
        emailElement.textContent = "Payer Email: " + email;
        
        // Simulate listening for payment status (replace with actual WebSocket or webhook handling)
        setTimeout(function() {
            simulatePaymentSuccess();
        }, 10000); // Simulate payment status after 5 seconds
    }

    function simulatePaymentSuccess() {
        var paymentStatus = true; // Simulate payment successful
        if (paymentStatus) {
            var emailElement = document.getElementById("user-email");
            emailElement.textContent = "Payment Successful! Thank you for your payment.";
        }
    }
    
    </script>