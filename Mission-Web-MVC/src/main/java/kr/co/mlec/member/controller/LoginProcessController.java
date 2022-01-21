package kr.co.mlec.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.controller.Controller;
import kr.co.mlec.member.service.LoginService;
import kr.co.mlec.member.vo.LoginVO;

public class LoginProcessController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		LoginVO loginVO = new LoginVO(id, password);
		
		LoginService service = new LoginService();
		LoginVO userVO = service.login(loginVO);
		
		String url = "";
		if(userVO == null) {
			// 로그인 실패
			url = "/login.do";
		} else {
			// 로그인 성공
			url = "";
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
			
		}
				
		return "redirect:" + url;	// "redirect:/Mission-Web-MVC/login.do"
	}
	/*
	@Override
	public String handleRequest(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		LoginVO loginVO = new LoginVO(id, password);
		
		LoginService service = new LoginService();
		LoginVO userVO = service.login(loginVO);
		
		String url = "";
		String msg = "";
		if(userVO == null) {
			// 로그인 실패
			url = request.getContextPath() + "/login.do";
			msg = "아이디 또는 패스워드가 잘못입력되었습니다";
		} else {
			// 로그인 성공
			url = request.getContextPath();
			msg = "로그인을 성공하였습니다";
		}
		
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);
		
		return "/jsp/login/loginProcess.jsp";
	}
	*/
}









