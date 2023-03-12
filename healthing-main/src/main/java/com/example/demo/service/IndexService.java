package com.example.demo.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.example.demo.mapper.IndexMapper;

@Service("com.example.demo.service.IndexService")
public class IndexService {

	@Resource(name="com.example.demo.mapper.IndexMapper")
	IndexMapper mindexMapper;
}
