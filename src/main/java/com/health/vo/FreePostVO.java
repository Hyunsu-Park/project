package com.health.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FreePostVO {
	private Integer fp_seq;
	private String fp_title;
	private String fp_content;
	private String fp_owner;
	private Integer fp_like;
	private Integer fp_dis_like;
	private Date fp_reg_date;
}
