package com.example.demo.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.ItemVO;
import com.example.demo.service.AdminItemService;


@Controller
public class AdminItemController {
	
	// 서비스선언
	@Resource(name="com.example.demo.service.AdminItemService")
	AdminItemService mitemservice;
//  선두용	
//	String fileurlone = "/Users/parksundo/git/healthing/src/main/resources/static/coachimg/";
//	String fileurltwo = "/Users/parksundo/git/healthing/src/main/resources/static/thumbnail/";
//	태영용	
	String fileurlone = "C:\\Users\\tye19\\git\\healthing\\src\\main\\resources\\static\\coachimg\\";
	String fileurltwo = "C:\\Users\\tye19\\git\\healthing\\src\\main\\resources\\static\\thumbnail\\";

	// itemonline 온라인이용권관리
	@RequestMapping(value="/adminitemonline")	
	public String adminitemonlineController(Model model) throws Exception {
		
		model.addAttribute("list",mitemservice.itemonlineService());
		
		return "/admin/item/itemonline";
	}
	// itemonlinement 온라인신청관리
	@RequestMapping(value="/adminitemonlinement")	
	public String adminitemonlinementController() {
		
		return "/admin/item/itemonlinement";
	}
	// itemonlinewrite 온라인이용권 글쓰기
	@RequestMapping(value="/adminitemonlinewrite")	
	public String adminitemonlinewriteController() {
		
		return "/admin/item/itemonlinewrite";
	}
	// itemonlineinsert 온라인이용권 글쓰기insert
	@RequestMapping(value="/itemonlineinsert")	
	public String itemonlineinsertController(HttpServletRequest request, @RequestParam MultipartFile icoachimg, MultipartFile ithumbnail) throws Exception{
				
		String fileDbone = "";
    	if(!icoachimg.isEmpty()) {
    		int posi = icoachimg.getOriginalFilename().lastIndexOf(".");
    		String fileExt = icoachimg.getOriginalFilename().substring(posi);
    		String uuid = UUID.randomUUID().toString();
    		String file = fileurlone+uuid+fileExt;
    		icoachimg.transferTo(new File(file));
    		fileDbone = "/coachimg/"+uuid+fileExt;
    	}
    	
    	String fileDbtwo = "";
    	if(!ithumbnail.isEmpty()) {
    		int posi = ithumbnail.getOriginalFilename().lastIndexOf(".");
    		String fileExt = ithumbnail.getOriginalFilename().substring(posi);
    		String uuid = UUID.randomUUID().toString();
    		String file = fileurltwo+uuid+fileExt;
    		ithumbnail.transferTo(new File(file));
    		fileDbtwo = "/thumbnail/"+uuid+fileExt;
    	}
    	ItemVO itemvo = new ItemVO();
    	itemvo.setIcategory(request.getParameter("icategory"));
    	itemvo.setIpurpose(request.getParameter("ipurpose"));
    	itemvo.setItarget(request.getParameter("itarget"));
    	itemvo.setIlavel(request.getParameter("ilavel"));
    	itemvo.setItool(request.getParameter("itool"));
    	itemvo.setIcoachname(request.getParameter("icoachname"));
    	itemvo.setIcoachinfo(request.getParameter("icoachinfo"));
    	itemvo.setIcoachimg(fileDbone);
    	itemvo.setIcoachsummary(request.getParameter("icoachsummary"));
    	itemvo.setIthumbnail(fileDbtwo);
    	itemvo.setIweek(Integer.parseInt(request.getParameter("iweek")));
    	itemvo.setIweektime(Integer.parseInt(request.getParameter("iweektime")));
    	itemvo.setIweekcount(Integer.parseInt(request.getParameter("iweekcount")));
    	itemvo.setIprice(Integer.parseInt(request.getParameter("iprice")));
    	itemvo.setIsale(Integer.parseInt(request.getParameter("isale")));
    	itemvo.setIpeople(Integer.parseInt(request.getParameter("ipeople")));
    	itemvo.setItitle(request.getParameter("ititle"));
    	itemvo.setIgoal(request.getParameter("igoal"));
    	itemvo.setIcontents(request.getParameter("icontents"));
    	itemvo.setIstatus(0);
    	
    	mitemservice.itemOnlineInsert(itemvo);

		return "redirect:/adminitemonline";
	}
	// adminitemonlineview 온라인이용권 어드민상세보기
	@RequestMapping(value="/adminitemonlineview/{ino}")	
	public String adminitemonlineviewController(@PathVariable int ino, Model model) throws Exception {
		
		model.addAttribute("view",mitemservice.itemonlineviewService(ino));
		
		return "/admin/item/itemonlineview";
	}
	// itemonlineupdate 온라인이용권 수정페이지
	@RequestMapping(value="/adminitemonlineupdate/{ino}")	
	public String adminitemonlineupdateController(@PathVariable int ino, Model model) throws Exception {
		
		model.addAttribute("up",mitemservice.itemonlineviewService(ino));
		
		return "/admin/item/itemonlineupdate";
	}
	// 온라인 게시글수정
	@RequestMapping("/itemonlinupdateProc")
    private String itemonlinupdateProc(HttpServletRequest request, @RequestParam MultipartFile icoachimg, MultipartFile ithumbnail) throws Exception{ 
		
		String fileDbone = "";
    	
    	if(!icoachimg.isEmpty()) {
			// 1기존파일삭제 후 2파일 저장 및 3경로 디비저장
			
			String coachimg = request.getParameter("delcoachimg");
			// 마지막 / 앞까지 숫자 담기
			int posi = coachimg.lastIndexOf("/");
			// 담은숫자까지 파일명자르기+1
			String fileExt = coachimg.substring(posi+1);
			//현재 게시판에 존재하는 파일객체를 만듬 (파일경로+파일명)
			File file = new File(fileurlone + fileExt);
			
			if(file.exists()) { // 기존파일이 존재하면
				file.delete(); // 기존파일 삭제
			}

			int pos = icoachimg.getOriginalFilename().lastIndexOf(".");
    		String fileEx = icoachimg.getOriginalFilename().substring(pos); 		
    		String uuid = UUID.randomUUID().toString();		
    		String fil = fileurlone+uuid+fileEx;
    		icoachimg.transferTo(new File(fil));
    		
    		fileDbone = "/coachimg/"+uuid+fileEx;
		}else {
			// hidden으로 기존파일name 불러오기
			
			fileDbone = request.getParameter("delcoachimg");
		}
    	
    	String fileDbtwo = "";
    	
    	if(!ithumbnail.isEmpty()) {
			// 1기존파일삭제 후 2파일 저장 및 3경로 디비저장
			
			String thumbnail = request.getParameter("delthumbnail");
			// 마지막 / 앞까지 숫자 담기
			int posi = thumbnail.lastIndexOf("/");
			// 담은숫자까지 파일명자르기+1
			String fileExt = thumbnail.substring(posi+1);
			//현재 게시판에 존재하는 파일객체를 만듬 (파일경로+파일명)
			File file = new File(fileurltwo + fileExt);
			
			if(file.exists()) { // 기존파일이 존재하면
				file.delete(); // 기존파일 삭제
			}

			int pos = ithumbnail.getOriginalFilename().lastIndexOf(".");
    		String fileEx = ithumbnail.getOriginalFilename().substring(pos); 		
    		String uuid = UUID.randomUUID().toString();		
    		String fil = fileurltwo+uuid+fileEx;
    		ithumbnail.transferTo(new File(fil));
    		
    		fileDbtwo = "/thumbnail/"+uuid+fileEx;
		}else {
			// hidden으로 기존파일name 불러오기
			
			fileDbtwo = request.getParameter("delthumbnail");
		}
    	
    	ItemVO itemvo = new ItemVO();
    	itemvo.setIcategory(request.getParameter("icategory"));
    	itemvo.setIpurpose(request.getParameter("ipurpose"));
    	itemvo.setItarget(request.getParameter("itarget"));
    	itemvo.setIlavel(request.getParameter("ilavel"));
    	itemvo.setItool(request.getParameter("itool"));
    	itemvo.setIcoachname(request.getParameter("icoachname"));
    	itemvo.setIcoachinfo(request.getParameter("icoachinfo"));
    	itemvo.setIcoachimg(fileDbone);
    	itemvo.setIcoachsummary(request.getParameter("icoachsummary"));
    	itemvo.setIthumbnail(fileDbtwo);
    	itemvo.setIweek(Integer.parseInt(request.getParameter("iweek")));
    	itemvo.setIweektime(Integer.parseInt(request.getParameter("iweektime")));
    	itemvo.setIweekcount(Integer.parseInt(request.getParameter("iweekcount")));
    	itemvo.setIprice(Integer.parseInt(request.getParameter("iprice")));
    	itemvo.setIsale(Integer.parseInt(request.getParameter("isale")));
    	itemvo.setIpeople(Integer.parseInt(request.getParameter("ipeople")));
    	itemvo.setItitle(request.getParameter("ititle"));
    	itemvo.setIgoal(request.getParameter("igoal"));
    	itemvo.setIcontents(request.getParameter("icontents"));
    	itemvo.setIno(Integer.parseInt(request.getParameter("ino")));
    	
    	mitemservice.itemonlinedateService(itemvo);
		
    	return "redirect:/adminitemonlineview/"+request.getParameter("ino");
    }
	// itemonlinedelete 온라인이용권 삭제
	@RequestMapping(value="/adminitemonlinedelete/{ino}")	
	public String itemonlinedelController(@PathVariable int ino) throws Exception {
		
		mitemservice.itemonlinedelService(ino);
				
		return "redirect:/adminitemonline";
	}
	
	
	
	
	// itemoffline 오프라인이용권관리
	@RequestMapping(value="/adminitemoffline")	
	public String adminitemofflineController(Model model) throws Exception {
		
		model.addAttribute("list",mitemservice.itemofflineService());
		
		return "/admin/item/itemoffline";
	}
	// itemofflinement 오프라인신청관리
	@RequestMapping(value="/adminitemofflinement")	
	public String adminitemofflinementController() {
		
		return "/admin/item/itemofflinement";
	}

