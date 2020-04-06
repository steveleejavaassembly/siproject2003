package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.dto.lawmaker;
import com.example.demo.dto.Member;

@Mapper
public interface getMemberDao {

	public int test() throws Exception;

//	public ArrayList<member> selectMember(String id, String pw);
	
	//public int selectMember(String id, String pw);
	public int selectMember(Member member);
	
	public int selectGetMember(String userName, String password);
	
	public int selectPostMember(String userName, String password);
}
