package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping("/")
	public String WelcomeUser()
	{
		System.out.println("Successfully Launched");
		return "login";
	}
	
	@RequestMapping(value="/validate",method=RequestMethod.POST)
	public ModelAndView validate(HttpServletResponse response,
			HttpServletRequest request){
		
		String name=request.getParameter("uname");
		String password=request.getParameter("password");
		
		System.out.println(name);
		System.out.println(password);
		
		if(name.equals("loki") && (password.equals("123"))){
			return new ModelAndView("welcome","msg","Hello User");
		}
		else{
			return new ModelAndView("error","msg","Sorry user");
		}	
	}
}
