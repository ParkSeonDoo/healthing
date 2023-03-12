<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>파트너신청 수정</title>
	<%@ include file="../include/head.jsp" %>
</head>
<body>
	<!-- header include -->
	<%@ include file="../include/header.jsp" %>
	<!-- header include End -->
	<div class="boardWrite">
		<div class="container">
			<div class="boardWriteDetail">
				<div class="loginLogo">
					<img src="/image/taeyoungimage/logo.png">
				</div>
				<div class="loginMent memberjoinMent">
					<h2>오늘부터,</h2>
					<h2>함께 헬싱!</h2>
				</div>
				<div class="memberjoinTitle">
					<h3>파트너신청 수정</h3>
				</div>
				<form action="/partnerupdateProc" method="post" enctype="multipart/form-data">
					<table class="memberjoinTable">
						<tr>
							<th>카테고리</th>
							<td>
								<select name="bcategory" ${up.bcategory}>
									<option value="온라인" <c:if test ="${up.bcategory eq '온라인'}">selected="selected"</c:if>>온라인</option>
									<option value="오프라인" <c:if test ="${up.bcategory eq '오프라인'}">selected="selected"</c:if>>오프라인</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>${up.bwriter}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" class="boardIntile" name="btitle" value="${up.btitle}"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<textarea class="boardTextarea" name="bcontents" id="bcontents" style="width: 100%;">${up.bcontents}</textarea>
							</td>
						</tr>
						<tr>
							<th>기존파일</th>
							<td class="boardViewsub">
								<img src="${up.bfile}">
								<input type="hidden" name="boarqdimg" value="${up.bfile}">
							</td>
						</tr>
						<tr>
							<th>파일선택</th>
							<td><input type="file" multiple name="bfile" accept="image/gif, image/jpeg, image/png, image/jpg"></td>
						</tr>
					</table>
					<div class="boardWriteBtn">
						<input type="submit" value="저장" id="savebutton">
						<input type="button" value="취소" onclick="location.href='/boardpartnerview/${up.bno}'">
						<input type="button" value="글쓰기" onclick="location.href='/boardpartnerwrite'">
						<input type="hidden" name="bno" value="${bno}"/>
					</div>	
				</form>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
	<script>
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "bcontents",
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
			oEditors.getById["bcontents"].exec("UPDATE_CONTENTS_FIELD", []);
		});
    </script>
</body>
</html>