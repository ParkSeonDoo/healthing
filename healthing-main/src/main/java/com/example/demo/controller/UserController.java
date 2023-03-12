package com.example.demo.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.domain.memberVO;
import com.example.demo.service.UserService;

@Controller
public class UserController {
	// 서비스선언
	@Resource(name="com.example.demo.service.UserService")
	UserService muserService;
	
	@RequestMapping(value = "/login") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String LoginController() { // 실제 사용 할 메소드 생성

		return "/main/user/login"; // 이동파일(jsp)을 사용하는 구간
	}
	@RequestMapping(value = "/loginfind") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String LoginfindController() { // 실제 사용 할 메소드 생성

		return "/main/user/loginfind"; // 이동파일(jsp)을 사용하는 구간
	}
	@RequestMapping(value = "/memberjoin") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String MemberController() { // 실제 사용 할 메소드 생성
		
		return "/main/user/memberjoin"; // 이동파일(jsp)을 사용하는 구간
	}
	@RequestMapping(value = "/memberjoininsert") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String MemberController(HttpServletRequest request) throws Exception { // 실제 사용 할 메소드 생성
	
		System.out.println(request.getParameter("uid"));
		memberVO mmemberVO = new memberVO(); // mindexVO라는 가상의 공간을 만듬
		
		String uemail1 = request.getParameter("uemail1");
		String uemail2 = request.getParameter("uemail2");
		String uemail = uemail1 + "@" + uemail2;
		
		System.out.println(uemail); // uemail 테스트
		
		String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		String dd = request.getParameter("dd");
		
		String ubirth = yy + "-" + mm + "-" + dd;
		
					
		mmemberVO.setUid(request.getParameter("uid")); // 가상의 공간내 세팅된 칼럼명에 request.getParameter 를 통해 input name값을 넣음
		mmemberVO.setUpwd(request.getParameter("upwd"));
		mmemberVO.setUname(request.getParameter("uname"));
		mmemberVO.setUphone(request.getParameter("uphone"));
		mmemberVO.setUemail(uemail);
		mmemberVO.setUbirth(ubirth);
		mmemberVO.setUgender(request.getParameter("ugender"));
		mmemberVO.setUcm(request.getParameter("ucm"));
		mmemberVO.setUkg(request.getParameter("ukg"));
		mmemberVO.setUzipcode(request.getParameter("uzipcode"));
		mmemberVO.setUaddr1(request.getParameter("uaddr1"));
		mmemberVO.setUaddr2(request.getParameter("uaddr2"));
		mmemberVO.setUgrade("user");
		
		muserService.memberJoinService(mmemberVO);
	
		return "redirect:/"; //페이지 이동
	}
	@ResponseBody
	@RequestMapping(value = "/uidChk") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public int uidChkController(HttpServletRequest request)throws Exception{ // 실제 사용 할 메소드 생성
		
		int uid = muserService.uidChkService(request.getParameter("uid")); //int uid는 반환시 사용함.
				
//		String uidChk = "";
//		
//		if(uid==1) {
//			uidChk="있음";
//		}else {
//			uidChk="없음";
//		}
		return uid; // 이동파일(jsp)을 사용하는 구간
	}
	@ResponseBody	
	@RequestMapping(value = "/uphoneChk") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public int uphoneChkController(HttpServletRequest request)throws Exception { // 실제 사용 할 메소드 생성
		
		int uphone = muserService.uphoneChkService(request.getParameter("uphone"));
		
		return uphone; // 이동파일(jsp)을 사용하는 구간
	}
	@ResponseBody	
	@RequestMapping(value = "/emailChk") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public int uemailChkController(HttpServletRequest request)throws Exception { // 실제 사용 할 메소드 생성
		
		int uemail = muserService.uemailChkService(request.getParameter("uemail"));

		return uemail; // 이동파일(jsp)을 사용하는 구간
	}
	
	@RequestMapping(value="/loginChk") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String LoginChkController(HttpServletRequest request, HttpServletResponse response)throws Exception { // 실제 사용 할 메소드 생성
		String uid = request.getParameter("uid");
		String upwd = request.getParameter("upwd");
		
		int loginChk = muserService.uloginChkService(uid,upwd);
		
		if(loginChk == 0) {
			request.setAttribute("msg", "아이디/비밀번호를 확인해주세요");
			request.setAttribute("loginChk", loginChk);
			request.setAttribute("url", "/login");
		}else {
			HttpSession session = request.getSession(); //세션 선언
			session.setAttribute("id", uid);
			request.setAttribute("msg", "환영합니다!");
			request.setAttribute("loginChk", loginChk);
			request.setAttribute("url", "/");
		}
//		Cookie userIdCookie = new Cookie("id", uid); //쿠키 선언(세션<->쿠키)
//		userIdCookie.setMaxAge(60*60*24*30);
//		response.addCookie(userIdCookie);
		
		return "/main/user/login";
	}
	@RequestMapping(value = "/logout") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String LogoutController(HttpServletRequest request) { // 실제 사용 할 메소드 생성
		HttpSession session = request.getSession(); //세션 선언
		session.invalidate();		
		
	return "redirect:/"; 
	}
	@RequestMapping(value = "/mypage") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String MypageMainController(HttpServletRequest request, Model model)throws Exception{ // 실제 사용 할 메소드 생성
		HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");  //"id"를 키 값으로 사용하겠다
		model.addAttribute("member", muserService.mypageViewService(sessionId));
		
		return "/main/user/mypage";
	}
}
