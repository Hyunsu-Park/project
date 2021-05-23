package com.health.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FreePostVO {
	private Integer seq;
	private String title;
	private String content;
	private String owner;
	private Integer like;
	private Integer dis_like;
	private Date dt;
}
