<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
        <style>
            body *{
                font-family: 'Jua', sans-serif;
            }
            .container {
                text-align: center;
                margin-top: 50px;
            }
            .header {
                background-color: #007bff;
                color: white;
                padding: 15px;
                font-size: 24px;
            }
            .content {
                padding: 20px;
            }
            .footer {
                background-color: #f8f9fa;
                padding: 10px;
                margin-top: 20px;
                font-size: 14px;
                color: #6c757d;
            }
        </style>
    </head>
    <body>
        <div class="header">
            Welcome to Home Page
        </div>
        <div class="container content">
            <h1 class="mb-4">Home</h1>
            <p>이 페이지는 사용자가 데이터를 삽입할 수 있도록 설계되었습니다.</p>
            <a href="/insert" class="btn btn-primary">
                <i class="bi bi-pencil-square"></i> Insert Data
            </a>
            <a href="/list" class="btn btn-primary">
                <i class="bi bi-list"></i> company list
            </a>
        </div>
        <div class="footer text-center">
            &copy; 2025 Your Company. All rights reserved.
        </div>
    </body>
</html>
