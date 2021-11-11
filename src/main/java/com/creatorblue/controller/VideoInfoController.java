package com.creatorblue.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.creatorblue.domain.VideoInfo;
import com.creatorblue.service.VideoInfoService;
import com.creatorblue.util.VideoUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/Video")
public class VideoInfoController {
	@Autowired
	private VideoInfoService videoInfoService;

	@RequestMapping(value = "/queryAll", produces = "text/htm;charset=utf-8")
	@ResponseBody
	public String queryVideoAll(int pageNum) {
		int pageSize = 3;
		PageHelper.startPage(pageNum, pageSize);
		List<VideoInfo> list = videoInfoService.queryVideoAll();
		PageInfo<VideoInfo> pages = new PageInfo<VideoInfo>(list);
		return JSONArray.fromObject(pages).toString();
	}
	// 修改保存和新增
	@RequestMapping(value = "/saveVideo", produces = "text/htm;charset=utf-8")
	@ResponseBody
	public String saveVideo(@RequestParam("file") CommonsMultipartFile file,
			@RequestParam("Picture") CommonsMultipartFile Picture, VideoInfo videoInfo, HttpSession session) {
		// 判断是否为修改页面
		if (videoInfo.getVideoId().length() == 0) {
				int i = VideoUtil.upload(Picture, VideoUtil.PTHP);
				videoInfo.setCoverPhoto(Picture.getOriginalFilename());
				if(i == 0) {
					return "图片上传失败";
				}
			int t = VideoUtil.upload(file, VideoUtil.PATHV);
			if (t == 0) {
				return "视频上传失败";
			}
			videoInfo.setVideoAddress(file.getOriginalFilename());
			String upLoader = (String) session.getAttribute("currUser");
			videoInfo.setUpLoader(upLoader);
			int st = videoInfoService.saveVideo(videoInfo);
			if (st == 1) {
				return "保存成功";
			}
			return "保存失败";
			// 为修改 ，并且视频和图片都更改了
		} else if (!file.isEmpty() && !Picture.isEmpty()) {
			// 删除原来文件
			String videoId = videoInfo.getVideoId();
			VideoInfo video = videoInfoService.change(videoId);
			VideoUtil.delfile(VideoUtil.PATHV + video.getVideoAddress());
			VideoUtil.delfile(VideoUtil.PTHP + video.getCoverPhoto());
			int i = VideoUtil.upload(file, VideoUtil.PATHV);
			if (i == 0) {
				return "上传视频失败";
			}
			int t = VideoUtil.upload(Picture, VideoUtil.PTHP);
			if (t == 0) {
				return "上传图片失败";
			}
			if (!Picture.isEmpty()) {
				videoInfo.setCoverPhoto(Picture.getOriginalFilename());
			}
				videoInfo.setVideoAddress(file.getOriginalFilename());
				String upLoader = (String) session.getAttribute("currUser");
				videoInfo.setUpLoader(upLoader);
				int st = videoInfoService.changesave(videoInfo);
			if (st == 1) {
				return "修改成功";
			}
			return "修改失败";
		}
		// 图片或者视频没修改
		if (!file.isEmpty()) {
			// 删除原来的
			String videoId = videoInfo.getVideoId();
			VideoInfo video = videoInfoService.change(videoId);
			VideoUtil.delfile(VideoUtil.PATHV + video.getVideoAddress());
			int i = VideoUtil.upload(file, VideoUtil.PATHV);
			if (i == 0) {
				return "视频上传失败";
			}
			videoInfo.setVideoAddress(file.getOriginalFilename());
			String upLoader = (String) session.getAttribute("currUser");
			videoInfo.setUpLoader(upLoader);
			int st = videoInfoService.updateVideos(videoInfo);
			if (st == 1) {
				return "修改成功";
			} else {
				return "修改失败";
			}
		} else if (!Picture.isEmpty()) {
			String videoId = videoInfo.getVideoId();
			VideoInfo video = videoInfoService.change(videoId);
			// 删除原来文件
			VideoUtil.delfile(VideoUtil.PTHP + video.getCoverPhoto());
			int i = VideoUtil.upload(Picture, VideoUtil.PTHP);
			if (i == 0) {
				return "图片上传失败";
			}
			videoInfo.setCoverPhoto(Picture.getOriginalFilename());
			String upLoader = (String) session.getAttribute("currUser");
			videoInfo.setUpLoader(upLoader);
			int st = videoInfoService.updateVideos(videoInfo);
			if (st == 1) {
				return "修改成功";
			} else {
				return "修改失败";
			}
		} else {
			String upLoader = (String) session.getAttribute("currUser");
			videoInfo.setUpLoader(upLoader);
			int st = videoInfoService.updateVideos(videoInfo);
			if (st == 1) {
				return "修改成功";
			} else {
				return "修改失败";
			}
		}
	}

	// 单条删除
	@RequestMapping(value = "/delVideo", produces = "text/htm;charset=utf-8")
	@ResponseBody
	public String delVideo(String videoId) {
		String st = String.valueOf(videoInfoService.delVideo(videoId));
		return st;
	}

	// 删除全部
	@RequestMapping(value = "/delAll", produces = "text/htm;charset=utf-8")
	@ResponseBody
	public String delAll() {
		String st = String.valueOf(videoInfoService.delAll());
		return st;
	}

	// 多条删除
	@RequestMapping(value = "/delVideos", produces = "text/htm;charset=utf-8")
	@ResponseBody
	public String delVideos(String[] arr) {
		String st = String.valueOf(videoInfoService.delVideos(arr));
		return st;
	}

	// 找到修改的目标
	@RequestMapping(value = "/change", produces = "text/htm;charset=utf-8")
	public ModelAndView change(String videoId) {
		ModelAndView mv = new ModelAndView();
		VideoInfo videoInfo = videoInfoService.change(videoId);
		mv.addObject("video", videoInfo);
		mv.setViewName("videofrom");
		return mv;
	}

	// 下拉框
	@RequestMapping(value = "/selectAll", produces = "text/htm;charset=utf-8")
	@ResponseBody
	public String selectAll() {
		List<String> list = videoInfoService.selectAll();
		return JSONArray.fromObject(list).toString();
	}

	// 条件查询
	@RequestMapping(value = "/selectVideos", produces = "text/htm;charset=utf-8")
	@ResponseBody
	public String selectVideos(@RequestParam("videoName") String videoName,
			@RequestParam("techDirection") String techDirection, @RequestParam("pageNum") int pageNum) {
		int pageSize = 3;
		PageHelper.startPage(pageNum, pageSize);
		List<VideoInfo> list = videoInfoService.selectVideos(videoName, techDirection);
		PageInfo<VideoInfo> pages = new PageInfo<VideoInfo>(list);
		return JSONArray.fromObject(pages).toString();
	}

}
