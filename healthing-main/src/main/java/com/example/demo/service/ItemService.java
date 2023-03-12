package com.example.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.domain.ItemVO;
import com.example.demo.mapper.ItemMapper;


@Service("com.example.demo.service.ItemService")
public class ItemService {

	@Resource(name="com.example.demo.mapper.ItemMapper")
	ItemMapper mitmeMapper;
	// 오프라인 게시판리스트
    public List<ItemVO> itemofflineService() throws Exception{
        
        return mitmeMapper.itemofflinist();
    }
	// 오프라인 상세보기
	public ItemVO itemofflineviewService(int ino) throws Exception {

		return mitmeMapper.itemofflineview(ino);
	}
	
	// 온라인 게시판리스트
	public List<ItemVO> itemonlineService() throws Exception{
		
		return mitmeMapper.itemonlinist();
	}
	// 온라인 상세보기
	public ItemVO itemonlineviewService(int ino) throws Exception {
		
		return mitmeMapper.itemonlineview(ino);
	}
}
