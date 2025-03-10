<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Company Detail</title>
        <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <link  rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Arial', sans-serif;
        }
        .card {
            max-width: 700px;
            width: 100%;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.1);
            padding: 20px;
            background-color: #ffffff;
        }
        .company-photo {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .detail-title {
            font-size: 28px;
            font-weight: bold;
            color: #333;
            margin-bottom: 15px;
        }
        .detail-info {
            font-size: 16px;
            color: #555;
            margin-bottom: 8px;
        }
        .btn-back {
            margin-top: 15px;
        }
    </style>
</head>
<body>

<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card card-body card shadow">
        <div class="text-center">
            <h2 class="detail-title">${company.cname}</h2>
            <c:if test="${not empty company.cphoto and company.cphoto ne 'no'}">
                <img src="${fronturl}/company/${company.cphoto}${backurl}" alt="Company Photo" class="company-photo mb-4">
            </c:if>
            <div class="detail-info"><strong>대표자: </strong>${company.chp}</div>
            <div class="detail-info"><strong>주소: </strong>${company.caddr}</div>
            <div class="detail-info">
                <strong>가입일:</strong> <fmt:formatDate value="${company.gaipday}" pattern="yyyy-MM-dd HH:mm"/>
            </div>
            <a href="/list" class="btn btn-primary btn-back">목록으로 돌아가기</a>
        </div>
    </div>
</body>
</html>