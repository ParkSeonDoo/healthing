<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<div class="boardList">
		<div class="boardLayerPopupBg"></div>
		<div class="boardLayerPopup">
			<div class="boardLayerPopupFlex">
				<div class="boardPwd">
					<div class="boardLayerTitle">비밀번호 확인</div>
					<p>비밀번호</p>
					<input type="hidden" id="boardLayerChkBno">
					<input type="password" class="boardLayerInPwd">
					<p><font id="pwdStatus"></font></p>
					<div class="boardLayerBtn">
						<input type="button" value="확인" id="boardLayerChk">
						<input type="button" value="취소" id="boardLayerReset">
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="boardListTable">
				<div class="boardTopTitle">
					<h1>1:1 문의게시판</h1>
				</div>
				<table>
					<tr>
						<th>No.</th>
						<th>작성자ID</th>
						<th>제목</th>
						<th>작성일자</th>
						<th>카테고리</th>
					</tr>
					<c:forEach var="list" items="${list}" varStatus="status" >
					<tr onclick="boardLayer(${list.bno});">
						<td>${status.count}</td>
						<td>${list.bwriter}</td>
						<td>${list.btitle}</td>
						<td><fmt:formatDate value="${list.bwritedate}" pattern="yyyy-MM-dd"/></td>
						<td class="boradListCat">
							<c:choose>
								<c:when test="${list.bcategory eq '온라인이용권'}">
									<span class="boardEtc">${list.bcategory}</span>
								</c:when>
								<c:when test="${list.bcategory eq '오프라인이용권'}">
									<span class="boardRed">${list.bcategory}</span>
								</c:when>
								<c:otherwise>
									<span class="boardPurple">${list.bcategory}</span>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<div class="boardlistPage">
				<ul>
					<li><a href="#">〈</a></li>
					<li class="boardlistPageBtn"><a href="#" class="on">1</a></li>
					<li class="boardlistPageBtn"><a href="#">2</a></li>
					<li class="boardlistPageBtn"><a href="#">3</a></li>
					<li class="boardlistPageBtn"><a href="#">4</a></li>
					<li class="boardlistPageBtn"><a href="#">5</a></li>
					<li><a href="#">〉</a></li>
				</ul>
				<c:choose>
					<c:when test="${id!=null}">
						<a href="/boardwrite" class="boardlistBtn">글쓰기</a>
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<%@ include file="../include/footer.jsp" %>
	<!-- footer include End -->
	<script type="text/javascript">
	function boardLayer(bno){
		$("#boardLayerChkBno").val(bno);
		$(".boardLayerPopupBg").fadeIn();
		$(".boardLayerPopup").fadeIn();
	}
	$("#boardLayerReset").click(function(){
		$(".boardLayerPopupBg").fadeOut();
		$(".boardLayerPopup").fadeOut();
		$("#boardLayerChkBno").val("");
		$(".boardLayerInPwd").val("");
	});
	$(".boardLayerPopupBg").click(function(){
		$(".boardLayerPopupBg").fadeOut();
		$(".boardLayerPopup").fadeOut();
		$("#boardLayerChkBno").val("");
		$(".boardLayerInPwd").val("");
	});
	$("#boardLayerChk").click(function(){
		var bno = $("#boardLayerChkBno").val();
		var pwd = $(".boardLayerInPwd").val();
		
		$.ajax({
			type: 'GET',
			url: '/questionChk',
			data: {
				bno:bno,
				pwd:pwd
			},
			async: false,
			success: function(data) {
				if(data==1){
					$("#pwdStatus").html("잘못된 패스워드입니다.");
				}else{
					location.href="/boardview/"+bno;
				}
			}
		});
	});
	</script>
</body>
</html>