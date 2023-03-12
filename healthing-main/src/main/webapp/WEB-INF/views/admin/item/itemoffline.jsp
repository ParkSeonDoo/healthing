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
	<div class="adminWrap">
		<%@ include file="../include/gnb.jsp" %>
		<div class="adminContent">
			<%@ include file="../include/header.jsp" %>
			<div class="adminContentBox">
				<div class="adminitemTable">
					<div class="adminitemTopTitle">
						<h1>오프라인이용권 관리</h1>
					</div>
					<div class="adminitemSearch">
						<table>
							<tr>
								<th rowspan="2">검색어</th>
								<td>
									<select>
										<option>선택하세요</option>
										<option>코치</option>
										<option>프로그램명</option>
										<option>카테고리</option>
										<option>모집상태</option>
										<option>지역</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<input type="search" placeholder="Search...">
								</td>
							</tr>
						</table>
						<div class="adminitemSearBtn">
							<input type="submit" value="검색">
						</div>
					</div>
					<table class="adminitemTableList">
						<tr>
							<th>No.</th>
							<th>카테고리</th>
							<th>코치</th>
							<th>프로그램명</th>
							<th>지역</th>
							<th>모집일</th>
							<th>모집인원</th>
							<th>모집상태</th>
							<th>관리</th>
						</tr>
						<c:forEach var="list" items="${list}" varStatus="status" >
						<tr onclick="location.href='/adminitemofflineview/${list.ino}'">
							<td>${status.count}</td>
							<td>${list.icategory}</td>
							<td>${list.icoachname}</td>
							<td>${list.ititle}</td>
							<td>${list.ilocal}</td>
							<td><fmt:formatDate value="${list.insertdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td>${list.ipeople}</td>
							<td class="adminitemCat">
								<span class="adminitemEtc">모집중</span>
							</td>
							<td>
								<input type="button" value="수정" class="adminitemreset" onclick="location.href='/adminitemofflineupdate/${list.ino}'">
							</td>
						</tr>
						</c:forEach>
					</table>
				</div>
				<div class="adminitemPage">
					<ul>
						<li><a href="#">〈</a></li>
						<li class="adminitemPageBtn"><a href="#" class="on">1</a></li>
						<li class="adminitemPageBtn"><a href="#">2</a></li>
						<li class="adminitemPageBtn"><a href="#">3</a></li>
						<li class="adminitemPageBtn"><a href="#">4</a></li>
						<li class="adminitemPageBtn"><a href="#">5</a></li>
						<li><a href="#">〉</a></li>
					</ul>
					<a href="/adminitemofflinewrite" class="adminitemBtn">아이템등록</a>
				</div>
			</div>
		</div>	
	</div>			
</body>
</html>