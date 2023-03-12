package com.example.demo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.BoardVO;
import com.example.demo.domain.memberVO;

@Repository("com.example.demo.mapper.BoardMapper")
public interface BoardMapper {
	
	// boardquestion 비밀번호확인
	public String questionChk(int bno) throws Exception;
	// boardquestion 리스트
	public List<BoardVO> questionlist() throws Exception;
	// boardwrite 글쓰기 작성자
	public memberVO boardwrite(String sessionId) throws Exception;
	// boardquestion 글쓰기
	public int questioninsert(BoardVO board) throws Exception;
	// boardquestion 상세보기
	public BoardVO questionview(int bno) throws Exception;
	// boardquestion 수정
	public int questionupdate(BoardVO board) throws Exception;
	// boardquestion 삭제
	public int questiondelete(int bno) throws Exception;
	
	
	// boardnotice 리스트
	public List<BoardVO> noticelist() throws Exception;
	// boardnotice 글쓰기 작성자
	public memberVO noticewrite(String sessionId) throws Exception;
	// boardnotice 글쓰기
	public int noticeinsert(BoardVO board) throws Exception;
	// boardnotice 상세보기
	public BoardVO noticeview(int bno) throws Exception;
	// boardnotice 수정
	public int noticeupdatddate(BoardVO board) throws Exception;
	// boardnotice 삭제
	public int noticedelete(int bno) throws Exception;
	
	
	// boardpartner 리스트
	public List<BoardVO> partnerlist() throws Exception;
	// boardpartner 글쓰기 작성자
	public memberVO partnerwrite(String sessionId) throws Exception;
	// boardpartner 글쓰기
	public int partnerinsert(BoardVO board) throws Exception;
	// boardpartner 상세보기
	public BoardVO partnerview(int bno) throws Exception;
	// boardpartner 수정
	public int partnerupdatddate(BoardVO board) throws Exception;
	// boardpartner 삭제
	public int partnerdelete(int bno) throws Exception;
}
