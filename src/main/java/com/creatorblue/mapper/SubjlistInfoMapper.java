package com.creatorblue.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.creatorblue.domain.SubjlistInfo;

@Mapper
public interface SubjlistInfoMapper {
	//查询全部
	public List<SubjlistInfo> queryAll(@Param("pageNum")Integer pageNum,@Param("pageSize")Integer pageSize);
	
	//条件查询,按技术名称查询
	public List<SubjlistInfo> querybyname(@Param("name")String name,@Param("pageNum")Integer pageNum,@Param("pageSize")Integer pageSize);
	
	//删除，按技术ID删除
	public void delete(@Param("id")int id);
	
	//修改
	public int update(SubjlistInfo subjlistInfo);
	
	//添加
	public void add(SubjlistInfo subjlistInfo);
	
	//批量删除
	public void deleteByIds(@Param("ids")Integer[] ids);
	
	//条件查询，按技术ID查询
	public SubjlistInfo querybyid(@Param("id")int id);
	
	//条件查询，按技术编号查询
	public List<SubjlistInfo> querybynum(@Param("subjlsitNum")String subjlsitNum,@Param("subjlsitId")Integer subjlsitId);
}