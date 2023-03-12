<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div class="loginInnerbox">
				<div class="loginMent">
					<h2>방문해 주셔서 기뻐요!</h2>
				</div>
				<form class="loginInput" action="/loginChk" method="POST">
					<div class="loginId">
						<input type="text" class="loginValue" name="uid" id="user_id" placeholder="아이디를 입력하세요">
					</div>
					<div class="loginPwd">
						<input type="password" class="loginValue" name="upwd" id="user_pw" placeholder="패스워드를 입력하세요">
					</div>
					<div class="loginCheck">
						<label><input type="checkbox" id="loginCheckbox" value="login">로그인 기억하기</label>
					</div>
					<div class="loginButton">
						<input type="submit" id="loginBtn" class="loginBtn" value="로그인">
					</div>	
				</form>
				<div class="loginAtag">
					<a href="/loginfind">아이디/비밀번호를 잊으셨나요?</a>
				</div>
			</div>	
		</div>
		<div class="loginDetailright"></div>
	</div>	
</div>
<%@ include file="../include/footer.jsp" %>
<script>
	var msg="<c:out value='${msg}'/>"; //controller 메시지 출력
	var loginChk="<c:out value='${loginChk}'/>"; // controller 데이터 체크
	var url="<c:out value='${url}'/>"; //controller 설정한 url 사용
	
	if(loginChk!=""){	//빈값이 아닐때
		if(loginChk==0){
			alert(msg);
			location.href=url;
		}else{
			alert(msg);
			location.href=url;
		}	
	}
</script>
</body>
</html>