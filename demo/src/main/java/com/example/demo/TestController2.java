package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.InfoDao;

@Controller
public class TestController2 {
	
	@Autowired
	InfoDao infodao;
	
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

}
