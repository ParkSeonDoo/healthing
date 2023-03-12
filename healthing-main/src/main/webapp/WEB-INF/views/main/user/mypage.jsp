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
<div class="partnerWrap">
	<div class="container">
		<div class="mypageTitle">
			<h3>라커룸</h3>
		</div>
		<div class="mypageProfileIcon">
			<i class="xi-user-o"></i>
			<p>프로필</p>
		</div>
		<div class="mypageFlex">
			<div class="mypageFlexLeft">
				<div class="mypageProfileDetail">
					<h4>프로필</h4>
					<a href="#" class="mypageMyProfile">
						<span class="mypageName">${member.uname}
						<c:choose>
							<c:when test="${member.ugender=='man'}">
								<img src="./image/taeyoungimage/ic_gender_male.svg">
							</c:when>
							<c:otherwise>
								<img src="./image/taeyoungimage/ic_gender_female.svg">
							</c:otherwise>
						</c:choose>
						</span>
						<span>${member.ubirth}</span>
						<span>${member.ucm}cm / ${member.ukg}kg</span>
						<span class="mypageImage"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
					</a>	
				</div>
				<div class="mypageProfileDetail">
					<h4>결제내역</h4>
					<table class="mypageTable">
						<tr class="mypageTableTitle">
							<th>결제아이템</th>
							<th>결제금액</th>
							<th>결제일</th>
							<th>남은일수</th>
						</tr>
						<tr>
							<td>다이어트는 요가와 함께</td>
							<td>20,000원</td>
							<td>2023.01.01</td>
							<td>
								<span class="boardEtc">5일</span>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="mypageFlexRight">
				<div class="mypageRightBasic">
					<h4>기본 지표</h4>
					<a href="#">
						<span class="mypageBasicTitle">성별</span>
						<span class="mypageRightImg"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
						<in class="mypageRightInfo"><strong>${member.ugender}</strong></span>
					</a>
					<a href="#">
						<span class="mypageBasicTitle">생년월일</span>
						<span class="mypageRightImg"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
						<span class="mypageRightInfo"><strong>${member.ubirth}</strong></span>
					</a>
					<a href="#">	
						<span class="mypageBasicTitle">키</span>
						<span class="mypageRightImg"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
						<span class="mypageRightInfo"><strong>${member.ucm}cm</strong></span>
					</a>
					<a href="#">
						<span class="mypageBasicTitle">몸무게</span>
						<span class="mypageRightImg"><img src="image/taeyoungimage/ic_chev_right.svg"></span>
						<span class="mypageRightInfo"><strong>${member.ukg}kg</strong></span>
					</a>
				</div>
				<div class="mypageItem">
					<h4>추천 아이템</h4>
					<div class="itemOnTomMiSu">
						<div class="itemOnTomDi">
							<a href="/itemonlineview">
								<div class="itemMy" style="background-image: url('/image/seondooimage/indexlogo.png')">
									<div class="itemLocal">온라인 이용권</div>
								</div>
								<div class="itemMym">
									<div class="itemMymCongal">
										<p class="itemCategory">홈 트레이닝, 맨몸운동</p>
										<p class="itemPeriod">5주 / 주2회 / 15분</p>
										<div>
											<strong>태권도 발차기로 키가 쑥쑥!</strong>
										</div>
									</div>
									<div class="itemConGal">
										<div class="itemCo">
											<img class="itemImg" src="/image/seondooimage/indexlogo.png">
											<p>김코치</p>
										</div>
										<div class="itemPrice">
											<del>
												<i>220,000</i>
												원
											</del>
											<b>57% off</b>
											<strong>
												<i>95,000</i>원
											</strong>
											<div class="itemMeta">
												<span>
													남은자리
													<i>58</i>
												</span>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="mypageHealthing">
					<h4>헬싱+</h4>
					<div class="itemOnViewProBottom itemViewProgram mypageProgram">
						<div class="itemOnViewProBottomimg">
							<img src="/image/seondooimage/viman.svg">
							<div class="itemOnViewProBottomKg">고도비만</div>
						</div>
						<h3 class="itemOnViewProfirst">🙋‍♀️🙋🏻‍♂️<b>고도비만</b>이 할 수 있는 프로그램입니다.</h3>
						<h3>
							<span>헬싱이 알려드려요!</span>
							<span>고도비만은?</span>
						</h3>
						<div class="itemOnViewYoga mypageYoga">
							<p>
								고도비만에 대해서 운동법 json방식으로 적기
							</p>
							<h3>
								<span>고도비만을 위한</span>
								<span>추천 식단!</span>
							</h3>
							<p>
								고도비만에 대해서 좋은 식단 json방식으로 적기
								<b>앞에 아이콘 뒤에 식단명</b>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>