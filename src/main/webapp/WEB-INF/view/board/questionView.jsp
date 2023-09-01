<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글: ${question.num}</title>
</head>
<body>

	<div class="container">
			<div class="mb-3">
			<label for="subject">카테고리</label>
				<c:if test="${question.quesubject eq 1}"><input class="form-control" type="text" value="[상품]" disabled></c:if>
				<c:if test="${question.quesubject eq 2}"><input class="form-control" type="text" value="[배송]" disabled></c:if>
				<c:if test="${question.quesubject eq 3}"><input class="form-control" type="text" value="[주문및결제]" disabled></c:if>
				<c:if test="${question.quesubject eq 4}"><input class="form-control" type="text" value="[회원]" disabled></c:if>
				<c:if test="${question.quesubject eq 5}"><input class="form-control" type="text" value="[기타]" disabled></c:if>
			</div>
			
			
			<div class="mb-3">	
				<label for="name">작성자</label>
				<input type="text" class="form-control" value="${question.id}" disabled>
			</div>
			<div class="mb-3">
				<label for="title">제목</label>
				<input type="text" class="form-control" value="${question.quetitle}" disabled>
			</div>
			<div class="mb-3">
				<label for="content">내용</label>
				<textarea class="form-control" rows="15" disabled>${question.quecontent}</textarea>
			</div>
			
			<c:choose>	
			<c:when test="${question.queimage eq null || question.queimage eq ' '}">
			<div class="mb-3">
				<label for="image"></label>
				<input type="text" class="form-control" value="[사진등록을 하지 않았습니다]" disabled>
			</div></c:when>
			
			<c:otherwise>
			<div class="mb-3">
			<img class="mb-3 text-center" alt="첨부사진"
					src="${pageContext.request.contextPath}/view/board/images/${question.queimage}" width="50%"  />

			</div></c:otherwise>	
			</c:choose>
			
			
			
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
  	<button class="btn btn-outline-dark" type="button"
  	onclick="location.href='${pageContext.request.contextPath}/board/questionDeleteForm?num=${question.num}'">
  	문의글 삭제</button>
  	

<!-- admin일때는 questionManagement로 돌아가게 만들기, 아닐경우 questionList로 돌아가기  -->
	<c:choose>
	<c:when test="${id eq 'admin'}">
  		<button class="btn btn-outline-warning" type="button"
  		onclick="location.href='${pageContext.request.contextPath}/board/questionManagement?pageNum=${pageInt}'">
  		목록으로 돌아가기</button>	</c:when>
	<c:otherwise>
  		<button class="btn btn-outline-warning" type="button"
  		onclick="location.href='${pageContext.request.contextPath}/board/questionList?pageNum=${pageInt}'">
  		목록으로 돌아가기</button>	</c:otherwise>
	</c:choose>

</div>



<!-- 구분선  -->
<br>
<br>
<hr role="diviner" />
<br>
<br>
	</div>



<!-- 관리자 답변 -->
<div class="container border">
<c:if test="${id eq 'admin'}">
	<div class="mb-3 row">
  		<textarea class="form-control " id="textarea" rows="3"
  		cols="30" rows="1" name="text" 
        oninput='this.style.height = ""; this.style.height = this.scrollHeight + "px"' 
        style="resize: none; padding: 8px; max-height: 300px; margin-right: 10px;"
        placeholder="'관리자' 계정만 작성이 가능합니다"
  		></textarea>
   		<button class=" btn btn-outline-dark " 
   		onclick="clickBtn()" style="margin-top: 10px;padding: 4px 6px; height: fit-content">
   		답변 입력</button> 		
	</div>
 	<div class="mb-3 row">
		<label for="content">관리자 답변</label>
		<textarea class="form-control" rows="15" style="resize: none"></textarea>
	</div>
</c:if>
</div>



<script>
const textarea = document.querySelector("textarea");
const button = document.querySelector("button");
const text = document.querySelector("p");

function clickBtn() {
	text.innerHTML = textarea.value;
    textarea.value = '';
    textarea.style.height = '';
    }

</script>



</body>
</html>