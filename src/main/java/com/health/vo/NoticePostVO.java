package com.health.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticePostVO {
	private Integer np_seq;
	private String np_title;
	private String np_content;
	private String np_owner;
	private Date np_reg_date;
}
