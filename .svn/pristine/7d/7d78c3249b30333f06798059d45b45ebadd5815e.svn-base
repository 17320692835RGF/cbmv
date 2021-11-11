package com.creatorblue.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.creatorblue.domain.VideoInfo;

@Mapper
public interface VideoInfoMapper {
		//查询所有并分页
		public List<VideoInfo> queryVideoAll();
		//保存
		public int saveVideo( VideoInfo videoInfo);
		//删除
		public int delVideo(String videoId);
		//清空
		public int delAll();
		//删除选中
		public int delVideos(String[] arr);
		//通过id查询
		public VideoInfo change(String videoId);
		//修改全部
		public  int changesave(VideoInfo videoInfo);
		//下拉框
		public List<String>  selectAll();
		//条件查询
		public List<VideoInfo>  selectVideos(@Param("videoName")String videoName,@Param("techDirection") String techDirection);
		//修改图片或者视频
		public int updateVideos(VideoInfo videoInfo);
}
