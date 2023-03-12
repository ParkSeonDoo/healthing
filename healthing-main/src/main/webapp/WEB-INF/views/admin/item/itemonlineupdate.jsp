<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<h1>온라인이용권 수정</h1>
					</div>
					<h2>프로그램정보</h2>
					<form action="/itemonlinupdateProc" method="post" enctype="multipart/form-data">
						<table class="adminitemwrite">
							<tr>
								<th>유형</th>
								<td class="adminitemwit">
									<select name="icategory" ${up.icategory}>
										<option value="헬스" <c:if test ="${up.icategory eq '헬스'}">selected="selected"</c:if>>헬스</option>
										<option value="요가" <c:if test ="${up.icategory eq '요가'}">selected="selected"</c:if>>요가</option>
										<option value="필라테스" <c:if test ="${up.icategory eq '필라테스'}">selected="selected"</c:if>>필라테스</option>
									</select>
								</td>
								<th>목적</th>
								<td class="adminitemwit">
									<select name="ipurpose" ${up.ipurpose}>
										<option value="체형교정" <c:if test ="${up.ipurpose eq '체형교정'}">selected="selected"</c:if>>체형교정</option>
										<option value="다이어트" <c:if test ="${up.ipurpose eq '다이어트'}">selected="selected"</c:if>>다이어트</option>
										<option value="근력강화" <c:if test ="${up.ipurpose eq '근력강화'}">selected="selected"</c:if>>근력강화</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>타겟</th>
								<td>
									<select name="itarget" ${up.itarget}>
										<option value="저체중" <c:if test ="${up.itarget eq '저체중'}">selected="selected"</c:if>>저체중</option>
										<option value="표준" <c:if test ="${up.itarget eq '표준'}">selected="selected"</c:if>>표준</option>
										<option value="비만" <c:if test ="${up.itarget eq '비만'}">selected="selected"</c:if>>비만</option>
										<option value="고도비만" <c:if test ="${up.itarget eq '고도비만'}">selected="selected"</c:if>>고도비만</option>
									</select>
								</td>
								<th>난이도</th>
								<td>
									<select name="ilavel" ${up.ilavel}>
										<option value="초급" <c:if test ="${up.ilavel eq '초급'}">selected="selected"</c:if>>초급</option>
										<option value="중급" <c:if test ="${up.ilavel eq '중급'}">selected="selected"</c:if>>중급</option>
										<option value="고급" <c:if test ="${up.ilavel eq '고급'}">selected="selected"</c:if>>고급</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>도구</th>
								<td><input type="text" name="itool" value="${up.itool}"></td>
							</tr>
						</table>
						<h2>코치정보</h2>
						<table class="adminitemwrite">
							<tr>
								<th>코치이름</th>
								<td><input type="text" name="icoachname" value="${up.icoachname}"></td>
								<th>코치정보</th>
								<td><input type="text" name="icoachinfo" class="iteminfo" value="${up.icoachinfo}"></td>
							</tr>
							<tr>
								<th>기존코치프로필</th>
								<td>
									<img src="${up.icoachimg}">
									<input type="hidden" name="delcoachimg" value="${up.icoachimg}">
								</td>
								<th>코치프로필</th>
								<td><input type="file" name="icoachimg" accept="image/gif, image/jpeg, image/png, image/jpg"></td>
							</tr>
							<tr>
								<th>한줄요약</th>
								<td colspan="2"><input type="text" name="icoachsummary" class="itemaddr" value="${up.icoachsummary}"></td>
							</tr>
						</table>
						<h2>프로그램정보</h2>
						<table class="adminitemwrite">
							<tr>
								<th>기존썸네일</th>
								<td>
									<img src="${up.ithumbnail}">
									<input type="hidden" name="delthumbnail" value="${up.ithumbnail}">
								</td>
								<th>썸네일</th>
								<td><input type="file" name="ithumbnail" accept="image/gif, image/jpeg, image/png, image/jpg"></td>
							</tr>
							<tr>
								<th>주</th>
								<td>
									<select name="iweek" ${up.iweek}>
										<option value="1" <c:if test ="${up.iweek eq '1'}">selected="selected"</c:if>>1</option>
										<option value="2" <c:if test ="${up.iweek eq '2'}">selected="selected"</c:if>>2</option>
										<option value="3" <c:if test ="${up.iweek eq '3'}">selected="selected"</c:if>>3</option>
										<option value="4" <c:if test ="${up.iweek eq '4'}">selected="selected"</c:if>>4</option>
										<option value="5" <c:if test ="${up.iweek eq '5'}">selected="selected"</c:if>>5</option>
										<option value="6" <c:if test ="${up.iweek eq '6'}">selected="selected"</c:if>>6</option>
										<option value="7" <c:if test ="${up.iweek eq '7'}">selected="selected"</c:if>>7</option>
										<option value="8" <c:if test ="${up.iweek eq '8'}">selected="selected"</c:if>>8</option>
									</select>
									 주
								</td>
								<th>주횟수</th>
								<td>
									주
									<select name="iweekcount" ${up.iweekcount}>
										<option value="1" <c:if test ="${up.iweekcount eq '1'}">selected="selected"</c:if>>1</option>
										<option value="2" <c:if test ="${up.iweekcount eq '2'}">selected="selected"</c:if>>2</option>
										<option value="3" <c:if test ="${up.iweekcount eq '3'}">selected="selected"</c:if>>3</option>
										<option value="4" <c:if test ="${up.iweekcount eq '4'}">selected="selected"</c:if>>4</option>
										<option value="5" <c:if test ="${up.iweekcount eq '5'}">selected="selected"</c:if>>5</option>
										<option value="6" <c:if test ="${up.iweekcount eq '6'}">selected="selected"</c:if>>6</option>
										<option value="7" <c:if test ="${up.iweekcount eq '7'}">selected="selected"</c:if>>7</option>
									</select>
									회
								</td>
								<th>시간</th>
								<td>
									<select name="iweektime" ${up.iweektime}>
										<option value="10" <c:if test ="${up.iweekcount eq '10'}">selected="selected"</c:if>>10</option>
										<option value="20" <c:if test ="${up.iweekcount eq '20'}">selected="selected"</c:if>>20</option>
										<option value="30" <c:if test ="${up.iweekcount eq '30'}">selected="selected"</c:if>>30</option>
										<option value="40" <c:if test ="${up.iweekcount eq '40'}">selected="selected"</c:if>>40</option>
										<option value="50" <c:if test ="${up.iweekcount eq '50'}">selected="selected"</c:if>>50</option>
										<option value="60" <c:if test ="${up.iweekcount eq '60'}">selected="selected"</c:if>>60</option>
									</select>
									분
								</td>
							</tr>
							<tr>
								<th>금액</th>
								<td><input type="number" name="iprice" required value="${up.iprice}">원</td>
								<th>할인가</th>
								<td><input type="number" name="isale" required value="${up.isale}">%</td>
								<th>인원수</th>
								<td><input type="number" name="ipeople" required value="${up.ipeople}">명</td>
							</tr>
							<tr>
								<th>제목</th>
								<td colspan="3"><input type="text" name="ititle" class="itemaddr" value="${up.ititle}"></td>
							</tr>
							<tr>
								<th>목표</th>
								<td colspan="5" class="itemGoal">
									<textarea class="itemgoal" name="igoal" id="igoal" style="width: 100%;">${up.igoal}</textarea>
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="5" class="itemContents">
									<textarea class="itemcontents" name="icontents" id="icontents" style="width: 100%;">${up.icontents}</textarea>
								</td>
							</tr>
						</table>
						<div class="itemWriteBtn">
							<input type="submit" value="저장" id="saveonbutton">
							<input type="button" value="취소" onclick="location.href='/adminitemonlineview/${up.ino}'">
							<input type="button" value="글쓰기" onclick="location.href='/adminitemonlinewrite'">
							<input type="hidden" name="ino" value="${ino}"/>
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
    	$("#saveonbutton").on("click", function() {
			oEditors.getById["icontents"].exec("UPDATE_CONTENTS_FIELD", []);
			oEditors.getById["igoal"].exec("UPDATE_CONTENTS_FIELD", []);
		});
    </script>		
</body>
</html>