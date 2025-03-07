<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사 등록</title>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <style>
        /* 전체적인 회색 테마 적용 */
        body {
            font-family: 'Jua', sans-serif;
            background-color: #e9ecef; /* 연한 회색 배경 */
            color: #495057;
        }

        /* 카드 스타일 */
        .container {
            max-width: 600px;
            margin-top: 40px;
        }

        .card {
            background-color: #f8f9fa; /* 밝은 회색 카드 배경 */
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.15);
            border: 1px solid #dee2e6;
        }

        /* 폼 입력 필드 */
        .form-control {
            border-radius: 10px;
            border: 1px solid #adb5bd; /* 회색 테두리 */
            background-color: #f1f3f5; /* 연한 회색 */
            color: #495057;
        }

        .form-control:focus {
            border-color: #6c757d;
            box-shadow: none;
        }

        /* 버튼 스타일 */
        .btn-custom {
            width: 100%;
            border-radius: 10px;
            padding: 10px;
            font-size: 16px;
        }

        .btn-success {
            background-color: #6c757d; /* 중간 회색 */
            border: none;
        }

        .btn-success:hover {
            background-color: #5a6268; /* 살짝 더 어두운 회색 */
        }

        .btn-outline-secondary {
            border: 1px solid #6c757d;
            color: #6c757d;
        }

        .btn-outline-secondary:hover {
            background-color: #6c757d;
            color: white;
        }
    </style>
    <script>
        function goHome() {
            location.href = "/";
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="card p-4">
            <h3 class="text-center mb-4">회사 정보 입력</h3>
            <form action="<%=request.getContextPath()%>/insert" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="cname" class="form-label">회사명</label>
                    <input type="text" id="cname" name="cname" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="chp" class="form-label">전화번호</label>
                    <input type="text" id="chp" name="chp" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="caddr" class="form-label">주소</label>
                    <input type="text" id="caddr" name="caddr" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="upload" class="form-label">회사 로고</label>
                    <input type="file" id="upload" name="upload" class="form-control" required>
                </div>
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-success btn-custom">제출하기</button>
                    <button type="button" class="btn btn-outline-secondary btn-custom" onclick="goHome()">홈으로</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
