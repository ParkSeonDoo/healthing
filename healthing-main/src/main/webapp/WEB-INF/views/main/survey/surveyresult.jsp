<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="../include/head.jsp" %>
</head>
<body>
<c:set var="scm" value="${result.scm*0.01}"/>
<c:set var="status" value="${result.skg/(scm*scm)}"/>
	<!-- header include -->
	<%@ include file="../include/header.jsp" %>
	<!-- header include End -->
	<div class="surveyAllView">
		<div class="container">
			<div class="surveyAllContens">
				<div class="surveyAllMain">
					<div class="itemViewProgram resultTitle">
						<h4>진단 결과</h4>
						<div class="resultTitleDetail">
							<p>당신은</p>
							<p><strong>고도비만</strong>입니다.</p>
						</div>
						<div class="surveyMent">
							<p>평균적으로 <strong>${result.ssleep}</strong> 수면하시고, 평소 식사는 <strong>${result.smeal}</strong>이시고,</p>
							<p>평소 수면의 상태는 <strong>${result.squality}</strong>이시고,</br>운동은 <strong>${result.slevel}</strong>을 선호하시고,</p>
							<p><strong>${result.scount}</strong> 운동 하고 싶으신걸로 확인됐어요!</p>
						</div>
					</div>
					<div class="itemViewProgram surveyAllTitle resultSubTitle">
						<h4>프로그램 안내</h4>
						<div class="surveyAllList">
							<div class="mypageHealthing">
								<div class="itemOnViewProBottom itemViewProgram mypageProgram">
									<div class="itemOnViewProBottomimg">
										<img src="/image/seondooimage/viman.svg">
										<div class="itemOnViewProBottomKg">${bmiSet.bmiResult}</div>
									</div>
									<h3 class="itemOnViewProfirst">🙋‍♀️🙋🏻‍♂️<b>${bmiSet.bmiResult}</b>이 할 수 있는 프로그램입니다.</h3>
									<h3>
										<span>헬싱이 알려드려요!</span>
										<span>
											<b>${bmiSet.bmiResult}</b>은?
										</span>
									</h3>
									<div class="itemOnViewYoga mypageYoga">
										<p>
											${bmiSet.health}
										</p>
										<h3>
											<span>
												<b>${bmiSet.bmiResult}</b>을 위한
											</span>
											<span>추천 식단!</span>
										</h3>
										<p>
											${bmiSet.food}
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="surveyAllSide">
					<div class="surveyAllSidebar">
						<div class="surveyAllSideBox">
							<p>
								<span class="itemViewSiedTag"><i class="xi-box"></i> 분류</span>
								<span class="itemViewSidepic">
									${bmiSet.bmiResult}
								</span>
							</p>
							<p>
								<span class="itemViewSiedTag"><i class="xi-my-location"></i> BMI 지수</span>
								<span class="itemViewSidepic"><fmt:formatNumber type="number" pattern="0.0" value="${status}"/></span>
							</p>
						</div>
						<div class="surveyAllSideBox">
							<div class="surveyAlldiv">진단 설문 후 프로그램이 추천됩니다.</div>
							<a href="surveywrite">
								<img src="/image/taeyoungimage/ic_survey.svg">
								진단 설문 다시하기
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="itemQnA">
				<div class="container">
					<div class="itemQnATitle">
						<h4>자주 묻는 질문</h4>
						<ul>
							<li>
								<b>Q.</b>
								온&오프 이용권은 프로그램을 어떻게 구매할 수 있나요?
								<i class="xi-plus"></i>
							</li>
							<li>
								<b>Q.</b>
								운동 프로그램을 구매했어요. 운동을 시작하려면 어떻게 해야 하나요?
								<i class="xi-plus"></i>
							</li>
							<li>
								<b>Q.</b>
								결제한 운동 프로그램을 환불할 수 있나요?
								<i class="xi-plus"></i>
							</li>
							<li>
								<b>Q.</b>
								고객센터 운영 시간이 궁금해요.
								<i class="xi-plus"></i>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>