package com.spring.mvc.board.commons.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//인터셉터 클래스를 만드려면 HandlerInterceptorAdapter클래스를 상속
public class TestInterceptor extends HandlerInterceptorAdapter{

	
	//preHandle은 컨트롤러로 들어가기 전 처리해야 할 로직을 작성
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("테스트 인터셉터의 preHandle이 작동");
		
		return true; //true면 컨트롤러로 진입, false면 진입 실패
	}
	
	//postHandle은 컨트롤러를 나갈 때 공통 처리해야 할 내용을 작성
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("테스트 인터셉터의 postHandle 작동");
		
		Object data = modelAndView.getModel().get("data");
		
		if(data != null) {
			request.getSession().setAttribute("data", "인터셉터가 가로챈 바뀐 데이터");
			response.sendRedirect("/test1");
		}
	}
}


