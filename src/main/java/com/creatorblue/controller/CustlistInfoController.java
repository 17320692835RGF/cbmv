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

import com.creatorblue.domain.CustlistInfo;
import com.creatorblue.service.AdminInfoService;
import com.creatorblue.service.CustlistInfoService;
import com.creatorblue.util.VideoUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@Controller
@RequestMapping("/Custlist")
public class CustlistInfoController {
	@Autowired
	private CustlistInfoService custlistInfoService;
	@Autowired
	private AdminInfoService adminInfoService;
	
	//查询全部
	@RequestMapping("/queryAll")
	@ResponseBody
	public String queryAll(Integer pageNum,Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<CustlistInfo> custlist = custlistInfoService.queryAll(pageNum, pageSize);
		PageInfo<CustlistInfo> cust = new PageInfo<>(custlist);
		return JSONArray.fromObject(cust).toString();  
	}
	//条件查询,按手机、姓名、昵称查询
	@RequestMapping("/query")
	@ResponseBody
	public String query(String mobile,String name,String nickname,int pageSize, int pageNum){
		PageHelper.startPage(pageNum, pageSize);
		List<CustlistInfo> custlist = custlistInfoService.query(mobile, name, nickname, pageSize, pageNum);
		PageInfo<CustlistInfo> cust = new PageInfo<>(custlist);
		return JSONArray.fromObject(cust).toString(); 
	}
	
	@RequestMapping("/addCustlistInfo")
	@ResponseBody
	public String addCustlistInfo(CustlistInfo custlistInfo,@RequestParam("custlistHeadimgs") CommonsMultipartFile photo) {
		//创建图片保存文件夹
		String path  ="D:\\cbmv\\cbmv\\userPhoto\\";
		File photoPath = new  File(path);
		if(!photoPath.exists()) {
			photoPath.mkdirs();
		}
		//图片路径和名称
		String custlistHeadimg = photo.getOriginalFilename();
		if(!photo.isEmpty()) {
			try {
				photo.transferTo(new File(path + photo.getOriginalFilename()));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
				return "头像上传失败";
			}
		}
		if(!photo.isEmpty()) {
			custlistInfo.setCustlistHeadimg(custlistHeadimg);
		}
		custlistInfoService.addCustlistInfo(custlistInfo);
		return "ok";
	}
	//查询用户名和密码是否匹配
	@RequestMapping("/queryBy")
	@ResponseBody
	public String queryBy(HttpServletRequest request,String custlistMobile,String custlistPassword) {
		HttpSession session = request.getSession();
		List<CustlistInfo> custlistInfo1 = custlistInfoService.queryBy(custlistMobile, custlistPassword);
		if(custlistInfo1.size() !=0) {
			Integer id = custlistInfo1.get(0).getCustlistId();
			String name = custlistInfo1.get(0).getCustlistName();
			String phone = custlistInfo1.get(0).getCustlistMobile();
			String aname = "<a href='#' onclick='backToinfo()'>"+name+"</a>";
			String bname = "<a href='cbmv-custInfo.html'>"+name+"</a>";
			String out1 = "<a href='#' onclick='removesession()'>退出</a>";
			String out2 = "<a href='#' onclick='removesession();'>退出</a>";
			session.setAttribute("id", id);
			session.setAttribute("phone", phone);
			session.setAttribute("name", name);
			session.setAttribute("userName1", aname);
			session.setAttribute("userName2", bname);
			session.setAttribute("out1", out1);
			session.setAttribute("out2", out2);
			session.setAttribute("out", "退出");
		}
		return JSONArray.fromObject(custlistInfo1).toString();
	}
	//注销
	@RequestMapping("/removesession")
	@ResponseBody
	public String removesession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String statisticsId =(String)session.getAttribute("Id");
		adminInfoService.delOutLogin(statisticsId);
		session.invalidate();
		return "OK";
	}
	//验证码
	@RequestMapping("/captcha")
	@ResponseBody
	public String captcha(HttpServletRequest request,String captcha,HttpSession session) {
		if(!captcha.equalsIgnoreCase((String) session.getAttribute("chatp"))){
	    	return "验证码错误";
		}else {
			String name =(String)session.getAttribute("name");
        	adminInfoService.addCurrUser(name,session);
			return"登录成功";
		}
	}
	//查询手机号的是否重复
	@RequestMapping("/queryByPhone")
	@ResponseBody
	public String queryByPhone(String custlistMobile) {
		List<CustlistInfo> list = custlistInfoService.queryByPhone(custlistMobile);
		return JSONArray.fromObject(list).toString();
	}

	//通过用户ID查询信息
	@RequestMapping("queryById")
	@ResponseBody
	public String queryById(Integer custlistId) {
		CustlistInfo info = custlistInfoService.queryById(custlistId);
		return JSONObject.fromObject(info).toString();
	}

	//根据用户ID删除单条数据
	@RequestMapping("/deletes")
	@ResponseBody
	public void deletes(int custlistId) {
		CustlistInfo info = custlistInfoService.queryById(custlistId);
		String img = info.getCustlistHeadimg();
		VideoUtil.delfile("D:\\cbmv\\cbmv\\userPhoto\\" + img);
		custlistInfoService.deletes(custlistId);
	}
	
	//根据用户ID修改数据
	@RequestMapping("/updateInfo")
	@ResponseBody
	public String updateInfo(CustlistInfo custlistInfo) {
		CustlistInfo list= custlistInfoService.queryById(custlistInfo.getCustlistId());
		List<CustlistInfo> list1=custlistInfoService.queryByPhone(custlistInfo.getCustlistMobile());
		if(list1.isEmpty()){
			custlistInfoService.updateInfo(custlistInfo);
			return "ok";
		}
		else{
			if(list1.size()==1&&list1.get(0).getCustlistId()==custlistInfo.getCustlistId()){
				custlistInfoService.updateInfo(custlistInfo);
				return "ok";
			}

		}
		return "false";
	}
	
}
