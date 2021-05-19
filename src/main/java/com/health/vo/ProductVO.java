package com.health.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private Integer pi_seq;
	private String pi_name;
	private String pi_price;
	private String pi_seller;
	private Date pi_reg_date;
	private String pi_introduce;
	private Integer pi_category_seq;
	private String pi_img;
}
