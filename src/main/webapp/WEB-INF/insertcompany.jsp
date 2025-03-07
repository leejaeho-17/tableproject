<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Gaegu&family=Jua&family=Nanum+Pen+Script&family=Playwrite+AU+SA:wght@100..400&family=Single+Day&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <link  rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
        <style>
            body *{
                font-family: 'jua';
            }
        </style>
    </head>
    <body>
    <div>
    	<form action="./insert" method="post" enctype="multipart/form-data">
    		<input type="text" name="cname" class="form-control" required="required">
    		<input type="text" name="chp" class="form-control" required="required">
    		<input type="text" name="caddr" class="form-control" required="required">
    		<input type="file" name="upload" class="form-control" required="required">
    		<button type="submit" class="btn btn-sm btn-success">입력</button>
    	</form>
    </div>
        </body>
</html>