package com.example.demo;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.example.demo.dao.InfoDao;
import com.example.demo.service.CommitteeService;

@Controller
public class TestController2 {
	
	@Autowired
	InfoDao infodao;
	
	@Autowired
	CommitteeService service;
	
	@RequestMapping("/testjsp")
	public String root() throws Exception {
		
		int testno = infodao.test();
		System.out.println("testno:" + testno);
		System.out.println("testno2:" + testno);
		System.out.println("testno3:" + testno);
		
		return "testjsp";
	}
	
	@RequestMapping(value = "/committee")
	public String committee() {
		
		System.out.println("committee");
		
		return "committee/committee";
	}
	
	@RequestMapping(value = "/committeedb")
	public String committeedb(Model model, HttpServletRequest request) {
		
		System.out.println("committeedb");
		

		JSONArray lawmakerArr = service.getLawmakerList();
		System.out.println("lawmakerArr:" + lawmakerArr.toJSONString());
		//System.out.println("evaluationArr:" + evaluationArr.toString());
		//System.out.println("interestArr:" + interestArr.toString());

		model.addAttribute("lawmakerlist", lawmakerArr);
		
		return "committee/committeedb";
	}	

}
