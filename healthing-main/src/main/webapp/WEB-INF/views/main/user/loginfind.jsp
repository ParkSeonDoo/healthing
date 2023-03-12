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
			<div class="loginInnerbox loginfindInnerbox" >
				<div class="loginMent">
					<h2>아이디/비밀번호를 잊으셨나요?</h2>
				</div>
				<div class="loginInnersection">
					<div class="loginfindMent">
						<h2>아이디 찾기</h2>
					</div>
					<form class="loginInput" action="/idFind" method="POST">
						<div class="loginId">
							<input type="text" class="loginValue" name="uname" placeholder="이름을 입력하세요">
						</div>
						<div class="loginPwd">
							<input type="email" class="loginValue" name="uemail" placeholder="이메일을 입력하세요">
						</div>
						<div class="loginButton">
							<input type="submit" id="loginfindIdbtn" class="loginBtn" value="확인">
						</div>	
					</form>
				</div>
				<div class="loginInnersection">
					<div class="loginfindMent">
						<h2>비밀번호 찾기</h2>
					</div>
					<form class="loginInput" action="/pwdFind" method="POST">
						<div class="loginId">
							<input type="text" class="loginValue" name="uid" placeholder="아이디를 입력하세요">
						</div>
						<div class="loginPwd">
							<input type="email" class="loginValue" name="uemail" placeholder="이메일을 입력하세요">
						</div>
						<div class="loginButton">
							<input type="submit" id="loginfindPwbtn" class="loginBtn" value="확인">
						</div>	
					</form>
				</div>				
			</div>	
		</div>
		<div class="loginfindDetailright"></div>
	</div>	
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>