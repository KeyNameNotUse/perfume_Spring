<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 관리</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>

	<div class="container mb-5" align="center">
	<h3> 문의글 관리 페이지</h3>
	</div>

	<div class="container">

	<!-- 문의글 분류 선택하기  -->
	<div class="btn-group">
		<button class="btn btn-outline-dark btn-sm" type="button" 
		onclick="location.href='${pageContext.request.contextPath}/board/questionManagement?selectedOne=${quesubject}" >
		연습</button>
	</div>	
	
  		<button class="btn btn-dark dropdown-toggle" type="button" 
  		id="dropdownMenu" data-bs-auto-close="true" 
  		data-bs-toggle="dropdown" aria-expanded="false">
    	분류별 모아보기</button>
  	<ul class="dropdown-menu" aria-labelledby="dropdownMenu">
    <li><a class="dropdown-item" href="#">[상품]</a></li>
    <li><a class="dropdown-item" href="#">[배송]</a></li>
    <li><a class="dropdown-item" href="#">[주문및결제]</a></li>
    <li><a class="dropdown-item" href="#">[회원]</a></li>
    <li><a class="dropdown-item" href="#">[기타]</a></li>
  	</ul>

	
	
	
	<table class="table table-hover">
		<thead>
			<tr align="center">
				<th scope="col" width="5%">No</th>
				<th scope="col" width="10%">분류</th>
				<th scope="col" width="10%">아이디</th>
				<th scope="col" width="30%">제목</th>
				<th scope="col" width="10%">작성일</th>
				<th scope="col" width="10%">답변 유무</th>
				<th scope="col" width="10%">답변</th>
			</tr>
		</thead>


<c:forEach var="q" items="${questionListAdmin}">
		<tbody>
			<tr align="center">

				<c:set var="boardNum" value="${boardNum}"/>
				<th scope="row">${boardNum}</th>				
				<c:set var="boardNum" value="${boardNum-1}"/>
						
				<c:if test="${q.quesubject eq 1}"><td>[상품]</td></c:if> 
				<c:if test="${q.quesubject eq 2}"><td>[배송]</td></c:if>
				<c:if test="${q.quesubject eq 3}"><td>[주문및결제]</td></c:if>
				<c:if test="${q.quesubject eq 4}"><td>[회원]</td></c:if>
				<c:if test="${q.quesubject eq 5}"><td>[기타]</td></c:if>			
				
				<td>${q.id}</td>
				<td><a
					href="${pageContext.request.contextPath}/board/questionView?num=${q.num}"
					style="color: black;">${q.quetitle}</a></td>
				<td><fmt:formatDate value="${q.regdate}" var="dateValue" pattern="yyyy-MM-dd HH:mm"/>${dateValue}</td>
				<td>
					<i class="bi bi-x-circle"></i>
					<i class="bi bi-suit-heart-fill"></i>
				</td>
				<td>	
				<button class="btn btc-sm btn-outline-primary" disabled><i class="bi bi-suit-heart-fill"></i>답변완료</button>
				</td>
			</tr>
		</tbody>
</c:forEach>
	</table>
	</div>


	<!-- 페이지 표시 -->
	<br>
	<div class="text-center">
		<!-- 이전 버튼 -->
		<c:if test="${start < bottomLine}">
			<a href="#" class="btn btn-sm btn-outline-danger disabled">이전</a>
		</c:if>
		<c:if test="${start > bottomLine}">
			<a
				href="${pageContext.request.contextPath}/board/questionManagement?pageNum=${start-bottomLine+(bottomLine-1)}"          
				class="btn btn-sm btn-outline-primary">이전</a> 					<!-- 1페이지 아니라 5페이지로 이동하게  -->         
			</c:if>

		<!-- 현재 페이지 표시 -->
		<c:forEach var="p" begin="${start}" end="${end}">
			<a
				href="${pageContext.request.contextPath}/board/questionManagement?pageNum=${p}"
				class="btn <c:if test="${pageInt==p}"> btn-sm btn-outline-secondary </c:if> ml-3 mr-3">${p}</a>
		</c:forEach>

		<!-- 다음 버튼 -->
		<c:if test="${end >= maxPage}">
			<a href="#" class="btn btn-sm btn-outline-danger disabled">다음</a>
		</c:if>
		<c:if test="${end <  maxPage}">
			<a
				href="${pageContext.request.contextPath}/board/questionManagement?pageNum=${start+bottomLine}"
				class="btn btn-sm btn-outline-primary">다음</a>
		</c:if>
	</div>


</body>
</html>