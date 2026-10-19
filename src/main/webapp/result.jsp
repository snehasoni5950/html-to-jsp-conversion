<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Result</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .result-card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 480px;
            padding: 35px 30px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .badge-success {
            display: inline-block;
            background-color: #dcfce7;
            color: #15803d;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 12px;
        }
        h1 {
            color: #1e293b;
            font-size: 24px;
            font-weight: 700;
        }
        hr {
            border: none;
            height: 1px;
            background-color: #e2e8f0;
            margin: 20px 0;
        }
        h3 {
            color: #334155;
            font-size: 16px;
            margin-bottom: 15px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .detail-row {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #f1f5f9;
            font-size: 15px;
        }
        .detail-row:last-child {
            border-bottom: none;
        }
        .label {
            color: #64748b;
            font-weight: 600;
        }
        .value {
            color: #0f172a;
            font-weight: 500;
        }
        .actions {
            margin-top: 25px;
            text-align: center;
        }
        .btn-back {
            display: inline-block;
            padding: 10px 20px;
            background-color: #2563eb;
            color: #ffffff;
            text-decoration: none;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 600;
            transition: background-color 0.2s;
        }
        .btn-back:hover {
            background-color: #1d4ed8;
        }
        .warning-box {
            text-align: center;
            padding: 20px;
            color: #b45309;
            background: #fffbeb;
            border-radius: 8px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="result-card">
        <c:choose>
            <c:when test="${not empty name}">
                <div class="header">
                    <span class="badge-success">&#10003; Success</span>
                    <h1>Registration Successful</h1>
                </div>
                <hr>
                <h3>Student Details</h3>
                <div class="detail-row">
                    <span class="label">Name:</span>
                    <span class="value">${name}</span>
                </div>
                <div class="detail-row">
                    <span class="label">Email:</span>
                    <span class="value">${email}</span>
                </div>
                <div class="detail-row">
                    <span class="label">Course:</span>
                    <span class="value">${course}</span>
                </div>
                <div class="detail-row">
                    <span class="label">Age:</span>
                    <span class="value">${age}</span>
                </div>
            </c:when>
            <c:otherwise>
                <div class="warning-box">
                    <strong>No student data submitted yet.</strong>
                    <p style="margin-top: 6px; font-size: 14px;">Please submit the registration form first.</p>
                </div>
            </c:otherwise>
        </c:choose>

        <div class="actions">
            <a href="student.jsp" class="btn-back">&larr; Back to Registration</a>
        </div>
    </div>
</body>
</html>
