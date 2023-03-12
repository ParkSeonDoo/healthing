package com.example.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.domain.ItemVO;
import com.example.demo.mapper.AdminItemMapper;

@Service("com.example.demo.service.AdminItemService")
public class AdminItemService {
	
	@Resource(name="com.example.demo.mapper.AdminItemMapper")
	AdminItemMapper madminitmeMapper;
	
	// itemoffline 게시판리스트
    public List<ItemVO> itemofflineService() throws Exception{
        
        return madminitmeMapper.itemofflinist();
    }
	// itemoffline 글쓰기
    public int itemOfflineInsert(ItemVO itemvo) throws Exception{
        
        return madminitmeMapper.itemoffinsert(itemvo);
    }
    // itemoffline 상세보기
 	public ItemVO itemofflineviewService(int ino) throws Exception {

 		return madminitmeMapper.itemofflineview(ino);
 	}
 	// itemoffline 수정
 	public int itemofflinedateService(ItemVO itemvo) throws Exception {
 		return madminitmeMapper.itemofflineupdate(itemvo);
 	}
 	// itemoffline 삭제
 	public int itemofflinedelService(int ino) throws Exception {
 		return madminitmeMapper.itemofflindelete(ino);
 	}
 	
 	
 	// itemonline 게시판리스트
    public List<ItemVO> itemonlineService() throws Exception{
        
        return madminitmeMapper.itemonlinist();
    }
    // itemonline 글쓰기
    public int itemOnlineInsert(ItemVO itemvo) throws Exception{
        
        return madminitmeMapper.itemoninsert(itemvo);
    }
    // itemonline 상세보기
  	public ItemVO itemonlineviewService(int ino) throws Exception {

  		return madminitmeMapper.itemonlineview(ino);
  	}
  	// itemonline 수정
  	public int itemonlinedateService(ItemVO itemvo) throws Exception {
  		return madminitmeMapper.itemonlineupdate(itemvo);
  	}
  	// itemoffline 삭제
  	public int itemonlinedelService(int ino) throws Exception {
  		return madminitmeMapper.itemonlindelete(ino);
  	}
}
