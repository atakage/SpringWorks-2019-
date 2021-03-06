package com.biz.ems.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.ems.domain.NaverMember;
import com.biz.ems.domain.NaverReturnAuth;
import com.biz.ems.domain.NaverTokenVO;
import com.biz.ems.service.NaverLoginService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
@RequestMapping(value="/member")
public class MemberController {

	private final NaverLoginService naverLoginService;
	
	@RequestMapping(value="/naver", method=RequestMethod.GET )
	public String naver_login() {
		
		
		String apiURL = naverLoginService.oAuthLoginGet();
		
		return "redirect:"+apiURL;
	}
	
	
	
	
	/*
	 *  네이버에 로그인 요청을 보낼 때 네이버가 return할 url 부분
	 *  외부에서 접속할 수 있는 url이어야 함
	 *  
	 *  네이버에 로그인이 성공하면 실제로 네이버에서 로그인 인증정보를 보내줌
	 */
	//@ResponseBody
	@RequestMapping(value="/naver/ok", method=RequestMethod.GET)
	public String naver_ok(@ModelAttribute NaverReturnAuth naverOK, HttpSession httpSession) {
		
		
		NaverTokenVO nToken = naverLoginService.oAuthAccessGetToken(naverOK);
		
		
		NaverMember memberVO = naverLoginService.getNaverMemberInfo(nToken);
		
		
		httpSession.setAttribute("MEMBER", memberVO);
		
		return "redirect:/ems/list";
		
	}
	
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logOut(HttpSession httpSession) {
		
		httpSession.removeAttribute("MEMBER");
		
		return "redirect:/ems/list";
	}
	
}
