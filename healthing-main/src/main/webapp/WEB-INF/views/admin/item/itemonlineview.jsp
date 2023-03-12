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
	<div class="adminWrap">
		<%@ include file="../include/gnb.jsp" %>
		<div class="adminContent">
			<%@ include file="../include/header.jsp" %>
			<div class="adminContentBox">
				<div class="itemWriteDetail">
					<div class="adminitemTopTitle">
						<h1>온라인이용권 등록</h1>
					</div>
					<h2>프로그램정보</h2>
					<table class="adminitemwrite">
						<tr>
							<th>유형</th>
							<td class="adminitemwit">${view.icategory}</td>
							<th>목적</th>
							<td class="adminitemwit">${view.ipurpose}</td>
						</tr>
						<tr>
							<th>타겟</th>
							<td>${view.itarget}</td>
							<th>난이도</th>
							<td>${view.ilavel}</td>
						</tr>
						<tr>
							<th>도구</th>
							<td>${view.itool}</td>
						</tr>
					</table>
					<h2>코치정보</h2>
					<table class="adminitemwrite">
						<tr>
							<th>코치이름</th>
							<td>${view.icoachname}</td>
							<th>코치정보</th>
							<td>${view.icoachinfo}</td>
						</tr>
						<tr>
							<th>한줄요약</th>
							<td colspan="2">${view.icoachsummary}</td>
						</tr>
						<tr>
							<th>코치프로필</th>
							<td><img src="${view.icoachimg}"></td>
						</tr>
					</table>
					<h2>프로그램정보</h2>
					<table class="adminitemwrite">
						<tr>
							<th>썸네일</th>
							<td><img src="${view.ithumbnail}"></td>
						</tr>
						<tr>
							<th>주</th>
							<td>주${view.iweek}</td>
							<th>주횟수</th>
							<td>주${view.iweekcount}회
							</td>
							<th>시간</th>
							<td>${view.iweektime}분</td>
						</tr>
						<tr>
							<th>금액</th>
							<td><fmt:formatNumber type="number" value="${view.iprice}"/>원</td>
							<th>할인가</th>
							<td>${view.isale}%</td>
							<th>인원수</th>
							<td>${view.ipeople}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="3">${view.ititle}</td>
						</tr>
						<tr>
							<th>목표</th>
							<td colspan="5" class="itemGoal">${view.igoal}</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="5" class="itemContents">${view.icontents}</td>
						</tr>
					</table>
					<div class="itemWriteBtn">
						<input type="button" value="수정" onclick="location.href='/adminitemonlineupdate/${view.ino}'">
						<input type="button" value="목록" onclick="location.href='/adminitemonline'">
						<input type="button" value="삭제" onclick="location.href='/adminitemonlinedelete/${view.ino}'">
					</div>
				</div>
			</div>
		</div>	
	</div>	
</body>
</html>