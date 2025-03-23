<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.saveLife.Model.MedicalRecords, com.saveLife.ServiceImpl.MedicalReportServiceImpl" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Records</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: 'Arial', sans-serif;
        }
        .navbar {
            background-color: #0a0a0a;
        }
        .navbar-brand {
            color: cyan !important;
            font-size: 24px;
            font-weight: bold;
        }
        .nav-link {
            color: white !important;
        }
        .container1 {
            margin-top: 50px;
            margin-left: 50px;
        }
        .card {
            background: #222;
            border-radius: 10px;
            box-shadow: 0px 0px 10px cyan;
            color: white;
        }
        .card-title {
            color: cyan;
        }
        .card-text {
            color: white;
        }
        .btn-custom {
            background-color: cyan;
            color: black;
            width: 100%;
        }
        .btn-custom:hover {
            background-color: white;
            color: black;
        }
        footer {
            margin-top: 20px;
            text-align: center;
            padding: 10px;
            background: #0a0a0a;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Medical Records</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container1">
        <h3 class="text-center text-cyan">Medical Records</h3>
        <div class="row">
            <% 
                MedicalReportServiceImpl service = new MedicalReportServiceImpl();
                List<MedicalRecords> records = service.fetchAll();
                for (MedicalRecords record : records) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card p-3">
                    <h5 class="card-title">Record ID: <%= record.getMrId() %></h5>
                    <p class="card-text"><strong>Date:</strong> <%= record.getDate() %></p>
                    <p class="card-text"><strong>Treatment:</strong> <%= record.getTreatment() %></p>
                    <p class="card-text"><strong>Medications:</strong> <%= record.getMedications() %></p>
                    <p class="card-text"><strong>Notes:</strong> <%= record.getNotes() %></p>
                    <p class="card-text"><strong>Patient ID:</strong> <%= record.getpId() %></p>
                </div>
            </div>
            <% } %>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 AI Healthcare Chatbot. All Rights Reserved.</p>
    </footer>
</body>
</html>