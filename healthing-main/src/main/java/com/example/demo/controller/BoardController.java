package com.example.demo.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.BoardVO;
import com.example.demo.service.BoardService;

@Controller
public class BoardController {
	
	// 서비스선언
	@Resource(name="com.example.demo.service.BoardService")
	BoardService mboardservice;
	
	// 1:1문의 이미지폴더경로
	String fileurl = "/Users/parksundo/git/healthing/src/main/resources/static/questionimg/";
	// 공지사항 이미지폴더경로
	String fileurlnotice = "/Users/parksundo/git/healthing/src/main/resources/static/noticeimg/";
	// 파트너 이미지폴더경로
	String fileurlpartner = "/Users/parksundo/git/healthing/src/main/resources/static/partnerimg/";
	
	// question 1:1문의 비밀번호 확인
	@ResponseBody
	@RequestMapping(value="/questionChk")	
	public int questionChkController(HttpServletRequest request, Model model) throws Exception {
		
		String pwd = request.getParameter("pwd");
		String bno = request.getParameter("bno");
		
		String bpwd = mboardservice.questionChkService(Integer.parseInt(bno));		
		int chkPwd = 0;
		
		if(!pwd.equals(bpwd)) {
			chkPwd = 1;
		}
		return chkPwd;
	}
	
	// boardlist 1:1문의리스트
	@RequestMapping(value="/boardlist")	
	public String boardlistController(Model model) throws Exception {
		
		model.addAttribute("list",mboardservice.boardquestionlist());
		
		return "/main/board/boardlist";
	}
	// boardwrite 1:1문의 글쓰기
	@RequestMapping(value="/boardwrite")	
	public String boardwriteController(HttpServletRequest request, Model model)throws Exception {
		HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");
		model.addAttribute("writer",mboardservice.boardwrite(sessionId));
		
		return "/main/board/boardwrite";
	}
	// boardwrite 1:1문의 글쓰기 insert
	@RequestMapping(value="/boardquestioninsert")	
	public String boardquestioninsertController(HttpServletRequest request, @RequestParam MultipartFile bfile)throws Exception {
		
		String fileDb = "";
    	if(!bfile.isEmpty()) {
    		int posi = bfile.getOriginalFilename().lastIndexOf(".");
    		String fileExt = bfile.getOriginalFilename().substring(posi);
    		String uuid = UUID.randomUUID().toString();
    		String file = fileurl+uuid+fileExt;
    		bfile.transferTo(new File(file));
    		fileDb = "/questionimg/"+uuid+fileExt;
    	}
    	HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");
		
		BoardVO board = new BoardVO();
		board.setBcategory(request.getParameter("bcategory"));
		board.setBpwd(request.getParameter("bpwd"));
		board.setBtitle(request.getParameter("btitle"));
		board.setBcontents(request.getParameter("bcontents"));
		board.setBfile(fileDb);
		board.setBwriter(sessionId);
    	board.setBstatus(0);
    	
    	mboardservice.boardquestion(board);
    	
		return "redirect:/boardlist";
	}
	// boardview 1:1 문의 상세보기
	@RequestMapping(value="/boardview/{bno}")	
	public String boardviewController(@PathVariable int bno, Model model) throws Exception {
		
		model.addAttribute("view",mboardservice.questionviewService(bno));
		
		return "/main/board/boardview";
	}
	// boardupdate 1:1 문의 수정페이지
	@RequestMapping(value="/boardupdate/{bno}")	
	public String boardupdateController(@PathVariable int bno, Model model) throws Exception {
		
		model.addAttribute("up",mboardservice.questionviewService(bno));
		
		return "/main/board/boardupdate";
	}
	// boardupdate 1:1 문의 수정
	@RequestMapping("/boardupdateProc")
	private String boardupdateProcController(HttpServletRequest request, @RequestParam MultipartFile bfile) throws Exception {
		
		String fileDb = "";
		
		if(!bfile.isEmpty()) {
			// 1기존파일삭제 후 2파일 저장 및 3경로 디비저장
			
			String boardimg = request.getParameter("boarqdimg");
			// 마지막 / 앞까지 숫자 담기
			int posi = boardimg.lastIndexOf("/");
			// 담은숫자까지 파일명자르기+1
			String fileExt = boardimg.substring(posi+1);
			//현재 게시판에 존재하는 파일객체를 만듬 (파일경로+파일명)
			File file = new File(fileurl + fileExt);
			
			if(file.exists()) { // 기존파일이 존재하면
				file.delete(); // 기존파일 삭제
			}

			int pos = bfile.getOriginalFilename().lastIndexOf(".");
    		String fileEx = bfile.getOriginalFilename().substring(pos); 		
    		String uuid = UUID.randomUUID().toString();		
    		String fil = fileurl+uuid+fileEx;
    		bfile.transferTo(new File(fil));
    		
    		fileDb = "/questionimg/"+uuid+fileEx;
		}else {
			// hidden으로 기존파일name 불러오기
			
			fileDb = request.getParameter("boarqdimg");
		}
		
		BoardVO board = new BoardVO();
		board.setBcategory(request.getParameter("bcategory"));
		board.setBtitle(request.getParameter("btitle"));
		board.setBcontents(request.getParameter("bcontents"));
		board.setBfile(fileDb);
		board.setBno(Integer.parseInt(request.getParameter("bno")));
    	
    	mboardservice.boardquestionProc(board);
    	
    	return "redirect:/boardview/"+request.getParameter("bno");
	}
	
