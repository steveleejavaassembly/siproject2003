package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.lawmaker;

@Mapper
public interface InfoDao {

	public int test() throws Exception;

	public ArrayList<lawmaker> selectLawmaker();
	
}
