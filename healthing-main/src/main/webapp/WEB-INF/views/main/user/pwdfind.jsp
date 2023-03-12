<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/head.jsp" %>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div id="loginMain">
	<div class="loginDetail">
		<div class="loginDetailleft">
			<div class="loginLogo">
				<img src="/image/taeyoungimage/logo.png">
			</div>
			<div class="loginInnerbox emailCodebox">
				<div class="loginMent">
					<h2>비밀번호 재설정</h2>
				</div>
				<div class="loginInput">
					<div class="loginId">
						가입하신 이메일로 인증코드 발송하였습니다.
					</div>
					<div class="loginPwd">
						<input type="text" class="loginValue" placeholder="인증코드를 입력하세요">
					</div>
					<div class="loginButton">
						<input type="button" id="emailBtn" class="loginBtn" value="확인">
					</div>	
				</div>
			</div>			
			<div class="loginInnerbox pwdInnerbox">
				<div class="loginMent">
					<h2>비밀번호 재설정</h2>
				</div>
				<div class="loginInput">
					<div class="loginId">
						<input type="password" class="loginValue" placeholder="비밀번호를 입력하세요">
					</div>
					<div class="loginPwd">
						<input type="password" class="loginValue" placeholder="비밀번호를 다시 입력하세요">
					</div>
					<div class="loginButton">
						<input type="button" id="loginBtn" class="loginBtn" value="확인">
					</div>	
				</div>
			</div>	
		</div>
		<div class="pwdDetailright"></div>
	</div>	
</div>
<%@ include file="../include/footer.jsp" %>
<script>
	$("#emailBtn").on("click",function(){
		$(".emailCodebox").hide();
		$(".pwdInnerbox").show();
	});
	$("#loginBtn").on("click",function(){
		location.href="/login";
	});	
</script>
</body>
</html>