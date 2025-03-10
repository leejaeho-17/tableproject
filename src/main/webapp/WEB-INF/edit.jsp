<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Company</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Arial', sans-serif;
        }
        .card {
            width: 700px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            padding: 30px;
            background-color: #ffffff;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="card container mt-5">
    <h2 class="mb-4 text-center">회사 정보 수정</h2>
    <form action="/update" method="post" enctype="multipart/form-data">
        <input type="hidden" name="num" value="${company.num}">
        <div class="mb-3">
            <label class="form-label">회사명</label>
            <input type="text" name="cname" class="form-control" value="${company.cname}">
        </div>
        <div class="mb-3">
            <label class="form-label">대표자</label>
            <input type="text" name="chp" class="form-control" value="${company.chp}">
        </div>
        <div class="mb-3">
            <label class="form-label">주소</label>
            <input type="text" name="caddr" class="form-control" value="${company.caddr}">
        </div>
        <div class="mb-3">
            <label class="form-label">사진</label>
            <input type="file" name="upload" class="form-control">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-success">수정 완료</button>
            <a href="/list" class="btn btn-secondary">취소</a>
        </div>
    </form>
</div>
</body>
</html>