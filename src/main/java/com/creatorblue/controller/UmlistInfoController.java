package com.creatorblue.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.creatorblue.domain.UmlistInfo;
import com.creatorblue.service.UmlistInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping(value="/umList",produces="text/html;charset=utf-8")
public class UmlistInfoController {
	@Autowired
	private UmlistInfoService umlistInfoService;
	
	@RequestMapping("/login")
	@ResponseBody
	//管理员登录校验
	public String login(String mobile,String password,HttpSession session,String captcha){
		UmlistInfo umlistInfo = umlistInfoService.login(mobile,password);
        if(!captcha.equalsIgnoreCase((String) session.getAttribute("chatp"))){
        	return "验证码错误";
		}
        if(umlistInfo != null) {
        	session.setAttribute("umlistInfo",umlistInfo);
        	session.setAttribute("currUser",umlistInfo.getUmlistName());  
        	return "成功";
        }else {
        	return "手机号码或密码错误";
        }
    }
	
	@RequestMapping("/queryAdmin")
	@ResponseBody
	//查询当前管理员信息
	public String queryAdmin(HttpSession session,Integer umlistId){  
		UmlistInfo umlistInfo = (UmlistInfo)session.getAttribute("umlistInfo");
		Integer id = umlistInfo.getUmlistId();
		if(id != null) {
			return JSONObject.fromObject(umlistInfo).toString();
		}else {
			return "null";
		}
    }
	
	@RequestMapping("/update")
	@ResponseBody
	//修改管理员密码
	public String update(String password,String newpassword,HttpSession session) {
		UmlistInfo umlistInfo = (UmlistInfo)session.getAttribute("umlistInfo");
		String am = umlistInfo.getUmlistPhone();
		String ap = umlistInfo.getUmlistPwd();
		if(password.equals(ap)) {
			Integer admin = umlistInfoService.update(am, newpassword);
			if(admin == 1) {
				session.invalidate();
				return "修改成功，请使用新密码重新登录！";
			}else {
				return "修改失败！";
			}
		}else {
			return "原密码错误!";
		}
	}
	
	@RequestMapping("/queryAll")
	@ResponseBody
	//查询所有用户信息
	public String queryAllInfo(Integer pageNum,Integer pageSize) {
		PageHelper.startPage(pageNum,pageSize);
		List<UmlistInfo> list = umlistInfoService.queryAll(pageNum, pageSize);
		PageInfo<UmlistInfo> pi = new PageInfo<>(list);
		return JSONArray.fromObject(pi).toString();
	}
	
	@RequestMapping("/queryById")
	@ResponseBody
	//通过用户ID查询用户信息
	public String queryOneInfo(Integer umlistId) {
		UmlistInfo umlistInfo = umlistInfoService.queryById(umlistId);
		return JSONObject.fromObject(umlistInfo).toString();
	}
	
	@RequestMapping("/save")
	@ResponseBody
	//新增用户信息
	public String saveInfo(UmlistInfo umlistInfo) {
		umlistInfoService.save(umlistInfo);
		return "ok";
	}
	
	@RequestMapping("/del")
	@ResponseBody
	//删除单个用户信息
	public void delInfo(Integer umlistId) {
		umlistInfoService.del(umlistId);
	}
	
	@RequestMapping("/deleteMany")
	@ResponseBody
	//批量删除用户信息
	public String delManyInfo(Integer[] umlistIds) {
		umlistInfoService.deleteMany(umlistIds);
		return "ok";
	}
	
	@RequestMapping("/queryByPhoneAndName")
	@ResponseBody
	//通过手机号或姓名模糊查询
	public String queryBy(String umlistPhone,String umlistName,Integer pageNum,Integer pageSize) {
		PageHelper.startPage(pageNum,pageSize);
		List<UmlistInfo> list = umlistInfoService.queryByPhoneAndName(umlistPhone, umlistName, pageNum, pageSize);
		System.out.println(list);
		PageInfo<UmlistInfo> pi = new PageInfo<>(list);
		return JSONArray.fromObject(pi).toString();
	}
	
	@RequestMapping("/updateInfo")
	@ResponseBody
	//修改用户信息
	public int update(UmlistInfo umlistInfo) {
		int result = umlistInfoService.updateInfo(umlistInfo);
		return result;
	}
	
	@RequestMapping("/chooseSaveOrupdate")
	@ResponseBody
	//根据是否存在ID执行修改或新增
	public String updates(UmlistInfo umlistInfo) {
		if(umlistInfo.getUmlistId() != null) {
			umlistInfoService.updateInfo(umlistInfo);
			return "ok";
		}else {

			String umlistPhone = umlistInfo.getUmlistPhone();
			String umlistName = umlistInfo.getUmlistName();
			List<UmlistInfo> list = umlistInfoService.queryByPhoneAndName(umlistPhone, "", 0, 3);
			if (!list.isEmpty()){
				return "手机号重复";
			}
			umlistInfoService.save(umlistInfo);
			return "ok";
		}
	}
	
	@RequestMapping("/queryByPhoneAndCard")
	@ResponseBody
	//检验手机号和身份证是否重复
	public String queryByPhone(String umlistPhone,String umlistCard,Integer umlistId) {
		List<UmlistInfo> list = umlistInfoService.queryByPhoneAndCard(umlistPhone, umlistCard, umlistId);
		return JSONArray.fromObject(list).toString();
	}
	
}
