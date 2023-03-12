package com.example.demo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.ItemVO;


@Repository("com.example.demo.mapper.ItemMapper")
public interface ItemMapper {
	
	// 오프라인 게시판리스트
	public List<ItemVO> itemofflinist() throws Exception;
	// 오프라인 상세보기
	public ItemVO itemofflineview(int ino) throws Exception;
	
	// 온랑인 게시판리스트
	public List<ItemVO> itemonlinist() throws Exception;
	// 온라인 상세보기
	public ItemVO itemonlineview(int ino) throws Exception;
}
