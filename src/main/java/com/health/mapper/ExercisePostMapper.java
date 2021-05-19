package com.health.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.health.vo.ExercisePostVO;

@Mapper
public interface ExercisePostMapper {
	public List<ExercisePostVO> selectExerciseList(String id);
}
