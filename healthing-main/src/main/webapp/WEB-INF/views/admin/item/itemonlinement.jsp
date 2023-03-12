<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<h1>온라인이용권 신청 관리</h1>
					</div>
					<div class="adminitemSearch">
						<table>
							<tr>
								<th rowspan="2">검색어</th>
								<td>
									<select>
										<option>선택하세요</option>
										<option>결제상태</option>
										<option>프로그램</option>
										<option>카테고리</option>
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
							<th>신청일자</th>
							<th>관리</th>
						</tr>
						<tr onclick="location.href=''">
							<td>1</td>
							<td>요가</td>
							<td>김관장</td>
							<td>온 몸이 쭉! 키 커지고 살 빠지는 요가</td>
							<td>2023.01.01</td>
							<td>
								<input type="button" value="수정" class="adminitemreset">
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>요가</td>
							<td>김관장</td>
							<td>온 몸이 쭉! 키 커지고 살 빠지는 요가</td>
							<td>2023.01.01</td>
							<td>
								<input type="button" value="수정" class="adminitemreset">
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>요가</td>
							<td>김관장</td>
							<td>온 몸이 쭉! 키 커지고 살 빠지는 요가</td>
							<td>2023.01.01</td>
							<td>
								<input type="button" value="수정" class="adminitemreset">
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td>요가</td>
							<td>김관장</td>
							<td>온 몸이 쭉! 키 커지고 살 빠지는 요가</td>
							<td>2023.01.01</td>
							<td>
								<input type="button" value="수정" class="adminitemreset">
							</td>
						</tr>
						<tr>
							<td>5</td>
							<td>요가</td>
							<td>김관장</td>
							<td>온 몸이 쭉! 키 커지고 살 빠지는 요가</td>
							<td>2023.01.01</td>
							<td>
								<input type="button" value="수정" class="adminitemreset">
							</td>
						</tr>
						<tr>
							<td>6</td>
							<td>요가</td>
							<td>김관장</td>
							<td>온 몸이 쭉! 키 커지고 살 빠지는 요가</td>
							<td>2023.01.01</td>
							<td>
								<input type="button" value="수정" class="adminitemreset">
							</td>
						</tr>
						<tr>
							<td>7</td>
							<td>요가</td>
							<td>김관장</td>
							<td>온 몸이 쭉! 키 커지고 살 빠지는 요가</td>
							<td>2023.01.01</td>
							<td>
								<input type="button" value="수정" class="adminitemreset">
							</td>
						</tr>
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
				</div>
			</div>
		</div>	
	</div>			
</body>
</html>