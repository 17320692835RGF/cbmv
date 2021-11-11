package com.creatorblue.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PatchMapping;

import com.creatorblue.domain.VideoInfo;

@Mapper
public interface CbmvVideoMapper {
		//查询所有视频
		public List<VideoInfo> queryVideos();
		//根据类别查询视频
		public List<VideoInfo> queryVidesByName(String techDirection);
		//根据id查视频
		public VideoInfo video(String videoId);
		//统计表存播放数 
		public int  videoNum(@Param("videoId")String videoId,@Param("userName")String userName ,@Param("statisticsId")String statisticsId
		,@Param("staticics") int staticics);
		//查找播放数
		public int selectVideoNum(String videoId);
		//更新播放数
		public int updateVideoNum(@Param("videoId") String videoId,@Param("videoNum") int videoNum);
		//点赞
		public int upadd(@Param("videoId")String videoId,@Param("userName")String userName ,@Param("statisticsId")String statisticsId
				,@Param("staticics") int staticics,@Param("phone")  String phone);
		//是否已赞
		public int booleanup(@Param("videoId")String videoId,@Param("phone")  String phone);
		//点赞了删除
		public  void delup(@Param("videoId")String videoId,@Param("phone")  String phone);
		//统计点赞数
		public int  countup(@Param("videoId")String videoId);
		//更新点赞
		public int  updategood(@Param("videoId")String videoId,@Param("count") int count);
		//判断是否有
		public int booleancol(@Param("videoId")String videoId,@Param("phone")  String phone);
		//收藏
		public int coladd(@Param("videoId")String videoId,@Param("userName")String userName ,@Param("statisticsId")String statisticsId
				,@Param("staticics") int staticics,@Param("phone")  String phone);
		//收藏了删除
		public  void delcol(@Param("videoId")String videoId,@Param("phone")  String phone);
		//统计收藏
		public int  countcol(@Param("videoId")String videoId);
		//更新收藏
		public int  updatecol(@Param("videoId")String videoId,@Param("count") int count);
}
