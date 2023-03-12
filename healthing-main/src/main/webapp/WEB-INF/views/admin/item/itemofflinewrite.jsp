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
				<div class="itemWriteDetail">
					<div class="adminitemTopTitle">
						<h1>오프라인이용권 등록</h1>
					</div>
					<h2>프로그램정보</h2>
					<form action="/itemofflineinsert" method="post" enctype="multipart/form-data">
						<table class="adminitemwrite">
							<tr>
								<th>유형</th>
								<td class="adminitemwit">
									<select name="icategory">
										<option value="헬스">헬스</option>
										<option value="요가">요가</option>
										<option value="필라테스">필라테스</option>
										<option value="태권도">태권도</option>
										<option value="수영">수영</option>
										<option value="MMA">MMA</option>
									</select>
								</td>
								<th>목적</th>
								<td class="adminitemwit">
									<select name="ipurpose">
										<option value="체형교정">체형교정</option>
										<option value="다이어트">다이어트</option>
										<option value="근력강화">근력강화</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>타겟</th>
								<td>
									<select name="itarget">
										<option value="저체중">저체중</option>
										<option value="표준">표준</option>
										<option value="비만">비만</option>
										<option value="고도비만">고도비만</option>
									</select>
								</td>
								<th>난이도</th>
								<td>
									<select name="ilavel">
										<option value="초급">초급</option>
										<option value="중급">중급</option>
										<option value="고급">고급</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td><input type="text" class="itemIntile" name="iphone" required pattern="^[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}+$" placeholder="-를 포함하여 입력해주세요."></td>
								<th>지역</th>
								<td>
									<select name="ilocal">
										<option value="서울">서울</option>
										<option value="인천">인천</option>
										<option value="경기">경기</option>
										<option value="대전">대전</option>
										<option value="대구">대구</option>
										<option value="부산">부산</option>
										<option value="울산">울산</option>
										<option value="전북">전북</option>
										<option value="전남">전남</option>
										<option value="제주">제주</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>도구</th>
								<td><input type="text" name="itool" value="-"></td>
							</tr>
							<tr>
								<th>주소</th>
								<td><input type="text" class="itemaddr" name="iaddr"></td>
							</tr>
						</table>
						<h2>코치정보</h2>
						<table class="adminitemwrite">
							<tr>
								<th>코치이름</th>
								<td><input type="text" name="icoachname"></td>
								<th>코치정보</th>
								<td><input type="text" name="icoachinfo" class="iteminfo"></td>
							</tr>
							<tr>
								<th>코치프로필</th>
								<td><input type="file" name="icoachimg" accept="image/gif, image/jpeg, image/png, image/jpg"></td>
							</tr>
							<tr>
								<th>한줄요약</th>
								<td colspan="2"><input type="text" name="icoachsummary" class="itemaddr"></td>
							</tr>
						</table>
						<h2>프로그램정보</h2>
						<table class="adminitemwrite">
							<tr>
								<th>썸네일</th>
								<td><input type="file" name="ithumbnail" accept="image/gif, image/jpeg, image/png, image/jpg"></td>
							</tr>
							<tr>
								<th>횟수</th>
								<td>
									<select name="iweekcount">
										<option value="1">1</option>
										<option value="5">5</option>
										<option value="10">10</option>
										<option value="15">15</option>
										<option value="20">20</option>
										<option value="25">25</option>
										<option value="30">30</option>
									</select>
									회
								</td>
								<th>개월</th>
								<td>
									<select name="iweek">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
									</select>
									 개월
								</td>
							</tr>
							<tr>
								<th>금액</th>
								<td><input type="number" name="iprice" required></td>
								<th>할인가</th>
								<td><input type="number" name="isale" required>%</td>
								<th>인원수</th>
								<td><input type="number" name="ipeople" required></td>
							</tr>
							<tr>
								<th>제목</th>
								<td colspan="3"><input type="text" name="ititle" class="itemaddr"></td>
							</tr>
							<tr>
								<th>목표</th>
								<td colspan="5" class="itemGoal">
									<textarea class="itemgoal" name="igoal" id="igoal" style="width: 100%;"></textarea>
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="5" class="itemContents">
									<textarea class="itemcontents" name="icontents" id="icontents" style="width: 100%;"></textarea>
								</td>
							</tr>
						</table>
						<div class="itemWriteBtn">
							<input type="submit" value="저장" id="savebutton">
							<input type="button" value="취소" onclick="location.href='/adminitemoffline'">
						</div>
					</form>	
				</div>
			</div>
		</div>	
	</div>	
	<script>
    	var oEditors = [];
    	nhn.husky.EZCreator.createInIFrame({
    		oAppRef : oEditors,
    		elPlaceHolder : "igoal",
    		sSkinURI : "/smarteditor2/SmartEditor2Skin.html",
    		fCreator : "createSEditor2",
    		htParams : { 
    	    	// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
    	        bUseToolbar : true, 
	    		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
	    		bUseVerticalResizer : false, 
	    		// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
	    		bUseModeChanger : false,
	    		fOnBeforeUnload : function(){}
	    	    }
    	});

    	nhn.husky.EZCreator.createInIFrame({
    		oAppRef : oEditors,
    		elPlaceHolder : "icontents",
    		sSkinURI : "/smarteditor2/SmartEditor2Skin.html",
    		fCreator : "createSEditor2",
    		htParams : { 
    	    	// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
    	        bUseToolbar : true, 
	    		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
	    		bUseVerticalResizer : false, 
	    		// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
	    		bUseModeChanger : false,
	    		fOnBeforeUnload : function(){}
	    	    }
    	});
    	$("#savebutton").on("click", function() {
			oEditors.getById["icontents"].exec("UPDATE_CONTENTS_FIELD", []);
			oEditors.getById["igoal"].exec("UPDATE_CONTENTS_FIELD", []);
		});
    </script>		
</body>
</html>