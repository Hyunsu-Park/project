package com.health.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.mapper.PostMapper;
import com.health.vo.FreePostVO;
import com.health.vo.MainPostVO;
import com.health.vo.NoticePostVO;
import com.health.vo.QnAPostVO;

@Service
public class PostService {
	@Autowired
	PostMapper mapper;
	public List<FreePostVO> selectPostList(Integer num) {
		return mapper.selectPostList(num);
	}
	public List<NoticePostVO> selectNoticeList(Integer num) {
		return mapper.selectNoticeList(num);
	}
	public List<QnAPostVO> selectQnAList (Integer num) {
		return mapper.selectQnAList(num);
	}
	public List<MainPostVO> selectMainFreePost(Integer num) {
		return mapper.selectMainFreePost(num);
	}
	public List<MainPostVO> selectMainNoticePost(Integer num) {
		return mapper.selectMainNoticePost(num);
	}

	public void insertNoticePost(NoticePostVO vo) {
		mapper.insertNoticePost(vo);
	}
	public void updateNoticePost(NoticePostVO vo) {
		mapper.updateNoticePost(vo);
	}
}
