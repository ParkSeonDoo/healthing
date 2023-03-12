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
						<h1>결제관리</h1>
					</div>
					<table class="adminMemberSearchMain">
						<tr>
							<th rowspan="2">검색어</th>
							<td>
								<select name="category">
									<option value="선택하세요">선택하세요</option>
									<option value="아이디">아이디</option>
									<option value="이름">이름</option>
									<option value="결제방식">결제방식</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" placeholder="Search...">
							</td>
						</tr>
					</table>
					<div class="adminpaymentTab">
						<div class="paymentTabLeft">
							<a href="#">결제요청</a>
						</div>
						<div class="paymentTabRight">
							<a href="#">결제완료</a>
						</div>
					</div>
					<table class="adminMemberListTableTwo adminPaymentTable">
						<tr>
							<th>No.</th>
							<th>아이디</th>
							<th>이름</th>
							<th>결제방식</th>
							<th>결제비용</th>
							<th>신청일</th>
							<th>상태</th>
							<th>비고</th>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>1</td>
							<td>sdzzang123</td>
							<td>박선두</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.01</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardEtc">결제대기</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
							</td>
						</tr>
						<tr onclick="location.href='/adminMemberview'">
							<td>2</td>
							<td>tyzzang123</td>
							<td>황태영</td>
							<td>신용카드</td>
							<td>30,000</td>
							<td>2023.01.02</td>
							<td class="boradListCat">
								<span class="boardRed">결제완료</span>
							</td>
							<td>
								<input type="button" class="adminMemberModifyBtn" value="취소">
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
				</div>
			</div>
		</div>
	</div>
</body>
</html>