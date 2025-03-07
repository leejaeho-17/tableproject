<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
body * {
	font-family: 'Jua', sans-serif;
}
</style>
<script>
function goBack() {
    location.href="/";
}
</script>
</head>
<body>
	<div style="width: 700px; margin: 20px auto;">
		<h3 class="text-center">회사 정보 입력</h3>
		<form action="<%=request.getContextPath()%>/insert" method="post" enctype="multipart/form-data">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td>회사명</td>
						<td><input type="text" name="cname" class="form-control" required></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="chp" class="form-control" required></td>
					</tr>
					<tr>
						<td>주소</td>
						<td><input type="text" name="caddr" class="form-control" required></td>
					</tr>
					<tr>
						<td>회사 로고</td>
						<td><input type="file" name="upload" class="form-control" required></td>
					</tr>
					<tr>
						<td colspan="2" class="text-center">
							<button type="submit" class="btn btn-success">제출하기</button>
							<button type="button" class="btn btn-success" onclick="goBack()">이전으로</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>
