package com.traveler.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.traveler.vo.MemberVO;
import com.traveler.service.AuthService;
import com.traveler.service.AuthServiceImpl;

@Controller
@RequestMapping (path = { "/account" })
public class AccountController {
	
	@Autowired
	@Qualifier("authService") // <bean id="authService"...>인 객체를 주입하겠다는 뜻
	private AuthService authService;
	
	@GetMapping(path= {"/register.action"})
	public String showRegisterForm() {

		return "account/register";
	}
	
	@PostMapping(path= {"/register.action"})
	public String Register(MemberVO member) {

		// 1. 데이터 읽기
		// 2. 데이터 처리(데이터베이스에 회원 정보 저장)
//		AuthService authService = new AuthServiceImpl();	// 위에 AutoWired랑 Qualifier로 인젝션 받아서 더 이상 필요가 없어졌다.
		authService.registerMember(member);
		
		// 3. 로그인 화면으로 이동
		
		return "redirect:login.action";
	}
	
	@GetMapping(path = {"/login.action"})
	public String showLoginForm() {
		
		return "account/login";
	}
	
	@PostMapping(path = {"/login.action"})
	public String Login(String memberID, String passwd, HttpSession session) {
		
		// 1. 요청 데이터 읽기(전달인자로 대체)
		
		// 2. 데이터 처리(로그인 데이터 조회 -> 조회 결과에 따라 로그인)
//		AuthService authService = new AuthServiceImpl();	// 위에 AutoWired랑 Qualifier로 인젝션 받아서 더 이상 필요가 없어졌다.
		MemberVO member = authService.findMemberByIdAndPasswd(memberID, passwd);
		
		if (member != null) {
			// JSP에서는 session이 내장객체이지만 서블릿에서는 아니기 때문에 req.getSession()으로 세션 가져와야 함.
			session.setAttribute("loginuser", member); // 로그인 처리 -> session 객체에 데이터 저장하는 작업
			
			// 3. 응답 컨텐츠 생성 ( JSP로 forward 또는 다른 Servlet으로 redirect 이동 )
			return "redirect:/home.action";
		} else {
			return "redirect:/account/login.action";
		}
	}
	
	@GetMapping(path = {"/logout.action"})
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "redirect:/home.action";
	}
	
}
