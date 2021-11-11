package com.creatorblue.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.creatorblue.domain.SubjlistInfo;
import com.creatorblue.service.SubjlistInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/Subjlist")
public class SubjlistInfoController {
	@Autowired
	private SubjlistInfoService subjlistInfoService;
	
	//查询全部
	@RequestMapping(value="/queryAll",produces="text/html;charset=utf-8")
	@ResponseBody
	public String queryAll(Integer pageNum,Integer pageSize){
		PageHelper.startPage(pageNum, pageSize);
		List<SubjlistInfo> subjlistqueryAll = subjlistInfoService.queryAll(pageNum,pageSize);
		PageInfo<SubjlistInfo> cust = new PageInfo<>(subjlistqueryAll);
		return JSONArray.fromObject(cust).toString();
	}
	
	//条件查询,按技术名称查询
	@RequestMapping(value="/querybyname",produces="text/html;charset=utf-8")
	@ResponseBody
	public String querybyName(String name,Integer pageNum,Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<SubjlistInfo> subjlistquerybyname = subjlistInfoService.querybyName(name,pageNum,pageSize);
		PageInfo<SubjlistInfo> cust = new PageInfo<>(subjlistquerybyname);
		return JSONArray.fromObject(cust).toString();
	}
	
	//删除，按技术ID删除
	@RequestMapping(value="/delete",produces="text/html;charset=utf-8")
	@ResponseBody
	public void delete(int id) {
		subjlistInfoService.delete(id);
		System.out.println("OK");
	}
	
	//修改
	@RequestMapping(value="/update",produces="text/html;charset=utf-8")
	@ResponseBody
	public int update(SubjlistInfo subjlistInfo){
		int result = subjlistInfoService.update(subjlistInfo);
		return result;
	}
	
	//添加
	@RequestMapping(value="/add",produces="text/html;charset=utf-8")
	@ResponseBody
	public void add(SubjlistInfo subjlistInfo) {
		subjlistInfoService.add(subjlistInfo);
	}
	
	//批量删除
	@RequestMapping(value="/deleteByIds",produces="text/html;charset=utf-8")
	@ResponseBody
	public String deleteByIds(Integer[] ids) {
		subjlistInfoService.deleteByIds(ids);
		return "ok";
	}
	
	//条件查询，按技术ID查询
	@RequestMapping(value="/querybyid",produces="text/html;charset=utf-8")
	@ResponseBody
	public String querybyid(int id) {
		SubjlistInfo subjlistquerybyid =  subjlistInfoService. querybyid(id);
		return JSONObject.fromObject(subjlistquerybyid).toString();
	}
	
	//修改或添加
	@RequestMapping(value="/addorupdata",produces="text/html;charset=utf-8")
	@ResponseBody
	public String addorupdata(SubjlistInfo subjlistInfo) {
		System.out.println(subjlistInfo);
		if(subjlistInfo.getSubjlistId() !=null) {
		 subjlistInfoService.update(subjlistInfo);
			return "ok";
		}else {
			subjlistInfoService.add(subjlistInfo);
			return "ok";
		}
	}
	
	//条件查询，按技术编号查询
	@RequestMapping(value="/querybynum",produces="text/html;charset=utf-8")
	@ResponseBody
	public String querybynum(String subjlistNum,Integer subjlistId) {
		List<SubjlistInfo> querybynum = subjlistInfoService.querybynum(subjlistNum,subjlistId);
		return JSONArray.fromObject(querybynum).toString();
	}
}
