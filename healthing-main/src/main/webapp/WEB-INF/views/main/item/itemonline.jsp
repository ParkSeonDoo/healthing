<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>온라인 이용권</title>
	<%@ include file="../include/head.jsp" %>
</head>
<body>
	<!-- header include -->
	<%@ include file="../include/header.jsp" %>
	<!-- header include End -->
	<div class="itemOnlin">
		<div class="itemOnTop">
			<div class="container">
				<div class="itemOnTopF">
					<div class="itemOnTopLeft">
						<h1>헬싱</h1>
						<h1 class="itemOnTopLeftH">온라인강좌이용권</h1>
						<div>
							<p>유∙청소년의 여가활동을 지원하고</p>
							<p>건전한 삶을 응원합니다.</p>
						</div>
					</div>
					<div class="itemOnTopRight">
						<img src="/image/seondooimage/illust_sona.svg">
					</div>
				</div>
			</div>
		</div>
		<div class="itemOnTopS">
			<div class="itemOnTopcon">
				<div class="itemOnTopdip">새로운 강좌 + 새로운 이벤트 = 온라인강좌 시즌2</div>
				<img class="itemOnTopImg" src="/image/seondooimage/img_renewal.svg">
			</div>
		</div>
		<div class="itemOnTom">
			<div class="container">
				<div class="itemOnTomTp">
					<a class="itemOnTomTpLe" href="/itemonline">온라인 이용권</a>
					<a class="itemOnTomTpRi" href="/itemoffline">오프라인 이용권</a>
				</div>
				<div class="itemOnTomMi">
					<div class="itemOnTomMip">
						<!-- for문 시작점 -->
						<c:forEach var="list" items="${list}" varStatus="status" >
						<div class="itemOnTomMiSu">
							<div class="itemOnTomDi">
								<a href="/itemonlineview/${list.ino}">
									<div class="itemMy" style="background-image: url('${list.ithumbnail}')">
										<div class="itemLocal">온라인 이용권</div>
									</div>
									<div class="itemMym">
										<div class="itemMymCongal">
											<p class="itemCategory">${list.icategory}</p>
											<p class="itemPeriod">주${list.iweek} / 주${list.iweekcount}회 / ${list.iweektime}분</p>
											<div>
												<strong>${list.ititle}</strong>
											</div>
										</div>
										<div class="itemConGal">
											<div class="itemCo">
												<img class="itemImg" src="${list.icoachimg}">
												<p>${list.icoachname}</p>
											</div>
											<div class="itemPrice">
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
					<h4>온라인 이용권 이용안내</h4>
					<ul>
						<li>헬싱 온라인 이용권 프로그램은 국민체육진흥공단의 온라인 이용권(바우처)으로만 신청할 수 있습니다.</li>
						<li>먼저 온라인 이용권 사이트에서 헬싱 운동 프로그램을 수강 신청하세요.</li>
						<li>온라인 이용권 홈페이지에서 헬싱 프로그램 수강신청을 하면, 헬싱에서 알림톡으로 이용 안내드립니다.</li>
						<li>평일 신청 건의 경우 2~3일 이내에 이용 가능하며, 주말과 공휴일에는 등록 되지 않습니다. 이 경우 그 다음 주 월요일 일괄 등록됩니다.</li>
						<li>온라인 이용권 사이트에서 신청을 한 운동 프로그램만 결제할 수 있으며 다른 프로그램을 신청할 경우 취소될 수 있습니다.</li>
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