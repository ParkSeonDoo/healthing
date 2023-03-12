package com.example.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.domain.BoardVO;
import com.example.demo.domain.memberVO;
import com.example.demo.mapper.BoardMapper;
 
@Service("com.example.demo.service.BoardService")
public class BoardService {
	
	@Resource(name="com.example.demo.mapper.BoardMapper")
	BoardMapper mboardMapper;
	
	// boardquestion 비밀번호확인
	public String questionChkService(int bno) throws Exception{
		return mboardMapper.questionChk(bno);
	}
	// boardquestion 리스트
	public List<BoardVO> boardquestionlist() throws Exception{	
		return mboardMapper.questionlist();
	}
	// boardwrite 글쓰기 작성자
	public memberVO boardwrite(String sessionId) throws Exception{
		return mboardMapper.boardwrite(sessionId);
	}
	// boardquestion 글쓰기
	public int boardquestion(BoardVO board) throws Exception{
		return mboardMapper.questioninsert(board);
	}
	// boardquestion 상세보기
	public BoardVO questionviewService(int bno) throws Exception{
		return mboardMapper.questionview(bno);
	}
	// boardquestion 수정
	public int boardquestionProc(BoardVO board) throws Exception{
		return mboardMapper.questionupdate(board);
	}
	// boardquestion 삭제
	public int boarddeleteService(int bno) throws Exception{
		return mboardMapper.questiondelete(bno);
	}
	
	// boardnotice 리스트
	public List<BoardVO> noticeService() throws Exception{	
		return mboardMapper.noticelist();
	}
	// boardnoticewrite 글쓰기 작성자
	public memberVO noticewriteService(String sessionId) throws Exception{
		return mboardMapper.noticewrite(sessionId);
	}
	// boardnotice 글쓰기
	public int noticeinsertService(BoardVO board) throws Exception{
		return mboardMapper.noticeinsert(board);
	}
	// boardnoticeview 상세보기
	public BoardVO noticeviewService(int bno) throws Exception{
		return mboardMapper.noticeview(bno);
	}
	// boardnotice 수정
	public int noticeupdateProc(BoardVO board) throws Exception{
		return mboardMapper.noticeupdatddate(board);
	}
	// boardnotice 삭제
	public int noticedeleteService(int bno) throws Exception{
		return mboardMapper.noticedelete(bno);
	}
	
	
	// partner 리스트
	public List<BoardVO> partnerService() throws Exception{	
		return mboardMapper.partnerlist();
	}
	// partner 글쓰기 작성자
	public memberVO partnerwriteService(String sessionId) throws Exception{
		return mboardMapper.partnerwrite(sessionId);
	}
	// partner 글쓰기
	public int partnerinsertService(BoardVO board) throws Exception{
		return mboardMapper.partnerinsert(board);
	}
	// partner 상세보기
	public BoardVO partnerviewService(int bno) throws Exception{
		return mboardMapper.partnerview(bno);
	}
	// partner 수정
	public int boardpartnerProc(BoardVO board) throws Exception{
		return mboardMapper.partnerupdatddate(board);
	}
	// partner 삭제
	public int partnerdeleteService(int bno) throws Exception{
		return mboardMapper.partnerdelete(bno);
	}
}
