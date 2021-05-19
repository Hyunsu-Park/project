package com.health.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.mapper.ExercisePostMapper;
import com.health.vo.ExercisePostVO;

@Service
public class ExercisePostService {
	@Autowired
	ExercisePostMapper mapper;
	
	public List<ExercisePostVO> selectExerciseList(String id) {
		return mapper.selectExerciseList(id);
	}
}
