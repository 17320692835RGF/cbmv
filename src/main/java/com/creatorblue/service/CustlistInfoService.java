package com.creatorblue.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.creatorblue.domain.CustlistInfo;
import com.creatorblue.mapper.CustlistInfoMapper;

@Service
public class CustlistInfoService {
	@Autowired
	private CustlistInfoMapper custlistInfoMapper;
	
	//查询全部
	public List<CustlistInfo> queryAll(Integer pageNum,Integer pageSize){
		return custlistInfoMapper.queryAll(pageNum,pageSize);
	}
	//条件查询,按手机、姓名、昵称查询
	public List<CustlistInfo> query(String mobile,String name,String nickname){
		return custlistInfoMapper.query(mobile, name, nickname);
	}
	//查询所有订单带分页功能
	public List<CustlistInfo> query(String mobile,String name,String nickname, int pageSize, int pageNum){
		//业务逻辑
		return custlistInfoMapper.queryAllWithPage(mobile, name, nickname, pageSize, pageNum);
	}
	//用户注册，添加用户信息
	public Integer addCustlistInfo(CustlistInfo CustlistInfo) {
		return custlistInfoMapper.addCustlistInfo(CustlistInfo);
	}
	//查询用户名和密码是否匹配
	public List<CustlistInfo> queryBy(String custlistMobile,String custlistPassword) {
		return custlistInfoMapper.queryBy(custlistMobile, custlistPassword);
	}
	//查询手机号的是否重复
	public List<CustlistInfo> queryByPhone(String custlistMobile) {
		return custlistInfoMapper.queryByPhone(custlistMobile);
	}

	//通过用户ID查询信息
	public CustlistInfo queryById(Integer custlistId) {
		return custlistInfoMapper.queryById(custlistId);
	}

	//根据用户ID删除单条数据
	public void deletes(int custlistId) {
		custlistInfoMapper.deletes(custlistId);
	}
	
	//修改用户信息
	public void updateInfo(CustlistInfo custlistInfo) {
		custlistInfoMapper.updateInfo(custlistInfo);
	}
}
