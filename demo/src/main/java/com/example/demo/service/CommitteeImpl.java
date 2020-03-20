package com.example.demo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.common.JsonUtil;


@Service
public class CommitteeImpl implements CommitteeService {

	@Autowired
	private SqlSession sqlSession;

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 1.의원현황 기본 리스트
	@Override
	public JSONArray getLawmakerList() {

		JSONArray jarr = new JSONArray();

		List<Map<String, Object>> lawmakerlist = sqlSession.selectList("lawmaker.getLawmakerList");

		jarr = JsonUtil.getJsonArrayFromList(lawmakerlist);

		return jarr;
	}



}