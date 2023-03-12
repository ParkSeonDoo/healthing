package com.example.demo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.domain.SurveyVO;
import com.example.demo.domain.memberVO;
import com.example.demo.mapper.SurveyMapper;

@Service("com.example.demo.service.SurveyService")
public class SurveyService {

	@Resource(name="com.example.demo.mapper.SurveyMapper")
	SurveyMapper mSurveyMapper;
	
	public String surveyInsertService(SurveyVO msurveyVO) throws Exception{

		return mSurveyMapper.surveyInsert(msurveyVO);
	}
	public memberVO ResultViewService(String sessionId) throws Exception{

		return mSurveyMapper.uresultViewOne(sessionId);
	}
	public int surveyResultService(String sessionId) throws Exception{

		return mSurveyMapper.surveyResult(sessionId);
	}
	public SurveyVO surveySessionService(int sessionuno) throws Exception{

		return mSurveyMapper.surveySession(sessionuno);
	}
}
