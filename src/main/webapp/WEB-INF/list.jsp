<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Company List</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
        <style>
            body {
                font-family: 'Arial', sans-serif;
                background-color: #f4f6f9;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .container {
            	width: 80%;
                max-width: 900px;
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
                text-align: center;
            }
            .card {
                border-radius: 15px;
                box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            }
            .table th, .table td {
                vertical-align: middle;
            }
            
            .rbtn {
            	float: right;
            }
        </style>
        <script>
			function goBack() {
			    location.href="/";
			}
		</script>
    </head>
    <body>
        <div class="container">
            <h1 class="mb-4">Company List <button type="button" class="btn btn-outline-secondary rbtn" onclick="goBack()">이전으로</button></h1>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th>Company Name</th>
                            <th>Company	Hp</th>
                            <th>Company	Address</th>
                            <th>Company Photo</th>
                            <th>Functions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="company" items="${list}" varStatus="status">
                            <tr>
                                <td>${status.index + 1}</td>
                                <td>${company.cname}</td>
                                <td>${company.chp}</td>
                                <td>${company.caddr}</td>
                                <td>
                                	<c:if test="${not empty company.cphoto}">
                                        <img src="${fronturl}/company/${company.cphoto}${backurl}" alt="Company Photo" class="company-photo">
                                    </c:if>
                                    <c:if test="${empty company.cphoto}">
                                        <span>No Image</span>
                                    </c:if>
                                </td>
                                <td>
                                
                                    <a href="/view?num=${company.num}" class="btn btn-info btn-sm">View</a>
                                    <a href="/edit?num=${company.num}" class="btn btn-warning btn-sm">Edit</a>
									<a href="/delete?num=${company.num}" class="btn btn-danger btn-sm" onclick="return confirm('정말로 삭제하시겠습니까?');"> Delete </a>
							</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
