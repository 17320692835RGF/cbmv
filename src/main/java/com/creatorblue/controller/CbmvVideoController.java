package com.creatorblue.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.creatorblue.domain.VideoInfo;
import com.creatorblue.service.CbmvVideoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.sf.json.JSONArray;


@Controller
@RequestMapping("/cbmvVideo")
public class CbmvVideoController {
	@Autowired
	private CbmvVideoService cbmvVideoService;
	//查询所有
	 @RequestMapping(value="/queryVideos",produces="text/html;charset=utf-8")
	 @ResponseBody
	public String queryVideos(int pageNum,String techDirection,HttpSession session) {
		 int  pageSize = 4;
		 PageHelper.startPage(pageNum,pageSize);
		List<VideoInfo>  list =  cbmvVideoService.queryVideos(techDirection);
		PageInfo<VideoInfo> pages = new PageInfo<>(list);
		return  JSONArray.fromObject(pages).toString();
	}
	@RequestMapping(value="/VideoId",produces="text/html;charset=utf-8")
	public ModelAndView videoId(String videoId,ModelAndView mv ,HttpSession session,RedirectAttributes attr) {
		if(session.getAttribute("name") == null) {
			attr.addFlashAttribute("msg", "请登录");
			mv.setViewName("redirect:/cbmv-index.html");
			return mv;
		}
		 VideoInfo videoInfo =  cbmvVideoService.video(videoId, session);
		mv.setViewName("cbmv-video");
		mv.addObject("video", videoInfo);
		return mv;
	}
	@RequestMapping(value="/addup",produces="text/html;charset=utf-8")
	@ResponseBody
	public String  addup(String  videoId ,HttpSession session) {
		if(cbmvVideoService.booleanup(session, videoId) == 0 ) {
		cbmvVideoService.addup(videoId, session);
		}else {
			cbmvVideoService.delup(session, videoId);
		}
		//统计点赞数
		int count =cbmvVideoService.countup(videoId);
		cbmvVideoService.updategood(videoId, count);
		return String.valueOf(count);
	}
	@RequestMapping(value="/ok",produces="text/html;charset=utf-8")
	@ResponseBody
	public String ok(String  videoId ,HttpSession session) {
		int  t =cbmvVideoService.booleanup(session, videoId);
		return String.valueOf(t);
	}
	//收藏
	@RequestMapping(value="/addcol",produces="text/html;charset=utf-8")
	@ResponseBody
	public String  addcol(String videoId, HttpSession session) {
		 if(cbmvVideoService.booleancol(session, videoId)  == 0) {
			 	cbmvVideoService.colup(videoId, session);
			 
		 }else {
			 cbmvVideoService.delcol(session, videoId);
		 }
		    int count = cbmvVideoService.countcol(videoId);
		    return String.valueOf(count) ;
	}
	@RequestMapping(value="/ok2",produces="text/html;charset=utf-8")
	@ResponseBody
	public String ok2(String  videoId ,HttpSession session) {
		int  t =cbmvVideoService.booleancol(session, videoId);
		return String.valueOf(t);
	}
	
}
