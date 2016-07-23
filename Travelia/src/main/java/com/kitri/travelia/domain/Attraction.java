package com.kitri.travelia.domain;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Attraction {
	private int content_id;
	private String mapX;
	private String mapY;
	private String map_level;
	private String attr_img;
	private String attr_title;
	private String attr_addr1;
	private String attr_addr2;
	private Timestamp attr_post_time;
	private Timestamp attr_mod_time;
	private String attr_cat1;
	private String attr_cat2;
	private String attr_cat3;
	private String attr_phone;
	private int area_code;
	private int country_code;
}
