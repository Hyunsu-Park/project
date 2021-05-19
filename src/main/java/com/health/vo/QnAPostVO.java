package com.health.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QnAPostVO {
	private Integer qp_seq;
	private String qp_title;
	private String qp_content;
	private String qp_owner;
	private Integer qp_board_seq;
	private Date qp_reg_date;
	private Integer qp_answer;
}
