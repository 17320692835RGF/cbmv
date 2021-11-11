package com.creatorblue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.creatorblue.domain.SubjlistInfo;
import com.creatorblue.mapper.SubjlistInfoMapper;

@Service
public class SubjlistInfoService {
	
	@Autowired
	private SubjlistInfoMapper subjlistInfoMapper;
	
	//查询全部
	public List<SubjlistInfo> queryAll(Integer pageNum,Integer pageSize){
		return subjlistInfoMapper.queryAll(pageNum,pageSize);
	}
	
	//条件查询,按技术名称查询
	public List<SubjlistInfo> querybyName(String name,Integer pageNum,Integer pageSize){
		return subjlistInfoMapper.querybyname(name,pageNum,pageSize);
	}
	
	//删除，按技术ID删除
	public void delete(int id){
		subjlistInfoMapper.delete(id);
	}
	
	//修改
	public int update(SubjlistInfo subjlistInfo){
		return subjlistInfoMapper.update(subjlistInfo);
	}
	
	//添加
	public void add(SubjlistInfo subjlistInfo){
		subjlistInfoMapper.add(subjlistInfo);
	}
	
	//批量删除
	public void deleteByIds(Integer[] ids) {
		subjlistInfoMapper.deleteByIds(ids);
	}
	
	//条件查询，按技术ID查询
	public SubjlistInfo querybyid(int id){
		return subjlistInfoMapper.querybyid(id);
	}
	
	//条件查询，按技术编号查询
	public List<SubjlistInfo> querybynum(String subjlistNum,Integer subjlistId) {
		return subjlistInfoMapper.querybynum(subjlistNum,subjlistId);
	}
}
