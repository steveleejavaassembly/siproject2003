package com.example.demo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.InfoDao;
import com.example.demo.dao.getMemberDao;
import com.example.demo.dto.lawmaker;
import com.example.demo.dto.Member;

@Controller
public class TestController2 {
	
	@Autowired
	InfoDao infodao;
	
	@Autowired
	getMemberDao memberDao;
	
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
	
	@RequestMapping(value = "/lawmaker")
	public String getLawmaker() {
		ArrayList<lawmaker> testno = infodao.selectLawmaker();
		
		System.out.println(testno);
		
		return "committee/committee";
	}
	
	@RequestMapping(value = "/loginform")
	public String loginform() {
		System.out.println("loginform");
		
		//return "login/loginForm";
		//return "login/loginGetForm";
		//return "login/login_post";
		return "login/login_post2";
	}
	
//	@RequestMapping(value = "/login")
//	public ModelAndView login(HttpServletRequest requst,HttpServletResponse response) {
//		//Map<String,Object> model = new HashMap<>();
//		
//		ModelAndView mv = new ModelAndView();
//		
//		String id = requst.getParameter("id");
//		String pw = requst.getParameter("pw");
//		
//		int memebrs = memberDao.selectMember(id, pw);
//		
//		System.out.println(memebrs);
//		
//		mv.addObject("usercnt",memebrs);
//		mv.setViewName("login/login");
//
//		return mv;
//	}
	
	@RequestMapping(value="/login2")
	public String login2(Member member,Model model) {
		
		//ModelAndView mv = new ModelAndView();
		
		//int memebrs = memberDao.selectMember(member.getUserName(), member.getPassword());
		int memebrs = memberDao.selectMember(member);
		System.out.println(memebrs);
		//mv.addObject("usercnt",memebrs);
		//mv.setViewName("login/login");
		
		model.addAttribute("members",memebrs);

		return "login/loginForm";
	}
	
	@RequestMapping(value="login/login")
	public void login_Result(Member member,Model model) {
		System.out.println(model);
		//int memebrs = memberDao.selectMember(member.getUserName(), member.getPassword());
		int memebrs = memberDao.selectMember(member);
		model.addAttribute("usercnt",memebrs);
	}
	
	@RequestMapping(value = "/ajaxlogin")
	@ResponseBody
	//public int ajaxlogin(HttpServletRequest requst, HttpServletResponse response) {
//	public int ajaxlogin(@RequestParam("userName")String userName, 
//						 @RequestParam("password")String password) {
	public int ajaxlogin(@RequestParam Map<String,String> map) {
		//Map<String,Object> model = new HashMap<>();
		
//		String id = requst.getParameter("id");
//		String pw = requst.getParameter("pw");
		
		
		//int memebrs = memberDao.selectMember(id, pw);
		//int memebrs = memberDao.selectGetMember(userName,password);
		int memebrs = memberDao.selectGetMember(map.get("userName"),map.get("password"));
		
		System.out.println(memebrs);

		return memebrs;
	}
	
	@RequestMapping(value = "/ajaxlogin_post", method = RequestMethod.POST)
	public @ResponseBody int ajaxlogin_post(@RequestBody Map<String,String> params) {
		//Map<String,Object> model = new HashMap<>();
		
//		String id = requst.getParameter("id");
//		String pw = requst.getParameter("pw");
		
		int memebrs = memberDao.selectPostMember(params.get("userName"), params.get("password"));
		
		System.out.println(memebrs);

		return memebrs;
	}
	
	@RequestMapping(value = "/ajaxlogin_post2", method = RequestMethod.POST)
	public @ResponseBody String ajaxlogin_post2(@RequestBody String userName) {
		//Map<String,Object> model = new HashMap<>();
		
//		String id = requst.getParameter("id");
//		String pw = requst.getParameter("pw");
		
		//int memebrs = memberDao.selectPostMember(params.get("userName"), params.get("password"));
		
		System.out.println(userName);

		return userName;
	}
	
	@RequestMapping(value = "/ajaxlogin_post3", method = RequestMethod.POST)
	public @ResponseBody String ajaxlogin_post3(@RequestParam("userName")String userName, 
												@RequestParam("password")String password) {
		//Map<String,Object> model = new HashMap<>();
		
//		String id = requst.getParameter("id");
//		String pw = requst.getParameter("pw");
		System.out.println(userName);
		System.out.println(password);
		
		//int memebrs = memberDao.selectPostMember(userName,password);
		
		//System.out.println(memebrs);

		return userName +","+ password;
	}
	
	@RequestMapping(value = "/ajaxlogin_post4", method = RequestMethod.POST)
	public @ResponseBody String ajaxlogin_post4(@RequestBody String param) {
		//Map<String,Object> model = new HashMap<>();
		
		String params[] = param.split(",");
		System.out.println(params[0]);
		System.out.println(params[1]);
		
		//int memebrs = memberDao.selectPostMember(userName,password);
		
		//System.out.println(memebrs);

		return param;
	}

}
