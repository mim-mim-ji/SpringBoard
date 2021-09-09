package com.spring.mvc.user.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.spring.mvc.user.model.UserVO;
import com.spring.mvc.user.service.IUserService;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private IUserService service;
	
	//아이디 중복 확인 요청 처리
	@PostMapping("/checkId")
	public String checkId(@RequestBody String account) {
		
		System.out.println("/user/checkId : POST 요청 발생!");
		System.out.println("parameter : "+account);
		
		int checkNum = service.checkId(account);
		if(checkNum == 1) {
			System.out.println("아이디가 중복됨");
			return "NO";
		}else {
			System.out.println("아이디 사용 가능");
			return "OK";
		}
	}
	
	
	//회원가입 요청 처리
	@PostMapping("/")
	public String register(@RequestBody UserVO user) {
		
		System.out.println("/user/ : POST요청 발생");
		System.out.println("param : "+user);
		
		service.register(user);		
		return "joinSuccess";
	}
	
	//로그인 요청 처리
	@PostMapping("/loginCheck")
	public String loginCheck(@RequestBody UserVO user
								  //, HttpServletRequest request
									, HttpSession session
									, HttpServletResponse response) {
		
		System.out.println("/user/loginCheck : POST요청 발생");
		System.out.println("param : "+user);
		
		/*
		 * 클라이언트가 전송한 id값과 pw값을 가지고 DB에서 회원의 정보를 조회해서 불러온 다음 값 비교를 통해
		 * 1. 아이디가 없는 경우 클라이언트 쪽으로 문자열 idFail전송
		 * 2. 비밀번호가 틀렸을 경우 문자열 pwFail전송
		 * 3. 로그인 성공 시 문자열 loginSuccess 전송
		 */
		
		//서버에서 세션 객체를 얻는 방법
		//1. HttpServletRequest 객체 사용
		//HttpSession session = request.getSession();
		
		//2. HttpSession session 사용
		
		String result = null;
				
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();		
		UserVO dbData = service.selectOne(user.getAccount());
		
		if(dbData != null) {
			if(encoder.matches(user.getPassword(), dbData.getPassword())) {
				session.setAttribute("login", dbData);
				result = "loginSuccess";
				
				long limitTime = 60 * 60 * 24 * 30;
				
				//자동 로그인 체크시 처리해야 할 내용
				if(user.isAutoLogin()) {
					System.out.println("자동 로그인 쿠키 생성 중");
					Cookie loginCookie = new Cookie("loginCookie", session.getId());;
					loginCookie.setPath("/");
					loginCookie.setMaxAge((int) limitTime);
					response.addCookie(loginCookie);
					
					//자동로그인 유지시간을 날짜객체로 변환
					long expiredDate = System.currentTimeMillis() + (limitTime * 1000);
					
					//Date객체의 생성자에 매개값으로 밀리초의 시간을 전달하면 날짜로 변환해 줌
					Date limitDate = new Date(expiredDate);
					
					service.keepLogin(session.getId(), limitDate, user.getAccount());
				}
				
			} else {
				result = "pwFail";
			}
		} else {
			result = "idFail";			
		}
		return result;
			
	}
	
	
	//로그아웃 처리
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session, HttpServletRequest request
								,HttpServletResponse response) {
		
		System.out.println("/user/logout 요청");
		
		UserVO vo = (UserVO) session.getAttribute("login");
		
		if(vo != null) {
			session.invalidate();
			//또는 session.removeAttribute("login");
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin("none", new Date(), vo.getAccount());
			}
		} 
		return new ModelAndView("redirect:/");
	}
	
}






