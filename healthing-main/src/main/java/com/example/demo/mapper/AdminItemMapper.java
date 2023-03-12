package com.example.demo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.ItemVO;

@Repository("com.example.demo.mapper.AdminItemMapper")
public interface AdminItemMapper {
	
	// itemoffline 게시판리스트
	public List<ItemVO> itemofflinist() throws Exception;
	// itemoffline 글쓰기
	public int itemoffinsert(ItemVO itemvo) throws Exception;
	// itemofflinview 상세페이지
	public ItemVO itemofflineview(int ino) throws Exception;
	// itemofflineupdate 수정
	public int itemofflineupdate(ItemVO itemvo) throws Exception;
	// itemofflinedel 삭제
	public int itemofflindelete(int ino) throws Exception;
	
	// itemonline 게시판리스트
	public List<ItemVO> itemonlinist() throws Exception;
	// itemonline 글쓰기
	public int itemoninsert(ItemVO itemvo) throws Exception;
	// itemonlinview 상세페이지
	public ItemVO itemonlineview(int ino) throws Exception;
	// itemonlineupdate 수정
	public int itemonlineupdate(ItemVO itemvo) throws Exception;
	// itemonlinedel 삭제
	public int itemonlindelete(int ino) throws Exception;
}
