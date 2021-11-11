package com.creatorblue.util;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.creatorblue.domain.VideoInfo;

@Controller
public class PageTransition {
	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	@RequestMapping("/main")
	public ModelAndView main(HttpSession session,ModelAndView mav) {
		if(session.getAttribute("currUser")  == null) {
			mav.addObject("msg", "请先登录");
			}
			mav.setViewName("main");
			return mav;
	}

	@RequestMapping("/custlist")
	public ModelAndView fun1(HttpSession session,ModelAndView mav) {
		if(session.getAttribute("currUser")  == null) {
			mav.addObject("msg", "请先登录");
			}
			mav.setViewName("custlist");
			return mav;
	}
	
	@RequestMapping("/umlist")
	public ModelAndView fun2(HttpSession session,ModelAndView mav) {
		if(session.getAttribute("currUser")  == null) {
			mav.addObject("msg", "请先登录");
			}
			mav.setViewName("umlist");
			return mav;
	}
	
	@RequestMapping("/subjlist")
	public ModelAndView fun3(HttpSession session,ModelAndView mav) {
		if(session.getAttribute("currUser")  == null) {
			mav.addObject("msg", "请先登录");
			}
			mav.setViewName("subjlist");
			return mav;
	}
	
	@RequestMapping("/videolist")
	public ModelAndView fun4(HttpSession session,ModelAndView mav) {
		if(session.getAttribute("currUser")  == null) {
			mav.addObject("msg", "请先登录");
			}
		mav.setViewName("videolist");
		return mav;
	}
	
	@RequestMapping("/admininfo")
	public ModelAndView fun5(HttpSession session,ModelAndView mav) {
		if(session.getAttribute("currUser")  == null) {
			mav.addObject("msg", "请先登录");
			}
		mav.setViewName("admininfo");
		return mav;
	}
	
	@RequestMapping("/updatepwd")
	public ModelAndView fun6(HttpSession session,ModelAndView mav) {
		if(session.getAttribute("currUser")  == null) {
			mav.addObject("msg", "请先登录");
			}
			mav.setViewName("updatepwd");
			return mav;
	}
	
	@RequestMapping("/videofrom")
	public ModelAndView fun7(HttpSession session,ModelAndView mav) {
	if(session.getAttribute("currUser")  == null) {
			mav.addObject("msg", "请先登录");
		}
		mav.setViewName("videofrom");
		VideoInfo videoInfo = new VideoInfo();
		mav.addObject("video",videoInfo);
		return mav;
	}
	@RequestMapping("/login")
	public ModelAndView fun8(HttpSession session) {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@RequestMapping("/cbmv-index")
	public ModelAndView fun9(HttpSession session) {
		ModelAndView mav = new ModelAndView("cbmv-index");
		session.removeAttribute("msg");
		return mav;
	}
	
	@RequestMapping("/cbmv-login")
	public ModelAndView fun10(HttpSession session) {
		ModelAndView mav = new ModelAndView("cbmv-login");
		return mav;
	}
	
	@RequestMapping("/register")
	public ModelAndView fun11() {
		ModelAndView mav = new ModelAndView("register");
		return mav;
	}
	
	@RequestMapping("/cbmv-custInfo")
	public ModelAndView fun13() {
		ModelAndView mav = new ModelAndView("cbmv-custInfo");
		return mav;
	}
	
	@RequestMapping("/cbmv-video")
	public ModelAndView fun12(HttpSession session,ModelAndView mav) {
		System.out.println(session.getAttribute("name"));
		if(session.getAttribute("name")  == null) {
			mav.addObject("msg", "请先登录");
		}
		mav.setViewName("cbmv-video");
		return mav;
	}
}
