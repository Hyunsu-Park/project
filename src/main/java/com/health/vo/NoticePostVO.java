package com.health.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticePostVO {
	private Integer seq;
	private String title;
	private String content;
	private String owner;
	private Date dt;
}