	// itemofflinewrite 오프라인이용권 글쓰기
	@RequestMapping(value="/adminitemofflinewrite")	
	public String adminitemofflinewriteController() {
		
		return "/admin/item/itemofflinewrite";
	}
	
	// itemofflineinsert 오프라인이용권 글쓰기insert
	@RequestMapping(value="/itemofflineinsert")	
	public String itemofflineinsertController(HttpServletRequest request, @RequestParam MultipartFile icoachimg, MultipartFile ithumbnail) throws Exception{
				
		String fileDbone = "";
    	if(!icoachimg.isEmpty()) {
    		int posi = icoachimg.getOriginalFilename().lastIndexOf(".");
    		String fileExt = icoachimg.getOriginalFilename().substring(posi);
    		String uuid = UUID.randomUUID().toString();
    		String file = fileurlone+uuid+fileExt;
    		icoachimg.transferTo(new File(file));
    		fileDbone = "/coachimg/"+uuid+fileExt;
    	}
    	
    	String fileDbtwo = "";
    	if(!ithumbnail.isEmpty()) {
    		int posi = ithumbnail.getOriginalFilename().lastIndexOf(".");
    		String fileExt = ithumbnail.getOriginalFilename().substring(posi);
    		String uuid = UUID.randomUUID().toString();
    		String file = fileurltwo+uuid+fileExt;
    		ithumbnail.transferTo(new File(file));
    		fileDbtwo = "/thumbnail/"+uuid+fileExt;
    	}
    	
    	ItemVO itemvo = new ItemVO();
    	itemvo.setIcategory(request.getParameter("icategory"));
    	itemvo.setIpurpose(request.getParameter("ipurpose"));
    	itemvo.setItarget(request.getParameter("itarget"));
    	itemvo.setIlavel(request.getParameter("ilavel"));
    	itemvo.setIphone(request.getParameter("iphone"));
    	itemvo.setItool(request.getParameter("itool"));
    	itemvo.setIlocal(request.getParameter("ilocal"));
    	itemvo.setIaddr(request.getParameter("iaddr"));
    	itemvo.setIcoachname(request.getParameter("icoachname"));
    	itemvo.setIcoachinfo(request.getParameter("icoachinfo"));
    	itemvo.setIcoachimg(fileDbone);
    	itemvo.setIcoachsummary(request.getParameter("icoachsummary"));
    	itemvo.setIthumbnail(fileDbtwo);
    	itemvo.setIweek(Integer.parseInt(request.getParameter("iweek")));
    	itemvo.setIweekcount(Integer.parseInt(request.getParameter("iweekcount")));
    	itemvo.setIprice(Integer.parseInt(request.getParameter("iprice")));
    	itemvo.setIsale(Integer.parseInt(request.getParameter("isale")));
    	itemvo.setIpeople(Integer.parseInt(request.getParameter("ipeople")));
    	itemvo.setItitle(request.getParameter("ititle"));
    	itemvo.setIgoal(request.getParameter("igoal"));
    	itemvo.setIcontents(request.getParameter("icontents"));
    	itemvo.setIstatus(0);
    	
    	mitemservice.itemOfflineInsert(itemvo);

		return "redirect:/adminitemoffline";
	}
	// adminitemofflineview 오프라인이용권 어드민상세보기
	@RequestMapping(value="/adminitemofflineview/{ino}")	
	public String adminitemofflineviewController(@PathVariable int ino, Model model) throws Exception {
		
		model.addAttribute("view",mitemservice.itemofflineviewService(ino));
		
		return "/admin/item/itemofflineview";
	}
	// itemofflineupdate 오프라인이용권 수정페이지
	@RequestMapping(value="/adminitemofflineupdate/{ino}")	
	public String adminitemofflineupdateController(@PathVariable int ino, Model model) throws Exception {
		
		model.addAttribute("up",mitemservice.itemofflineviewService(ino));
		
		return "/admin/item/itemofflineupdate";
	}
	// 오프라인 게시글수정
	@RequestMapping("/itemofflinupdateProc")
    private String itemofflinupdateProc(HttpServletRequest request, @RequestParam MultipartFile icoachimg, MultipartFile ithumbnail) throws Exception{ 
		
		String fileDbone = "";
    	
    	if(!icoachimg.isEmpty()) {
			// 1기존파일삭제 후 2파일 저장 및 3경로 디비저장
			
			String coachimg = request.getParameter("delcoachimg");
			// 마지막 / 앞까지 숫자 담기
			int posi = coachimg.lastIndexOf("/");
			// 담은숫자까지 파일명자르기+1
			String fileExt = coachimg.substring(posi+1);
			//현재 게시판에 존재하는 파일객체를 만듬 (파일경로+파일명)
			File file = new File(fileurlone + fileExt);
			
			if(file.exists()) { // 기존파일이 존재하면
				file.delete(); // 기존파일 삭제
			}

			int pos = icoachimg.getOriginalFilename().lastIndexOf(".");
    		String fileEx = icoachimg.getOriginalFilename().substring(pos); 		
    		String uuid = UUID.randomUUID().toString();		
    		String fil = fileurlone+uuid+fileEx;
    		icoachimg.transferTo(new File(fil));
    		
    		fileDbone = "/coachimg/"+uuid+fileEx;
		}else {
			// hidden으로 기존파일name 불러오기
			
			fileDbone = request.getParameter("delcoachimg");
		}
    	
    	String fileDbtwo = "";
    	
    	if(!ithumbnail.isEmpty()) {
			// 1기존파일삭제 후 2파일 저장 및 3경로 디비저장
			
			String thumbnail = request.getParameter("delthumbnail");
			// 마지막 / 앞까지 숫자 담기
			int posi = thumbnail.lastIndexOf("/");
			// 담은숫자까지 파일명자르기+1
			String fileExt = thumbnail.substring(posi+1);
			//현재 게시판에 존재하는 파일객체를 만듬 (파일경로+파일명)
			File file = new File(fileurltwo + fileExt);
			
			if(file.exists()) { // 기존파일이 존재하면
				file.delete(); // 기존파일 삭제
			}

			int pos = ithumbnail.getOriginalFilename().lastIndexOf(".");
    		String fileEx = ithumbnail.getOriginalFilename().substring(pos); 		
    		String uuid = UUID.randomUUID().toString();		
    		String fil = fileurltwo+uuid+fileEx;
    		ithumbnail.transferTo(new File(fil));
    		
    		fileDbtwo = "/thumbnail/"+uuid+fileEx;
		}else {
			// hidden으로 기존파일name 불러오기
			
			fileDbtwo = request.getParameter("delthumbnail");
		}
    	
    	ItemVO itemvo = new ItemVO();
    	itemvo.setIcategory(request.getParameter("icategory"));
    	itemvo.setIpurpose(request.getParameter("ipurpose"));
    	itemvo.setItarget(request.getParameter("itarget"));
    	itemvo.setIlavel(request.getParameter("ilavel"));
    	itemvo.setIphone(request.getParameter("iphone"));
    	itemvo.setItool(request.getParameter("itool"));
    	itemvo.setIlocal(request.getParameter("ilocal"));
    	itemvo.setIaddr(request.getParameter("iaddr"));
    	itemvo.setIcoachname(request.getParameter("icoachname"));
    	itemvo.setIcoachinfo(request.getParameter("icoachinfo"));
    	itemvo.setIcoachimg(fileDbone);
    	itemvo.setIcoachsummary(request.getParameter("icoachsummary"));
    	itemvo.setIthumbnail(fileDbtwo);
    	itemvo.setIweek(Integer.parseInt(request.getParameter("iweek")));
    	itemvo.setIweekcount(Integer.parseInt(request.getParameter("iweekcount")));
    	itemvo.setIprice(Integer.parseInt(request.getParameter("iprice")));
    	itemvo.setIsale(Integer.parseInt(request.getParameter("isale")));
    	itemvo.setIpeople(Integer.parseInt(request.getParameter("ipeople")));
    	itemvo.setItitle(request.getParameter("ititle"));
    	itemvo.setIgoal(request.getParameter("igoal"));
    	itemvo.setIcontents(request.getParameter("icontents"));
    	itemvo.setIno(Integer.parseInt(request.getParameter("ino")));
    	
    	mitemservice.itemofflinedateService(itemvo);
		
    	return "redirect:/adminitemofflineview/"+request.getParameter("ino");
    }
	
	// itemofflinedelete 오프라인이용권 삭제
	@RequestMapping(value="/adminitemofflinedelete/{ino}")	
	public String itemofflinedelController(@PathVariable int ino) throws Exception {
		
		System.out.println(ino);
		
		mitemservice.itemofflinedelService(ino);
				
		return "redirect:/adminitemoffline";
	}


}
