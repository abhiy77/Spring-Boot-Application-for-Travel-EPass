package com.epass.travel.controller;

import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.epass.travel.model.Admin;
import com.epass.travel.model.AjaxObject;
import com.epass.travel.model.User;
import com.epass.travel.service.LoginService;
import com.epass.travel.service.SignUpService;

@Controller
public class UserController {

	@Autowired
	private SignUpService signUpService;
	
	@Autowired
	private LoginService loginService;
	
	@GetMapping({"/home","/"})
	public String homepage() {
		return "redirect:/index.jsp";
	}

	@RequestMapping("/login")
	public String loginPage() {
		return "redirect:/login.jsp";
	}

	@PostMapping(path = "/search", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<AjaxObject> check(@RequestParam("emailInfo") String email
			,@RequestParam("sourceInfo")String source,@RequestParam("destinationInfo") String destination) {
		AjaxObject body = new AjaxObject();
		if (signUpService.isPresent(email)) {
			body.setResult("failed");
		} 
		else if(source.equals(destination)) {
			body.setResult("sourceDestMatched");
		}
		else {
			body.setResult("add");
		}	
		return Arrays.asList(body);
	}

	@PostMapping("/signup")
	public ModelAndView saveUser(HttpServletRequest request, @RequestParam("documentSignUp") MultipartFile file,
			@RequestParam("photoSignUp") MultipartFile imageFile) {
		ModelAndView mv = new ModelAndView();
		User user = signUpService.initialize(request, file, imageFile);
		signUpService.saveUser(user);
		mv.setViewName("redirect:/index.jsp");
		return mv;
	}

	@RequestMapping(value = "/confirm-account", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView confirmUserAccount( @RequestParam("token") String confirmationToken) {
		return signUpService.confirmUserAccount(confirmationToken);
	}

	@RequestMapping("/login/search")
	@ResponseBody
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String str = loginService.login(request);
		if (str.equals("User")) {
			HttpSession session = request.getSession();
			User user = loginService.getUser(request.getParameter("emailLogin"));
			session.setAttribute("user", user);
			mv.setViewName("redirect:/profile.jsp");
		}
		else if(str.equals("Admin")) {
			HttpSession session = request.getSession();
			Admin admin = loginService.getAdmin(request.getParameter("emailLogin")); 
			if(admin != null) {
				loginService.initializeAdmin(session,admin);
				loginService.getCovidInfo(request);
				mv.setViewName("redirect:/admin.jsp");
			}
		}
		else {
			mv = new ModelAndView("/login.jsp");
			mv.addObject("loginStatus",str);
		}
		return mv;
	}
	
	@RequestMapping("/logout")
	public String destroySession(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/login.jsp";
	}
	
	@GetMapping("/request")
	public String decision(HttpServletRequest request) {
		loginService.takeDecision(request);
		return "redirect:/admin.jsp";
	}
}