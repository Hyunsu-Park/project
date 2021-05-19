package com.health.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.health.vo.FreePostVO;
import com.health.vo.NoticePostVO;
import com.health.vo.QnAPostVO;

@Mapper
public interface PostMapper {
	public List<FreePostVO> selectPostList(Integer num);
	public List<NoticePostVO> selectNoticeList(Integer num);
	public List<QnAPostVO> selectQnAList(Integer num);
}