<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/head.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div id="memberjoinMain">
	<div class="memberjoinDetail">
		<div class="loginLogo">    
			<img src="/image/taeyoungimage/logo.png">
		</div>
		<div class="loginMent memberjoinMent">           
			<h2>오늘부터,</h2>
			<h2>함께 헬싱!</h2>
		</div>
		<div class="memberjoinTitle">
			<h3>회원정보 입력</h3>
			<p>이용약관과 개인정보처리방침에 대한 안내를 읽고 동의해주세요</p>
			<p><span>*</span> 표기된 항목은 필수입력 항목입니다.</p>			
		</div>
		<form action="memberjoininsert" method="post" name='frm_Input' onsubmit="return uphoneFunc();">
			<table class="memberjoinTable">
				<tr class="memberjoinId">
					<th>아이디<span>*</span></th>
					<td>
						<input type="text" name="uid" id="uid" placeholder="아이디를 입력해주세요" pattern="^([a-zA-Z0-9]){4,20}$" required>
						<button type="button" id="uidBtn">중복확인</button>
						<font id="idChkNotice"></font>						
					</td>
				</tr>
				<tr class="memberjoinPwd">
					<th>비밀번호<span>*</span></th>
					<td>
						<input type="password" name="upwd" id="userPw" placeholder="비밀번호를 입력해주세요" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,50}$" required>
						<p># 비밀번호는 8자 이상이어야 하며, 영문 대소문자,숫자,특수문자를 모두 포함하여 설정해주세요.</p>	
					</td>
				</tr>
				<tr class="memberjoinPwdcheck">
					<th>비밀번호 확인<span>*</span></th>
					<td>
						<input type="password" id="userPwChk" placeholder="비밀번호를 재입력해주세요" required>
						<font id="chkNotice"></font>
					</td>
				</tr>
				<tr class="memberjoinName">
					<th>이름<span>*</span></th>
					<td>
						<input type="text" name="uname" required>
					</td>
				</tr>
				<tr class="memberjoinPhone">
					<th>연락처<span>*</span></th>
					<td>
						<input type="text" name="uphone" id="uphone" maxlength="11" required>
						<font id="phoneChkNotice"></font>
						<p># 하이픈(-)을 포함하지 않고 입력해주세요. 입력 예) 01012341235</p>
					</td>
				</tr>
				<tr class="memberjoinEmail">
					<th>이메일<span>*</span></th>
					<td>
						<input type="text" name="uemail1" id="emailId" class="form_w200" value="" title="이메일 아이디" maxlength="20" required /> @ 
						<input type="text" name="uemail2" id="emailDomain" class="form_w200" value="" title="이메일 도메인" maxlength="20" required />
						<select class="memberjoinEmailselect" title="이메일 도메인 주소 선택" onChange="selectEmail(this)">
						    <option value="1">- 직접 입력 -</option>
						    <option value="naver.com">naver.com</option>
						    <option value="gmail.com">gmail.com</option>
						    <option value="hanmail.net">hanmail.net</option>
						    <option value="hotmail.com">hotmail.com</option>
						    <option value="korea.com">korea.com</option>
						    <option value="nate.com">nate.com</option>
						    <option value="yahoo.com">yahoo.com</option>
						</select>
						<font id="emailchkNotice"></font>
					</td>
				</tr>			
				<tr class="memberjoinBirth">
					<th>생년월일</th>
					<td>
						<select class="memberjoinBirthselect" name="yy" id="year"></select><span>년</span>
						<select class="memberjoinBirthselect" name="mm" id="month"></select><span>월</span>
						<select class="memberjoinBirthselect" name="dd" id="day"></select><span>일</span>
					</td>
				</tr>
				<tr class="memberjoinGender">
					<th>성별<span>*</span></th>
					<td>
						<label><input type="radio" name="ugender" id="man" value="man" checked required>남자</label>
						<label><input type="radio" name="ugender" id="woman" value="woman" required>여자</label>
					</td>
				</tr>
				<tr class="memberjoinheight">
					<th>키<span>*</span></th>
					<td>
						<label><input type="text" name="ucm" maxlength="5" required> cm</label>
					</td>
				</tr>					
				<tr class="memberjoinweight">
					<th>몸무게<span>*</span></th>
					<td colspan="2">
						<label><input type="text" name="ukg" maxlength="5" required> kg</label>
					</td>
				</tr>
				<tr class="memberjoinZipcode">
					<th rowspan="4">주소</th>
					<td>
						<input type="text" name="uzipcode" id="zipcode" class="memberjoinZipnum">
						<input type="button" name='btnFindZip' onclick="kakaopost()" value="우편번호">
					</td>
				</tr>
				<tr class="memberjoinAddressone">
					<td>
						<input type="text" id="address1" name="uaddr1">								
					</td>
				</tr>
				<tr class="memberjoinAddresstwo">
					<td>
						<input type="text" name="uaddr2">
					</td>
				</tr>
				<tr class="memberjoinAddressMent">
					<td>
						<p># 주소입력은 선택 사항입니다.</p>
						<p># 단, 주소가 없는 경우 지역 이벤트 발생시 안내에 대해 제약을 받을 수 있습니다.</p>					
					</td>
				</tr>
			</table>
			<div class="memberjoinBtn">
				<input type="submit" id="overlapBtn" value="회원가입">
			</div>
		</form>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
