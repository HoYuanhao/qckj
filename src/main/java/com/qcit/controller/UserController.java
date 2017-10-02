package com.qcit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.qcit.model.Student;
import com.qcit.service.LoginLogService;
import com.qcit.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService  userservice;
	@Autowired
	private LoginLogService loginlogservice;
	
	@RequestMapping("/test")
	public @ResponseBody
	String test(){
		
		return JSONObject.toJSONString("success");
	}
	@RequestMapping("index.html")
	public String index(Model model){
		model.addAttribute("message", "欢迎使用奇创科技协会管理系统！");
		return "forward:/WEB-INF/jsp/index.jsp";
	}
	
	
	@RequestMapping(value="login.html",method=RequestMethod.POST)
	public String login(@RequestParam("password")String password,
			@RequestParam("username")String username,
			HttpServletRequest request,
			String authority,Model model) throws Exception{
		String view="/WEB-INF/jsp/index.jsp";
		HttpSession session =request.getSession(true);
		if(authority.equals("1")){
		Student student = userservice.getStudentByUsernameAndPwd(username, password);
		if(student!=null){
			session.setAttribute("student", student);
			loginlogservice.setLoginLog(student.getId(), request.getRemoteAddr(), 1);
			model.addAttribute("message", "欢迎"+student.getUsername()+"ͬ同学！");
			view="forward:/WEB-INF/jsp/index.jsp";
		}
		else{
			model.addAttribute("message", "登录失败！");
		}
		}
		
		else if(authority.equals("2")){
//			
//			else{
//				model.addAttribute("message", "登录失败！");
//			}
		}
		
		
		return view;
	}

}
