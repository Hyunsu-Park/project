package com.health.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class UserInfoVO {
    private Integer ui_seq;
    private String ui_id;
    private String ui_name;
    private Integer ui_age;
    private String ui_addr;
    private Integer ui_weight;
    private Integer ui_height;
    private Date ui_reg_date;
    private Integer ui_type;
}
