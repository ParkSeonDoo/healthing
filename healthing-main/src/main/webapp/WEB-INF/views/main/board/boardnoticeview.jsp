<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="boardWrite">
		<div class="container">
			<div class="boardWriteDetail boardViewDetail">
				<div class="loginLogo">
					<img src="/image/taeyoungimage/logo.png">
				</div>
				<div class="loginMent memberjoinMent">
					<h2>오늘부터,</h2>
					<h2>함께 헬싱!</h2>
				</div>
				<div class="memberjoinTitle">
					<h3>공지사항 상세보기</h3>
				</div>
				<table class="boardTable">
					<tr>
						<th>작성자ID</th>
						<td>${view.bwriter}</td>
					</tr>
					<tr>
						<th>작성일자</th>
						<td><fmt:formatDate value="${view.bwritedate}" pattern="yyyy-MM-dd"/></td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${view.btitle}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td class="boardViewsub">
							${view.bcontents}
						</td>
					</tr>
					<tr>
						<th>기존파일</th>
						<td class="boardViewsub">
							<img src="${view.bfile}">
						</td>
					</tr>
					<tr>
						<th>파일받기</th>
						<td><a href="" class="boardViewLink">다운로드</a></td>
					</tr>
				</table>
				<div class="boardWriteBtn">
					<input type="button" value="수정" onclick="location.href='/boardnoticeupdate/${view.bno}'">
					<input type="button" value="삭제" onclick="location.href='/boardnoticedelete/${view.bno}'">
					<input type="button" onclick="location.href='/boardnotice'" value="목록">
				</div>	
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>