<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart Emergency Healthcare System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Gagalin&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Horizon&display=swap');
        
        body {
            background-color: black;
            color: white;
            font-family: 'Gagalin', sans-serif;
            margin:0;
            padding:0;
        }
        .navbar {
            background-color: #0a0a0a;
            padding: 10px;
        }
        .navbar-brand {
            color: cyan !important;
            font-size: 24px;
            font-weight: bold;
            font-family: 'Horizon', sans-serif;
        }
        .nav-link {
            color: white !important;
            transition: color 0.3s ease-in-out;
        }
        .nav-link:hover {
            color: cyan !important;
        }
        .hero-section {
            text-align: center;
            padding: 100px 20px;
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('healthcare.jpg') center/cover;
        }
        .hero-section h1 {
            font-size: 50px;
            color: cyan;
            font-weight: bold;
            font-family: 'Horizon', sans-serif;
            animation: fadeIn 2s ease-in-out;
        }
        .btn-emergency {
            background-color: red;
            color: white;
            padding: 15px 25px;
            font-size: 20px;
            font-weight: bold;
            border-radius: 10px;
            transition: 0.3s;
            border:none;
        }
        .btn-emergency:hover {
            background-color: darkred;
        }
        .content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 50px;
            animation: slideIn 1.5s ease-in-out;
        }
        .feature-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 50px;
        }
        .feature-box {
            background-color: #222;
            padding: 20px;
            border-radius: 10px;
            width: 30%;
            text-align: center;
            transition: transform 0.3s;
        }
        .feature-box:hover {
            transform: scale(1.05);
        }
        .data-notice {
            font-size: 14px;
            color: gray;
            margin-top: 10px;
        }
        @media (max-width:1200px){
            .container{
               width:90%;
            }
    .feature-box{
        width:45%;
    }
}
@media (max-width:992px){
        .hero-section h1{
        font-size: 40px;
    }
    .btn-emergency{
        font-size: 18px;
        padding:12px 20px;
    }
    .content{
        flex-direction: column;
        text-align: center;
    }
}
@media (max-width:768px){
    .container{
        width:95%;
        margin-top: 30px;
    }
    .feature-box{
        width:80%;
    }
}
@media (max-width:480px){
    
    .container{
        width:100%;
        margin-top: 20px;
        padding:10px;
    }
    .hero-section h1{
        font-size: 32px;
    }
    .btn-emergency{
        font-size: 16px;
        padding:10px 18px;
    }
    .feature-box{
        width: 100%;
    }
}
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">SMART EMERGENCY HEALTHCARE SYSTEM</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Home.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="Services.jsp">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="ai.jsp">AI Bot</a></li>
                     </ul>
               
            </div>
        </div>
    </nav>
    <section class="hero-section">
        <div class="container">
            <h1>Emergency Healthcare at Your Fingertips</h1>
            <p>Immediate access to life-saving treatment and ambulance services.</p>
            <a href="#" class="btn btn-emergency">🚑 Request Emergency Help</a>
            <p class="data-notice">*By requesting emergency help, your location and medical details may be shared with the nearest hospital for faster assistance.</p>
        </div>
    </section>
    
    <div class="feature-section">
        <div class="feature-box"><h3>Rapid Response</h3><p>Instantly connects patients with the nearest emergency medical services.</p></div>
        <div class="feature-box"><h3>Live Ambulance Tracking</h3><p>Monitor ambulance arrival in real time for improved coordination.</p></div>
        <div class="feature-box"><h3>Emergency First Aid</h3><p>AI-driven guidance for immediate on-spot treatment before professionals arrive.</p></div>
    </div>
    
    <footer class="footer text-center py-3">
        <p>&copy; 2025 Smart Emergency Healthcare. All Rights Reserved.</p>
        <p class="data-notice">*Your medical details and location may be securely transferred to nearby hospitals for emergency treatment.</p>
    </footer>
</body>
</html>
