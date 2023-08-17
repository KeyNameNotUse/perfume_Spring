<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class=container>
<table class="table table-hover">

	<thead>
		<tr class="table-dark"> 
		<th scope="col">작성내용</th> 
		<th scope="col">작성날짜</th>
		<th scope="col">#</th>
      	</tr>
	</thead>

	<c:forEach var="c" items="${coname}">
	<tbody>
	 	<tr>
		<td><a href="${pageContext.request.contextPath}/board/boardComment?num=${c.num}"
					style="color: black;">${c.content}</a></td>
		<td> <fmt:formatDate value="${c.regdate}" var="dateValue" pattern="yyyy-MM-dd"/>${dateValue} </td>
		<td>
			 <form action="${pageContext.request.contextPath}/board/boardCommentDeleteForm?ser=${c.ser}"
			 		name="del" method="post" >
				<input type="hidden" name="ser" value="${ser}">
				<button type="submit" class="btn btn-sm btn-outline-danger">삭제</button>
			 </form>
		</td>
		</tr>
	</tbody>
	</c:forEach>

</table>
</div>




</body>
</html>