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
				<div class="adminMemberListTable">
					<div class="adminMemberTopTitle">
						<h1>회원관리</h1>
					</div>
					<table class="adminMemberSearchMain">
						<tr>
							<th rowspan="2">검색어</th>
							<td>
								<select name="category">
									<option value="선택하세요">선택하세요</option>
									<option value="아이디">아이디</option>
									<option value="이름">이름</option>
									<option value="이메일">이메일</option>			
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" placeholder="Search...">
							</td>
						</tr>
					</table>
					<div class="adminMemberSearchBtn">
						<input type="button" value="검색">
					</div>
					<table class="adminMemberListTableTwo">
						<tr>
							<th>No.</th>
							<th>아이디</th>
							<th>이름</th>
							<th>가입일</th>
							<th>이메일</th>
							<th>관리</th>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>1</td>
							<td>sdzzang123</td>
							<td>박선두</td>
							<td>2023.01.01</td>
							<td>sdzzang123@naver.com</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>2023.01.02</td>
							<td>tyzzang123@hanmail.net</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="수정">
							</td>
						</tr>
					</table>
				</div>
				<div class="adminMemberlistPage">
					<ul>
						<li><a href="#">〈</a></li>
						<li class="adminMemberlistPageBtn"><a href="#" class="on">1</a></li>
						<li class="adminMemberlistPageBtn"><a href="#">2</a></li>
						<li class="adminMemberlistPageBtn"><a href="#">3</a></li>
						<li class="adminMemberlistPageBtn"><a href="#">4</a></li>
						<li class="adminMemberlistPageBtn"><a href="#">5</a></li>
						<li><a href="#">〉</a></li>
					</ul>
					<a href="/adminMemberwrite" class="adminMemberlistBtn">회원추가</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>