	// boarddelte 1:1 문의 삭제
	@RequestMapping(value="/boarddelete/{bno}")	
	public String boarddelteController(@PathVariable int bno) throws Exception {
		
		mboardservice.boarddeleteService(bno);
				
		return "redirect:/boardlist";
	}
	
	// boardnotice 공지사항
	@RequestMapping(value="/boardnotice")	
	public String noticeController(Model model) throws Exception {
		
		model.addAttribute("list",mboardservice.noticeService());
		
		return "/main/board/boardnotice";
	}
	// boardnoticewrite 공지사항 글쓰기
	@RequestMapping(value="/boardnoticewrite")	
	public String noticewriteController(HttpServletRequest request, Model model)throws Exception {
		HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");
		model.addAttribute("writer",mboardservice.noticewriteService(sessionId));
		
		return "/main/board/boardnoticewrite";
	}
	// boardnoticewrite 공지사항 글쓰기 insert
	@RequestMapping(value="/boardnoticeinsert")	
	public String noticeinsertController(HttpServletRequest request, @RequestParam MultipartFile bfile)throws Exception {
		
		String fileDb = "";
    	if(!bfile.isEmpty()) {
    		int posi = bfile.getOriginalFilename().lastIndexOf(".");
    		String fileExt = bfile.getOriginalFilename().substring(posi);
    		String uuid = UUID.randomUUID().toString();
    		String file = fileurlnotice+uuid+fileExt;
    		bfile.transferTo(new File(file));
    		fileDb = "/noticeimg/"+uuid+fileExt;
    	}
    	HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");
		
		BoardVO board = new BoardVO();
		board.setBtitle(request.getParameter("btitle"));
		board.setBcontents(request.getParameter("bcontents"));
		board.setBfile(fileDb);
		board.setBwriter(sessionId);
    	board.setBstatus(0);
    	board.setBviews(0);
    	
    	mboardservice.noticeinsertService(board);
    	
		return "redirect:/boardnotice";
	}
	// boardnoticeview 공지사항 상세보기
	@RequestMapping(value="/boardnoticeview/{bno}")	
	public String noticeviewController(@PathVariable int bno, Model model) throws Exception {
		
		model.addAttribute("view",mboardservice.noticeviewService(bno));
		
		return "/main/board/boardnoticeview";
	}
	// boardnoticeupdate 공자사항 수정페이지
	@RequestMapping(value="/boardnoticeupdate/{bno}")	
	public String noticeupdateController(@PathVariable int bno, Model model) throws Exception {
		
		model.addAttribute("up",mboardservice.noticeviewService(bno));
		
		return "/main/board/boardnoticeupdate";
	}
	// boarnoticedupdate 공지사항 문의 수정
	@RequestMapping("/boardnoticeupdateProc")
	private String noticeupdateProcController(HttpServletRequest request, @RequestParam MultipartFile bfile) throws Exception {
		
		String fileDb = "";
		
		if(!bfile.isEmpty()) {
			// 1기존파일삭제 후 2파일 저장 및 3경로 디비저장
			
			String boardimg = request.getParameter("boarqdimg");
			// 마지막 / 앞까지 숫자 담기
			int posi = boardimg.lastIndexOf("/");
			// 담은숫자까지 파일명자르기+1
			String fileExt = boardimg.substring(posi+1);
			//현재 게시판에 존재하는 파일객체를 만듬 (파일경로+파일명)
			File file = new File(fileurlnotice + fileExt);
			
			if(file.exists()) { // 기존파일이 존재하면
				file.delete(); // 기존파일 삭제
			}

			int pos = bfile.getOriginalFilename().lastIndexOf(".");
    		String fileEx = bfile.getOriginalFilename().substring(pos); 		
    		String uuid = UUID.randomUUID().toString();		
    		String fil = fileurlnotice+uuid+fileEx;
    		bfile.transferTo(new File(fil));
    		
    		fileDb = "/noticeimg/"+uuid+fileEx;
		}else {
			// hidden으로 기존파일name 불러오기
			
			fileDb = request.getParameter("boarqdimg");
		}
		
		BoardVO board = new BoardVO();
		board.setBtitle(request.getParameter("btitle"));
		board.setBcontents(request.getParameter("bcontents"));
		board.setBfile(fileDb);
		board.setBno(Integer.parseInt(request.getParameter("bno")));
    	
    	mboardservice.noticeupdateProc(board);
    	
    	return "redirect:/boardnoticeview/"+request.getParameter("bno");
	}
	
