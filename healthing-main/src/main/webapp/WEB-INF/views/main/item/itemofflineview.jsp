<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div class="itemofflinView">
		<section class="itemOffViewOne">
			<div class="container">
				<div class="itemOffViewContens">
					<div class="itemOffViewMain">
						<div class="itemOffVTopimg">
							<img src="${view.ithumbnail}">
							<div class="itemLocal">${view.ilocal}</div>
							<input type="hidden" value="${view.ino}" name="ino">
						</div>
						<div class="itemOffViewProgram">
							<div class="itemOffViewProTop itemViewProgram">
								<h4>프로그램 정보</h4>
								<div class="itemOffViewPcatgory">${view.icategory}</div>
								<div class="itemOffViewPtitle">${view.ititle}</div>
								<div class="itemOffViewPSub">${view.iweekcount}회 / ${view.iweek}개월</div>
								<div class="itemOffViewPInfor">
									<div class="itemOffViewCoach">
										<img src="${view.icoachimg}">
										<div class="itemOffViewCoInfo">
											<p class="itemOffViewCo">${view.icoachname}</p>
											<p>${view.icoachinfo}</p>
										</div>
									</div>
									<div class="itemOffViewSummary">
										<div class="itemOffViewSubTitle">
											<p><b>${view.ilavel}자</b>분들을 위한</p>
											<p><b>${view.icategory}</b> 프로그램입니다.</p>
											<p><b>${view.itarget}</b> 을/를 목적으로</p>
										</div>
										<div class="itemOffViewSubinfor">
											<p><b>${view.icoachname}</b> 코치는<span> ${view.icoachinfo}</span>이 장점이에요.</p>
											<p><span>${view.icoachsummary}</span> 할 수 있어요.</p>
										</div>
									</div>
								</div>
							</div>
							<div class="itemOffViewProMidle itemViewProgram">
								<h4>중요 안내</h4>
								<div>
									<b>모든 1:1 상담은 헬싱에서 진행됩니다.</b>
									<p>헬싱플러스에서 진단 설문에 답하세요. 현재 상태 진단 후 맞춤 커리큘럼이 제공됩니다.</p>
									<p>운동 및 식단 관련 부분 설정한 운동 일정과 상관없이 언제든 다시 볼 수 있습니다.</p>
								</div>
								<h6>오늘 구매하면</h6>
								<ul>
									<li>헬싱플러스에서 진단 설문에 답해 주세요.</li>
									<li>코치의 맞춤 커리큘럼이 확정된 후 운동을 시작할 수 있습니다.</li>
									<li><b>코칭기간</b>은 설정된 운동 일정 시작일 부터, 운동 일정 종료일 + 1주일입니다.</li>
								</ul>
							</div>
							<div class="itemOffViewProBottom itemViewProgram">
								<h4>프로그램 정보</h4>
								<p>${view.ilavel}</p>
								<div class="itemOffViewProBottomimg">
									<img src="/image/seondooimage/viman.svg">
									<div class="itemOnViewProBottomKg">${view.itarget}</div>
								</div>
								<h3 class="itemOffViewProfirst">🙋‍♀️🙋🏻‍♂️<b>${view.itarget}</b>을 위한 프로그램입니다.</h3>
								<h3 class="itemOffViewPr3">
									<span>헬싱이 알려드려요!</span>
									<span>${view.itarget}?</span>
								</h3>
								<div class="itemOffViewYoga">
									<span>
										${view.itarget}에 대해서 운동법 json방식으로 적기
									</span>
									<h3 class="itemOffViewPr3">
										<span>고도비만을 위한</span>
										<span>추천 식단!</span>
									</h3>
									<span>
										${view.itarget}에 대해서 좋은 식단 json방식으로 적기
										<b>앞에 아이콘 뒤에 식단명</b>
									</span>
								</div>
							</div>
							<div class="itemViewProgram itemOffViewGoal">
								<h4>목표</h4>
								<p class="itemOffViewGoalP">${view.ipurpose}</p>
								<div>${view.igoal}</div>
							</div>
							<div class="itemViewProgram itemOffviewProg">
								<h4>프로그램</h4>
								<h3 class="itemOffviewProgTitle">${view.ititle}</h3>
								<div class="itemOffviewProgInfo">${view.icontents}</div>
							</div>
							<div class="itemviewboard">
								<h3>
									<span>오프라인이용권에 대해</span>
									<span>무엇이든 물어보세요!</span>
								</h3>
								<p>궁금한게 있으신가요? 게시판을 통해 편하게 상담하실 수 있어요.</p>
								<a href="/boardlist">
									<img src="/image/seondooimage/illust_sona.svg">
									<span>게시판 바로가기</span>
								</a>
							</div>
						</div>
					</div>
					<div class="itemViewSide">
						<div class="itemViewSidebar">
							<div class="itemViewSidebox">
								<div class="itemViewSiedPrice">
									<b>할인가</b>
									<div class="itemViewMarg">
										<p class="itemViewSideSale">${view.isale}%</p>
										<div class="itemViewPrice">
											<c:set var="price" value="${view.iprice-((view.isale/100)*view.iprice)}"/>
											<span><fmt:formatNumber type="number" value="${price+(1-(price%1))%1}"/></span>원
										</div>
										<del><fmt:formatNumber type="number" value="${view.iprice}"/>원</del>
									</div>
									<p class="itemViewremaining">
										남은자리 
										<span>${view.ipeople}</span>
									</p>
									<div class="itemviewLocal">오프라인 이용권</div>
									<div>
										<a href="/payment">오프라인이용권 결제하기</a>
									</div>
									<div class="itemviewPriceText">
										<img src="/image/seondooimage/illust_sona.svg">
										<span>헬싱과 함께 하세요!</span>
									</div>
								</div>
							</div>
							<div class="itemViewSiedSpec">
								<p>
									<span class="itemViewSiedTag"><i class="xi-box"></i> 유형</span>
									<span class="itemViewSidepic">${view.icategory}</span>
								</p>
								<p>
									<span class="itemViewSiedTag"><i class="xi-my-location"></i> 목적</span>
									<span class="itemViewSidepic">${view.ipurpose}</span>
								</p>
								<p>
									<span class="itemViewSiedTag"><i class="xi-focus-center"></i> 타겟</span>
									<span class="itemViewSidepic">${view.itarget}</span>
								</p>
								<p>
									<span class="itemViewSiedTag"><i class="xi-sort-desc"></i> 난이도</span>
									<span class="itemViewSidepic">${view.ilavel}</span>
								</p>
								<p>
									<span class="itemViewSiedTag"><i class="xi-fitness-center"></i> 도구</span>
									<span class="itemViewSidepic">${view.itool}</span>
								</p>
								<p>
									<span class="itemViewSiedTag"><i class="xi-call"></i> 연락처</span>
									<span class="itemViewSidepic">${view.iphone}</span>
								</p>
								<p>
									<span class="itemViewSiedTag"><i class="xi-home"></i> 위치</span>
									<span class="itemViewSidepic">${view.iaddr}</span>
								</p>
							</div>
							<a href="#" class="itemViewCoach">
								<img src="${view.icoachimg}">
								<span>헬싱 코치</span>
								<b>${view.icoachname}</b>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="itemQnA">
			<div class="container">
				<div class="itemQnATitle">
					<h4>자주 묻는 질문</h4>
					<ul>
						<li>
							<b>Q.</b>
							오프라인이용권 운동 프로그램을 어떻게 구매할 수 있나요?
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
		</section>
		<section class="itemRefund">
			<div class="container">
				<h4>환불정책</h4>
				<div class="itemRefundsub">
					<p>결제 후 커리큘럼을 제공 받는 등 강사의 용역 제공을 개시하기 전의 경우에만 환불이 가능합니다.</p>
					<p>취소 신청은 홈페이지 MY PAGE 결제 내역에서 직접 진행해 주시기 바랍니다. </p>
					<p>단, 전월에 결제한 이용권에 대해서는 취소가 불가능합니다.</p>
				</div>
				<a href="#">환불규정 자세히 보기<i class="xi-share"></i></a>
			</div>
		</section>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>