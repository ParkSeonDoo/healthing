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
	<!-- header include -->
	<%@ include file="../include/header.jsp" %>
	<!-- header include End -->
	<div class="paymentWarp">
		<h3 class="paymentHead">프로그램 신청하기</h3>
		<div class="paymentMain">
			<div class="paymentLeft">
				<div class="paymentCoach">
					<div class="paymentTitle">
						<span>전담코치</span>
					</div>
					<div class="paymemtCoachImg">
						<img src="/image/seondooimage/yogamain.jpg">
						<div class="paymentSub">
							<p><b>김관장님</b> 코치가</p>
							<p>오늘부터 <b>박선두</b>님의</p>
							<p>전담 코치가 됩니다.</p>
						</div>
					</div>
					<div class="paymemtProgram">
						<div class="paymentTitle">
							<span>신청 프로그램</span>
						</div>
						<div class="paymentProSubMain">
							<div>
								<span class="paymentProTitle">코치</span>
								<span class="paymentProSub">김관장님</span>
							</div>
							<div>
								<span class="paymentProTitle">프로그램</span>
								<span class="paymentProSub"><strong>이 쭉! 키 커지고 살 빠지는 요가</strong></span>
							</div>
							<div>
								<span class="paymentProTitle">온라인</span>
								<span class="paymentProSub"><b>5주 / 주 2회 / 회당 15분</b></span>
							</div>
						</div>
					</div>
					<div class="paymentAddress">
						<div class="paymentTitle">
							<span>배송 정보</span>
						</div>
						<div class="paymentAddGift">
							<span>함께 배송 받을 선물이 있어요. 배송 정보를 입력해 주세요.</span>
						</div>
						<div class="paymentAddInput">
							<p>받는사람</p>
							<input type="text">
						</div>
						<div class="paymentAddInput">
							<p>받는 사람 휴대폰전화번호</p>
							<input type="text">
						</div>
						<div class="paymentAddInput">
							<p>주소</p>
							<div class="paymentAddInputSub">
								<input type="text" placeholder="우편번호 찾기로 주소를 입력하세요">
								<div class="paymentAddAppend">
									<button>우편번호 찾기</button>
								</div>
							</div>
							<input type="text" placeholder="상세 주소를 입력하세요">
						</div>
					</div>
				</div>
			</div>
			<div class="paymentRight">
				<div class="paymentInfo">
					<div class="paymentTitle">
						<span>결제 정보</span>
					</div>
					<div>
						<p class="paymentInfoTit">이름</p>
						<p class="paymentInfoSub">김하서</p>
						<p class="paymentInfoTit">휴대폰전화번호</p>
						<p class="paymentInfoSub">010111122222</p>
					</div>
					<div class="paymentAmount">
						<p>결제금액</p>
						<div>
							<span>95,000</span>
							원
						</div>
					</div>
					<div class="paymentPromo">
						<div class="paymentPromoBox">
							<h6>주의사항</h6>
							<ul>
								<li>이용권 결제 후 기간 만료 시 재사용 어려운 점 참고 부탁드립니다.</li>
								<li>이용권 경우 헬싱 및 코치 사정에 따라 변경될 수 있는 점 참고 부탁드립니다.</li>
								<li>이용권 결제 후 운동 시 준비운동은 필수입니다.</li>
							</ul>
						</div>
					</div>
					<div class="paymentNote">
						<div class="paymentInner">
							<div>
								<p class="paymentInnerHe">알아두세요</p>
								<p class="paymentInnersub">환불규정</p>
							</div>
							<div>
								<p class="paymentInnerHe">환불 개요</p>
								<ol>
									<li>
										본 상품은 전문가가 구매 회원의 의뢰 내용을 검토하며, 구매 회원에게 용역을 제공하는 맞춤형 상품으로서, 원칙적으로 나누기 어려운 성격의 용역 상품입니다.
									</li>
									<li>
										상품 구매 후 양 당사자가 합의한 상담 시간에 첫 상담을 개시하는 등 용역의 제공을 개시하기 전까지는 구매 회원의 청약 철회 및 그에 따른 전액 환불이 가능합니다.
									</li>
									<li>
										전문가가 구매 회원의 주문 의뢰 내용을 검토한 후 양 당사자가 합의한 상담 시간에 상담을 개시하는 등 용역의 제공을 개시한 이후에는 전자상거래 등에서의 소비자보호에 관한 법률 제17조 제2항 제5호 및 제6호에 의해 원칙적으로 구매자의 청약 철회가 제한됩니다.
									</li>
									<li>
										다만, 용역의 제공이 개시된 이후에도 용역의 제공 초기 단계에서는 예외적으로 상담 경과 시간에 따라 구매 회원 단순 변심 사유로 인한 계약의 부분 해지 및 이에 따른 부분 환불이 가능한 경우가 있습니다. 이에 관한 상세한 기준은 하단에 별도 기재한 내용을 참고하시기 바랍니다.
									</li>
									<li>
										전문가의 상담이 완료된 이후에는 원칙적으로 청약 철회 또는 해지가 불가 합니다.
									</li>
								</ol>
								<p class="paymentInnerHe">예외적 청약 철회 규정</p>
								<ol>
									<li>
										환불 기본 규정에서 정한 청약 철회 제한 시점 이후에도 용역의 내용이 표시ㆍ광고의 내용과 다르거나 계약 내용과 다르게 이행된 경우에는 전자상거래 등에서의 소비자보호에 관한 법률 제17조 제3항에 따라 그 용역을 공급 받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약 철회를 할 수 있습니다.
									</li>
									<li>
										그 외에도 전문가의 귀책사유로 인해 용역 제공을 완료하지 못한 경우에 있어서는 청약 철회 또는 계약 전체의 해지가 가능하며, 이 경우 전액 환불함을 원칙으로 합니다.
									</li>
								</ol>
								<p class="paymentInnerHe">계약의 부분 해지 시 환불 규정</p>
								<ol>
									<li>전문가가 용역의 제공을 개시한 이후 초기 단계에서의 구매 회원의 단순 변심에 의한 계약의 부분 해지 및 이에 따른 부분 환불은 하단의 기준에 따라 가능합니다.</li>
									<li>전문가는 계약의 부분 해지 시 하단의 기준에 따라 산정된 금액을 환불 합니다.</li>
									<li>전체 이용 기간 중 사용일의 30% 이하인 경우 결제 금액의 70%.</li>
									<li>전체 이용 기간 중 사용일의 30% 초과~50% 이하인 경우 결제 금액의 50%.</li>
									<li>전체 이용 기간 중 사용일의 50% 초과한 경우 부분 해지 불가.</li>
								</ol>
								<p class="paymentInnerHe">전문가와 구매 회원의 합의에 따른 환불 규정</p>
								<ol><li>그 외 사유로 전문가와 구매 회원 간 합의에 따라 계약의 전부 또는 부분 해지를 하는 경우 합의에 따른 금액이 환불 됩니다.</li></ol>
								<p class="paymentInnerHe">환불 규정 유의 사항</p>
								<ol>
									<li>본 상품은 전문가가 구매 회원의 주문 의뢰 내용을 전반적으로 검토한 후 산출물을 작성하여 구매 회원에게 제공하는 맞춤형 용역 상품으로서, 원칙적으로 나누기 어려운 성격의 상품입니다.</li>
									<li>전문가가 구매 회원의 주문 의뢰 내용에 따라 용역의 제공을 개시한 이후에는 전자상거래법 제17조 제2항 제5호에 따라 원칙적으로 청약 철회가 제한됩니다.</li>
									<li>본 상품은 구매 회원의 주문 의뢰에 따라 개별적으로 생산되는 용역 상품으로서, 전자상거래법 제13조 제2항 제5호에 따른 청약 철회 등을 인정하는 경우 다른 구매 회원에게 산출물(상담 시간)을 판매할 수 없다는 점 등 전문가에게 회복할 수 없는 중대한 피해가 예상되는 경우에 해당하여 전문가가 구매 회원의 주문 의뢰 내용에 따라 용역의 제공을 개시한 이후에는 전자상거래법 제17조 제2항 제6호에 따라 원칙적으로 청약 철회가 제한됩니다.</li>
								</ol>
							</div>
						</div>			
					</div>
					<div class="paymentAmount">
						<p>결제방식</p>
						<div>
							<label><input type="radio" value="신용카드" name="paystaus">신용카드</label>
							<label><input type="radio" value="무통장입금" name="paystaus">무통장입금</label>
						</div>
					</div>
					<button type="submit">결제하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
</body>
</html>