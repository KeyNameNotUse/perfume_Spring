<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일대일 문의게시판</title>
</head>
<body>

	<form action="${pageContext.request.contextPath}/board/questionPro"
		name="p" method="POST">
		<button></button>
	</form>

	<div class="container">
	<form action="${pageContext.request.contextPath}/board/" name="q" method="POST">
	<table class="table">
		<thead>
			<tr align="center">
				<th scope="col" width="5%">No</th>
				<th scope="col" width="7%">분류</th>
				<th scope="col" width="30%">제목</th>
				<th scope="col" width="10%">작성일</th>
				<th scope="col" width="10%">답변 유무</th>
			</tr>
		</thead>

		<tbody>
			<tr align="center">
				<th scope="row">No</th>
				<td>분류</td>
				<td>제목</td>
				<td><fmt:formatDate value="${regdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm"/>${dateValue}</td>
				<td>답변 유무</td>
			</tr>

		</tbody>
	</table>
	</form>
	</div>
	

</body>
</html>