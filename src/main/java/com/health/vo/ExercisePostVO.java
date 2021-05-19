package com.health.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ExercisePostVO {
	private Integer uv_seq;	
	private String uv_exercise_name;
	private Date uv_date;		//일별페이지 만들기
	private Integer uv_weight;	//무게
	private Integer uv_amount;	//횟수
	private Integer uv_bt;		//쉬는시간
	private Integer uv_category_seq;	//운동카테고리번호
	private String uv_id;		//유저 아이디
}
