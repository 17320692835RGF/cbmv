package com.creatorblue.controller;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.creatorblue.domain.UserInfo;
import com.creatorblue.service.AdminInfoService;
import com.creatorblue.service.UserInfoService;

import net.sf.json.JSONArray;

@RequestMapping("/userInfo")
@Controller
public class UserInfoController {
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private AdminInfoService adminInfoService;
	
	@RequestMapping("/addUserInfo")
	@ResponseBody
	public String addUserInfo(UserInfo userInfo,@RequestParam("userPhotos") CommonsMultipartFile photo) {
		//创建图片保存文件夹
		String path  ="D:\\cbmv\\cbmv\\userPhoto\\";
		File photoPath = new  File(path);
		if(!photoPath.exists()) {
			photoPath.mkdirs();
		}
		//图片路径和名称
		String userPhoto = path + photo.getOriginalFilename();
		if(!photo.isEmpty()) {
			try {
				photo.transferTo(new File(path + photo.getOriginalFilename()));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
				return "头像上传失败";
			}
		}
		if(!photo.isEmpty()) {
			userInfo.setUserPhoto(userPhoto);
		}
		String userPhone = userInfo.getUserPhone();
		List<UserInfo> list = userInfoService.queryByPhone(userPhone);
		if (!list.isEmpty()){
			return "手机号已注册";
		}
		userInfoService.addUserInfo(userInfo);
		return "ok";
	}
	
	@RequestMapping("/queryBy")
	@ResponseBody
	public String queryBy(HttpServletRequest request,String userPhone,String userPassword,HttpSession session) {
		List<UserInfo> userInfo1 = userInfoService.queryBy(userPhone, userPassword);
		if(userInfo1.size() !=0) {
			String name = userInfo1.get(0).getUserNickName();
			String phone = userInfo1.get(0).getUserPhone();
			String aname = "<a href='#'>"+name+"</a>";
			String out1 = "<a href='cbmv-index.html' onclick='removesession()'>退出</a>";
			String out2 = "<a href='cbmv-index.html' onclick='removesession()'>退出</a>";
			session.setAttribute("phone", phone);
			session.setAttribute("userName", aname);
			session.setAttribute("name", name);
			session.setAttribute("out1", out1);
			System.err.println(out2);
			session.setAttribute("out2", out2);
        	adminInfoService.addCurrUser(name,session);
			session.setAttribute("out", "退出");
		}
		return JSONArray.fromObject(userInfo1).toString();
	}
	//注销
	@RequestMapping("/removesession")
	@ResponseBody
	public String removesession(HttpServletRequest request,HttpSession session) {
		
		session.invalidate();
		return "OK";
	}
	
	
	@RequestMapping("/captcha")
	@ResponseBody
	public String captcha(HttpServletRequest request,String captcha) {
		HttpSession session = request.getSession();
		if(!captcha.equalsIgnoreCase((String) session.getAttribute("chatp"))){
	    	return "验证码错误";
		}else {
			return"登录成功";
		}
	}
	
	@RequestMapping("/queryByPhone")
	@ResponseBody
	public String queryByPhone(String userPhone) {
		List<UserInfo> list = userInfoService.queryByPhone(userPhone);
		return JSONArray.fromObject(list).toString();
	}
	
}
