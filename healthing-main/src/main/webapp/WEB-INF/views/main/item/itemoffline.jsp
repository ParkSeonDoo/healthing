<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오프라인 이용권</title>
	<%@ include file="../include/head.jsp" %>
</head>
<body>
	<!-- header include -->
	<%@ include file="../include/header.jsp" %>
	<!-- header include End -->
	<div class="itemOfflin">
		<div class="itemOffTop">
			<div class="container">
				<div class="itemOffTopF">
					<div class="itemOffTopLeft">
						<h1>헬싱</h1>
						<h1 class="itemOffTopLeftH">오프라인강좌이용권</h1>
						<div>
							<p>장소를 떠나 더 간강한 삶</p>
							<p>희망찬 변화를 응원합니다.</p>
						</div>
					</div>
					<div class="itemOffTopRight">
						<img src="/image/seondooimage/illusthugging.svg">
					</div>
				</div>
			</div>
		</div>
		<div class="itemOffTopS">
			<div class="itemOffTopcon">
				<div class="itemoffTopdip">헬싱과 함께하는 건강 챙기기 프로젝트</div>
				<img class="itemoffTopImg" src="/image/seondooimage/renewalopen.svg">
			</div>
		</div>
		<div class="itemOffTom">
			<div class="container">
				<div class="itemOffTomTp">
					<a class="itemOffTomTpLe" href="/itemonline">온라인 이용권</a>
					<a class="itemOffTomTpRi" href="/itemoffline">오프라인 이용권</a>
				</div>
				<div class="itemoffarea">
					<div class="itemoffAreaTitle">
						<h2>지역별 보기</h2>
					</div>
					<div class="itemoffAreaSelect">
						<div class="itemSelectRow">
							<a href="#">서울</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">인천</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">경기</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">대전</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">대구</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">부산</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">울산</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">전북</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">전남</a>
						</div>
						<div class="itemSelectRow">
							<a href="#">제주</a>
						</div>
					</div>
				</div>
				<div class="itemOffTomMi">
					<div class="itemOffTomMip">
						<!-- for문 시작점 -->
						<c:forEach var="list" items="${list}" varStatus="status" >
						<div class="itemOffTomMiSu">
							<div class="itemOffTomDi">
								<a href="/itemofflineview/${list.ino}">
									<div class="itemoffMy" style="background-image: url('${list.ithumbnail}')">
										<div class="itemLocal">${list.ilocal}</div>
									</div>
									<div class="itemoffMym">
										<p class="itemoffCategory">${list.icategory}</p>
										<p class="itemPeriod">${list.iweekcount}회 / ${list.iweek}개월</p>
										<p class="itemoffPeriod">${list.iaddr}</p>
										<div class="itemoffStr">
											<strong>${list.ititle}</strong>
										</div>
										<div class="itemoffSelt">
											<div class="itemoffCo">
												<img class="itemoffImg" src="${list.icoachimg}">
												<p>${list.icoachname}</p>
											</div>
											<div class="itemoffPrice">
												<del>
													<i><fmt:formatNumber type="number" value="${list.iprice}"/></i>
													원
												</del>
												<b>${list.isale}% off</b>
												<strong>
													<i>
														<c:set var="price" value="${list.iprice-((list.isale/100)*list.iprice)}"/>
														<fmt:formatNumber type="number" value="${price+(1-(price%1))%1}"/>
													</i>원
												</strong>
												<div class="itemoffMeta">
													<span>
														남은자리
														<i>${list.ipeople}</i>
													</span>
												</div>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
						</c:forEach>
						<!-- for문 끝나는점 -->
					</div>
				</div>
				<div class="itemPrecaut">
					<h4>오프라인 이용권 이용안내</h4>
					<ul>
						<li>헬싱 오프라인 이용권 프로그램은 국민체육진흥공단의 온라인 이용권(바우처)으로만 신청할 수 있습니다.</li>
						<li>먼저 오프라인 이용권 사이트에서 헬싱 운동 프로그램을 수강 신청하세요.</li>
						<li>오프라인 이용권 홈페이지에서 헬싱 프로그램 수강신청을 하면, 헬싱에서 알림톡으로 이용 안내드립니다.</li>
						<li>평일 신청 건의 경우 2~3일 이내에 이용 가능하며, 주말과 공휴일에는 등록 되지 않습니다. 이 경우 그 다음 주 월요일 일괄 등록됩니다.</li>
						<li>오프라인 이용권 사이트에서 신청을 한 운동 프로그램만 결제할 수 있으며 다른 프로그램을 신청할 경우 취소될 수 있습니다.</li>
						<li>오프라인 이용권 사이트에서 헬 프로그램 수강 신청을 했으나, 쿠폰 코드 메시지를 받지 못한 경우 헬싱 고객센터로 연락 부탁드립니다.</li>
						<li>헬싱 고객센터 운영 시간 : 평일 09:00 ~ 18:00 (점심시간 13:00 ~ 14:00)</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>