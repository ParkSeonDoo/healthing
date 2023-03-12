package com.example.demo.mapper;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.memberVO;

@Repository("com.example.demo.mapper.UserMapper")
public interface UserMapper {

	public String memberJoin(memberVO mmemberVO) throws Exception;
	
	public int uidChk(String uid) throws Exception;	 // uidChk 반환형 (String uid)전달형

	public int uphoneChk(String uphone) throws Exception;	 // uidChk 반환형 (String uid)전달형

	public int uemailChk(String uemail) throws Exception;	 // uidChk 반환형 (String uid)전달형

	public int uloginChk(String uid, String upwd) throws Exception;	 // uidChk 반환형 (String uid)전달형

	public memberVO umypageView(String sessionId) throws Exception;	 // uidChk 반환형 (String uid)전달형

}
