<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="../include/head.jsp" %>
</head>
<body>
	<!-- header include -->
	<%@ include file="../include/header.jsp" %>
	<!-- header include End -->
	<div class="boardList">
		<div class="container">
			<div class="boardListTable">
				<div class="boardTopTitle">
					<h1>공지사항</h1>
				</div>
				<table>
					<tr>
						<th>No.</th>
						<th>작성자</th>
						<th>제목</th>
						<th>작성일자</th>
						<th>조회수</th>
					</tr>
					<c:forEach var="list" items="${list}" varStatus="status" >
					<tr onclick="location.href='/boardnoticeview/${list.bno}'">
						<td>${status.count}</td>
						<td>${list.bwriter}</td>
						<td>${list.btitle}</td>
						<td><fmt:formatDate value="${list.bwritedate}" pattern="yyyy-MM-dd"/></td>
						<td class="boradListCat">0</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<div class="boardlistPage">
				<ul>
					<li><a href="#">〈</a></li>
					<li class="boardlistPageBtn"><a href="#" class="on">1</a></li>
					<li class="boardlistPageBtn"><a href="#">2</a></li>
					<li class="boardlistPageBtn"><a href="#">3</a></li>
					<li class="boardlistPageBtn"><a href="#">4</a></li>
					<li class="boardlistPageBtn"><a href="#">5</a></li>
					<li><a href="#">〉</a></li>
				</ul>
				<c:choose>
					<c:when test="${id!=null}">
						<a href="/boardnoticewrite" class="boardlistBtn">글쓰기</a>
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>