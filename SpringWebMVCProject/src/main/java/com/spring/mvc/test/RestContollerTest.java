package com.spring.mvc.test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

//@Controller
@RestController
@RequestMapping("/rest")
public class RestContollerTest {
	
	/* 
	 * @ResponseBody
	 * - 리턴 데이터를 viewResolver에게 전달하지 않고
	 *   클라이언트에게 해당 데이터를 바로 응답하게 한다
	 */
	
	@GetMapping("hello")
	//@ResponseBody
	public String hello() {
		return "Helllo world!";
		
	}
	
	
	@GetMapping("/hobbys")
	//@ResponseBody
	public List<String> hobbys(){
		List<String> hobbys = Arrays.asList("수영","영화감상");
		return hobbys;
	}
	
	@GetMapping("/study")
	//@ResponseBody
	public Map<String, Object> study(){
		Map<String, Object> subject = new HashMap<String, Object>();
		subject.put("자바", "java");
		subject.put("jsp", "java server page");
		return subject;
	}
	
	
	@GetMapping("/person")
	//@ResponseBody
	public Person person() {
		Person p = new Person();
		
		p.setName("김철수");
		p.setAge(20);
		p.setHobbys(Arrays.asList("수영","독서"));
		return p;
	}
	
	
}