	// boardnoticedelte 공지사항 삭제
	@RequestMapping(value="/boardnoticedelete/{bno}")	
	public String noticedelteController(@PathVariable int bno) throws Exception {
		
		mboardservice.noticedeleteService(bno);
				
		return "redirect:/boardnotice";
	}
	
	// boardpartner 헬싱파트너 신청
	@RequestMapping(value="/boardpartner")	
	public String partnerController(Model model) throws Exception {
		
		model.addAttribute("list",mboardservice.partnerService());
		
		return "/main/board/boardpartner";
	}
	// boardpartner 글쓰기
	@RequestMapping(value="/boardpartnerwrite")	
	public String partnerwriteController(HttpServletRequest request, Model model)throws Exception {
		HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");
		model.addAttribute("writer",mboardservice.partnerwriteService(sessionId));
		
		return "/main/board/boardpartnerwrite";
	}
	// boardpartner 글쓰기 insert
	@RequestMapping(value="/partnerinsert")	
	public String partnerinsertController(HttpServletRequest request, @RequestParam MultipartFile bfile)throws Exception {
		
		String fileDb = "";
    	if(!bfile.isEmpty()) {
    		int posi = bfile.getOriginalFilename().lastIndexOf(".");
    		String fileExt = bfile.getOriginalFilename().substring(posi);
    		String uuid = UUID.randomUUID().toString();
    		String file = fileurlpartner+uuid+fileExt;
    		bfile.transferTo(new File(file));
    		fileDb = "/partnerimg/"+uuid+fileExt;
    	}
    	HttpSession session = request.getSession(); // 세션 선언
		String sessionId = (String) session.getAttribute("id");
		
		BoardVO board = new BoardVO();
		board.setBcategory(request.getParameter("bcategory"));
		board.setBtitle(request.getParameter("btitle"));
		board.setBcontents(request.getParameter("bcontents"));
		board.setBfile(fileDb);
		board.setBwriter(sessionId);
    	board.setBstatus(0);
    	board.setBviews(0);
    	
    	mboardservice.partnerinsertService(board);
    	
		return "redirect:/boardpartner";
	}
	// boardpartner 파트너신청 상세보기
	@RequestMapping(value="/boardpartnerview/{bno}")	
	public String boardpartnerController(@PathVariable int bno, Model model) throws Exception {
		
		model.addAttribute("view",mboardservice.partnerviewService(bno));
		
		return "/main/board/boardpartnerview";
	}
	// boardpartner 파트너신청 수정페이지
	@RequestMapping(value="/boardpartnerupdate/{bno}")	
	public String partnerupdateController(@PathVariable int bno, Model model) throws Exception {
		
		model.addAttribute("up",mboardservice.partnerviewService(bno));
		
		return "/main/board/boardpartnerupdate";
	}
	// boardpartner 파트너신청 수정
	@RequestMapping("/partnerupdateProc")
	private String partnerupdateProcController(HttpServletRequest request, @RequestParam MultipartFile bfile) throws Exception {
		
		String fileDb = "";
		
		if(!bfile.isEmpty()) {
			// 1기존파일삭제 후 2파일 저장 및 3경로 디비저장
			
			String boardimg = request.getParameter("boarqdimg");
			// 마지막 / 앞까지 숫자 담기
			int posi = boardimg.lastIndexOf("/");
			// 담은숫자까지 파일명자르기+1
			String fileExt = boardimg.substring(posi+1);
			//현재 게시판에 존재하는 파일객체를 만듬 (파일경로+파일명)
			File file = new File(fileurlpartner + fileExt);
			
			if(file.exists()) { // 기존파일이 존재하면
				file.delete(); // 기존파일 삭제
			}

			int pos = bfile.getOriginalFilename().lastIndexOf(".");
    		String fileEx = bfile.getOriginalFilename().substring(pos); 		
    		String uuid = UUID.randomUUID().toString();		
    		String fil = fileurlpartner+uuid+fileEx;
    		bfile.transferTo(new File(fil));
    		
    		fileDb = "/partnerimg/"+uuid+fileEx;
		}else {
			// hidden으로 기존파일name 불러오기
			
			fileDb = request.getParameter("boarqdimg");
		}
		
		BoardVO board = new BoardVO();
		board.setBcategory(request.getParameter("bcategory"));
		board.setBtitle(request.getParameter("btitle"));
		board.setBcontents(request.getParameter("bcontents"));
		board.setBfile(fileDb);
		board.setBno(Integer.parseInt(request.getParameter("bno")));
    	
    	mboardservice.boardpartnerProc(board);
    	
    	return "redirect:/boardpartnerview/"+request.getParameter("bno");
	}
	
	// boardpartner 파트너 문의 삭제
	@RequestMapping(value="/boardpartnerdelete/{bno}")	
	public String partnerdeleteController(@PathVariable int bno) throws Exception {
		
		mboardservice.partnerdeleteService(bno);
				
		return "redirect:/boardpartner";
	}
	
	// boardqna Q&A
	@RequestMapping(value="/boardqna")	
	public String boardqnaController() {
		
		return "/main/board/boardqna";
	}
}