<script>
//연락처,이메일 입력조건(정규식)
function uphoneFunc(){
	var returnChk=true;
	var uphone=$("#uphone").val();
	if (uphone.length !== 11 || !$.isNumeric(uphone)) {
		alert("11자리 또는 숫자가 아닙니다.");
		returnChk = false;
	}
	$.ajax({
        type: 'GET',
        url: '/uphoneChk',
        data: {uphone:uphone},
        async: false,
        success: function(data) {
        	if(data != 0){
    			$('#phoneChkNotice').html('사용중인 연락처입니다');
    			$('#phoneChkNotice').attr('color', '#F8A2A3');
    			returnChk=false;
    		}else{
    			$('#phoneChkNotice').html('사용가능한 연락처입니다');
    			$('#phoneChkNotice').attr('color', '#1989BB');
    			returnChk=true;
    		}
        }
	});
	var email=$("#emailId").val();
	var domain=$("#emailDomain").val();
	var uemail= email+"@"+domain;
	$.ajax({
        type: 'GET',
        url: '/emailChk',
        data: {uemail:uemail},
        async: false,
        success: function(data) {
        	if(data != 0){
    			$('#emailchkNotice').html('사용중인 이메일입니다');
    			$('#emailchkNotice').attr('color', '#F8A2A3');
    			returnChk=false;
    		}else{
    			$('#emailchkNotice').html('사용가능한 이메일입니다');
    			$('#emailchkNotice').attr('color', '#1989BB');
    			returnChk=true;
    		}
        }
	});
 	return returnChk;
}

//아이디중복확인
$('#uidBtn').click(function(){
	
	var uid= $("#uid").val();
	$.get('/uidChk?uid='+uid,function(data){

		if(data == 1){
			$('#idChkNotice').html('사용중인 아이디입니다');
			$('#idChkNotice').attr('color', '#F8A2A3');
	    }else{
			$('#idChkNotice').html('사용가능한 아이디입니다');
			$('#idChkNotice').attr('color', '#1989BB');
	    }
	});
});
		
//비밀번호확인
$(function(){
    $('#userPw').keyup(function(){
      $('#chkNotice').html('');
    });

    $('#userPwChk').keyup(function(){

        if($('#userPw').val() != $('#userPwChk').val()){
          $('#chkNotice').html('비밀번호 일치하지 않음');
          $('#chkNotice').attr('color', '#F8A2A3');
        } else{
          $('#chkNotice').html('비밀번호 일치함');
          $('#chkNotice').attr('color', '#1989BB');
        }
    });
});

//이메일셀렉트선택시
function selectEmail(ele){
    var $ele = $(ele);
    var $email2 = $('input[name=uemail2]');

    // '1'인 경우 직접입력
    if($ele.val() == "1"){
        $email2.attr('readonly', false);
        $email2.val('');
    } else {
        $email2.attr('readonly', true);
        $email2.val($ele.val());
    }
}

//get방식 /emailChk?emailId=아이디&emaildomain=도메인주소
//$.get('/emailChk?emailId='+아이디+'&emaildomain='+도메인주소,function(data){
//});

//생년월일
$(document).ready(function(){            
    var now = new Date();
    var year = now.getFullYear();
    var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
    var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
    //년도 selectbox만들기               
    for(var i = 1900 ; i <= year ; i++) {
        $('#year').append('<option value="' + i + '">' + i + '</option>');    
    }

    // 월별 selectbox 만들기            
    for(var i=1; i <= 12; i++) {
        var mm = i > 9 ? i : "0"+i ;            
        $('#month').append('<option value="' + mm + '">' + mm + '</option>');    
    }
    
    // 일별 selectbox 만들기
    for(var i=1; i <= 31; i++) {
        var dd = i > 9 ? i : "0"+i ;
        $('#day').append('<option value="' + dd + '">' + dd+ '</option>');    
    }
    $("#year  > option[value="+year+"]").attr("selected", "true");        
    $("#month  > option[value="+mon+"]").attr("selected", "true");
    $("#day  > option[value="+day+"]").attr("selected", "true");
})

//우편번호
function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipcode").value = data.zonecode;
           document.querySelector("#address1").value =  data.address
        }
    }).open();
}
</script>
</body>
</html>