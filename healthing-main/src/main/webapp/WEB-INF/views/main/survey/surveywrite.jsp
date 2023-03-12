<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="surveyWriteMain">
	<div class="memberjoinDetail surveyWriteDetail">
		<div class="loginLogo">    
			<img src="/image/taeyoungimage/logo.png">
		</div>
		<div class="loginMent memberjoinMent surveyWriteTitle">           
			<p>다이어트부터 건강관리,</p>
			<p>근력강화까지..</p>
			<p>건강한 삶을 위한</p>
			<p>운동 처방을 해 드립니다.</p>
		</div>
		<div class="memberjoinTitle">
			<h3>설문 시작!</h3>
			<p>나의 몸 상태를 확인해 봅시다 :)</p>
			<p><span>*</span> 모두 입력해주셔야 정확한 진단을 받을 수 있습니다.</p>			
		</div>
		<form action="/surveyinsert" method="post" name='frm_Input'>
			<input type="hidden" name="uno" value="${survey.uno}">
			<input type="hidden" name="ucm" value="${survey.ucm}">
			<input type="hidden" name="ukg" value="${survey.ukg}">
			<table class="memberjoinTable surveyWriteTable">
				<tr class="memberjoinId surveyWriteBasic">
					<th>기본 정보</th>
					<td>
						<span><b>이름</b>${survey.uname}</span>
						<span><b>성별</b>
							<c:choose>
								<c:when test="${survey.ugender=='man'}">
									남자
								</c:when>
								<c:otherwise>
									여자
								</c:otherwise>
							</c:choose>
						</span>
						<span><b>키</b>${survey.ucm}<b>cm</b></span>
						<span><b>몸무게</b>${survey.ukg}<b>kg</b></span>
					</td>
				</tr>
				<tr class="memberjoinPwd surveyWriteOne">
					<th>평균 수면시간을 선택해주세요.</th>
					<td>
						<label><input type="radio" name="sleep" id="sleep1" value="4시간 이하" required>4시간 이하</label>
						<label><input type="radio" name="sleep" id="sleep2" value="5~6시간" required>5~6시간</label>
						<label><input type="radio" name="sleep" id="sleep3" value="7~8시간" required>7~8시간</label>
						<label><input type="radio" name="sleep" id="sleep4" value="9시간 이상" required>9시간 이상</label>
					</td>
				</tr>
				<tr class="memberjoinPwdcheck surveyWriteTwo">
					<th>평소 식사를 규칙적으로 하시나요?</th>
					<td>
						<label><input type="radio" name="food" id="food1" value="규칙적인 편" required>규칙적인 편</label>
						<label><input type="radio" name="food" id="food2" value="불규칙적인 편" required>불규칙적인 편</label>
						<label><input type="radio" name="food" id="food3" value="잘모르겠음" required>잘모르겠음</label>
					</td>				
				</tr>
				<tr class="memberjoinName surveyWriteThree">
					<th>평소 수면의 질은 어떠신가요?</th>
					<td>
						<label><input type="radio" name="quality" id="quality1" value="매우 나쁘다(피곤하다, 고통스럽다)" required>매우 나쁘다(피곤하다, 고통스럽다)</label>
						<label><input type="radio" name="quality" id="quality2" value="나쁜 편이다" required>나쁜 편이다</label>
						<label><input type="radio" name="quality" id="quality3" value="보통이다" required>보통이다</label>
						<label><input type="radio" name="quality" id="quality4" value="좋은 편이다" required>좋은 편이다</label>
						<label><input type="radio" name="quality" id="quality5" value="매우 좋다 (개운하다,에너지가 넘친다)" required>매우 좋다 (개운하다,에너지가 넘친다)</label>
					</td>
				</tr>
				<tr class="memberjoinPhone surveyWriteFour">
					<th>희망하는 운동 난이도를 선택해주세요.</th>
					<td>
						<label><input type="radio" name="level" id="level1" value="하 (차분한, 적당한 강도의)" required>하 (차분한, 적당한 강도의)</label>
						<label><input type="radio" name="level" id="level2" value="중 (자극 위주의)" required>중 (자극 위주의)</label>
						<label><input type="radio" name="level" id="level3" value="상 (숨가쁠 정도의, 강도가 높은)" required>상 (숨가쁠 정도의, 강도가 높은)</label>
					</td>
				</tr>			
				<tr class="memberjoinGender surveyWriteFive">
					<th>희망하는 운동 횟수를 선택해주세요.</th>
					<td>
						<label><input type="radio" name="momentum" id="momentum1" value="주 1회" required>주 1회</label>
						<label><input type="radio" name="momentum" id="momentum2" value="주 3~5회" required>주 3~5회</label>
						<label><input type="radio" name="momentum" id="momentum3" value="일주일 내내" required>일주일 내내</label>
					</td>
				</tr>
			</table>
			<div class="memberjoinBtn">
				<input type="submit" value="설문완료" id="surveyBtn">
			</div>
		</form>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>