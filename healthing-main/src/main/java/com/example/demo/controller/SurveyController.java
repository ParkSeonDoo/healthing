package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.domain.SurveyVO;
import com.example.demo.service.SurveyService;

@Controller
public class SurveyController {
	//서비스선언
	@Resource(name="com.example.demo.service.SurveyService")
	SurveyService msurveyService;
	
	@RequestMapping(value = "/survey") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String SurveyController() { // 실제 사용 할 메소드 생성

		return "/main/survey/surveymain"; // 이동파일(jsp)을 사용하는 구간
	}
	@RequestMapping(value = "/surveywrite") // url, 매핑 시킬 페이지 값(form태그 action에 설정된 값)을 설정
	public String SurveyWriteController(HttpServletRequest request, Model model)throws Exception { // 실제 사용 할 메소드 생성
		HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");  //"id"를 키 값으로 사용하겠다
		
		model.addAttribute("survey", msurveyService.ResultViewService(sessionId));
		
		return "/main/survey/surveywrite"; // 이동파일(jsp)을 사용하는 구간
	}
	//surveyallview
	@RequestMapping(value="/surveyallview")	
	public String surveyallviewController() {
		
		return "/main/survey/surveyallview";
	}
	@RequestMapping(value="/surveyinsert")	
	public String surveyinsertController(HttpServletRequest request)throws Exception{
		
		SurveyVO msurveyVO = new SurveyVO();
		
		msurveyVO.setSsleep(request.getParameter("sleep"));
		msurveyVO.setSmeal(request.getParameter("food"));
		msurveyVO.setSquality(request.getParameter("quality"));
		msurveyVO.setSlevel(request.getParameter("level"));
		msurveyVO.setScount(request.getParameter("momentum"));
		msurveyVO.setScm(request.getParameter("ucm"));
		msurveyVO.setSkg(request.getParameter("ukg"));
		msurveyVO.setUno(Integer.parseInt(request.getParameter("uno")));
		
		msurveyService.surveyInsertService(msurveyVO);
		
		return "redirect:/surveyresult";
	}
	@RequestMapping(value="/surveyresult")	
	public String surveyresultController(HttpServletRequest request,Model model)throws Exception {
		HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");  //"id"를 키 값으로 사용하겠다
		
		int sessionuno = msurveyService.surveyResultService(sessionId);
		
		msurveyService.surveySessionService(sessionuno);
		
		SurveyVO surveyVO = msurveyService.surveySessionService(sessionuno);
		
		model.addAttribute("result", surveyVO);
		
		String bmiresult = "";
		int scm = Integer.parseInt(surveyVO.getScm());
		int skg = Integer.parseInt(surveyVO.getSkg());
		double doublecm =(double)(scm * 0.01);
		double bmi = skg / (doublecm*doublecm);
		
		model.addAttribute("bmi", bmi);
		
		if(bmi < 18.5) {
			bmiresult ="저체중";
		}else if(bmi < 23) {
			bmiresult ="정상";
		}else if(bmi < 35) {
			bmiresult ="과체중";
		}else {
			bmiresult ="고도비만";
		}
		
		bmiStatus bmistatus = new bmiStatus(); //아래 method를 사용하기 위해 선언
		HashMap<String, String> bmiSet = bmistatus.status(bmiresult); //서비스와 같은 개념(서비스에 메소드를 보냄),값을 다시 받음
		System.out.println(bmiSet);
		model.addAttribute("bmiSet",bmiSet); // 값을 받은것을 jsp로 보냄
		return "/main/survey/surveyresult";
	}
		//HashMap<String, String> bmiSet = bmistatus.status(bmiresult); 와 public HashMap<String, String> status(String bmiResult) 동일함.
	public class bmiStatus{		//method를 줌
		public HashMap<String, String> status(String bmiResult){ //status 라는 pulic을 줌(서비스에서 보낸것을 받음)
			HashMap<String, String> hashmap = new HashMap<>();
			if(bmiResult.equals("저체중")) {
				hashmap.put("bmiResult", bmiResult); //hashmap에 put(넣음)
				hashmap.put("health", "걸을때 문제가 없다면 계단오르기, 걷기 등을 통해 꾸준히 몸을 움직여야하고,<br>체력이 어느정도 뒷받침되면 철봉 매달리기 같은 근육이 늘어나는 상황을 버티는 운동을 꾸준히 해야해요!");
				hashmap.put("food", "<아침><br>팥밥,호박잎된장찌개,우엉소고기조림,김구이,배추김치,삶은계란1개,요구르트1병<br><점심><br>고구마밥,대구매운탕,닭날개조림,도토리묵채소무침,배추김치,삶은계란1개,요구르트1병<br><저녁><br>잡곡밥,실파계란국,돈육완자전,오징어채소볶음,깍두기,바나나1개,우유100m1팩");
			}else if(bmiResult.equals("정상")){
				hashmap.put("bmiResult", bmiResult);
				hashmap.put("health", "시간적 여유가 있다면 하루 두번씩(오전,오후) 운동하는것을 추천드려요!<br>스쿼트15회-3set,런지15회-3set,윗몸일으키기15회-3set,팔굽혀펴기15회-3set ");
				hashmap.put("food", "<아침><br>닭가슴살1팩,구운아몬드10알<br><점심><br>일반식(기름에 튀긴 음식,면,국물,인스턴트는 되도록 피한다)<br><저녁><br>닭가슴살1팩,구운아몬드10알,방울토마토200g");
			}else if(bmiResult.equals("과체중")){
				hashmap.put("bmiResult", bmiResult);
				hashmap.put("health", "운동하러 나가기 귀찮으신가요? 실내에서도 할 수 있는 운동을 소개해드릴게요!<br>스쿼트10회-3set,플랭크30초-3set,팔굽혀펴기10회-3set,런지10회-3set,브릿지15회-3set");
				hashmap.put("food", "<아침><br>삶은계란3개,발사믹식초채소샐러드<br><점심><br>닭가슴살200g,올리브유버섯구이<br><저녁><br>소고기안심or돼지고기앞다리살200g 및 쌈채소");
			}else {
				hashmap.put("bmiResult", bmiResult);
				hashmap.put("health", "건강한 몸 만들기 도전!<br>크런치20회-5set,레그레이즈20회-5set,바이시클크런치20회-5set,사이드잭나이프30회-3set,걷기40분");
				hashmap.put("food", "<아침><br>삶은계란1개,사과 반개,두유1개<br><점심><br>잡곡밥,방울토마토샐러드<br><저녁><br>소고기 및 쌈채소");
			}
			return hashmap;	//return에 hashmap을 사용하려면 반드시 public hashmap을 사용해야 함.
		}
	}

}
