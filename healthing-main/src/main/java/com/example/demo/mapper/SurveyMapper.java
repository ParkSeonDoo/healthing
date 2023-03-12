package com.example.demo.mapper;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.SurveyVO;
import com.example.demo.domain.memberVO;

@Repository("com.example.demo.mapper.SurveyMapper")
public interface SurveyMapper {

	public String surveyInsert(SurveyVO msurveyVO) throws Exception;

	public memberVO uresultViewOne(String sessionId) throws Exception;	 // uidChk 반환형 (String uid)전달형

	public int surveyResult(String sessionId) throws Exception;	 // uidChk 반환형 (String uid)전달형

	public SurveyVO surveySession(int sessionuno) throws Exception;	 // uidChk 반환형 (String uid)전달형
}
