package com.kitri.travelia.domain;

import java.security.Timestamp;


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
	
	public Attraction() {
	}

	public Attraction(int content_id, String mapX, String mapY, String map_level, String attr_img, String attr_title,
			String attr_addr1, String attr_addr2, Timestamp attr_post_time, Timestamp attr_mod_time, String attr_cat1,
			String attr_cat2, String attr_cat3, String attr_phone, int area_code, int country_code) {
		this.content_id = content_id;
		this.mapX = mapX;
		this.mapY = mapY;
		this.map_level = map_level;
		this.attr_img = attr_img;
		this.attr_title = attr_title;
		this.attr_addr1 = attr_addr1;
		this.attr_addr2 = attr_addr2;
		this.attr_post_time = attr_post_time;
		this.attr_mod_time = attr_mod_time;
		this.attr_cat1 = attr_cat1;
		this.attr_cat2 = attr_cat2;
		this.attr_cat3 = attr_cat3;
		this.attr_phone = attr_phone;
		this.area_code = area_code;
		this.country_code = country_code;
	}

	public int getContent_id() {
		return content_id;
	}

	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}

	public String getMapX() {
		return mapX;
	}

	public void setMapX(String mapX) {
		this.mapX = mapX;
	}

	public String getMapY() {
		return mapY;
	}

	public void setMapY(String mapY) {
		this.mapY = mapY;
	}

	public String getMap_level() {
		return map_level;
	}

	public void setMap_level(String map_level) {
		this.map_level = map_level;
	}

	public String getAttr_img() {
		return attr_img;
	}

	public void setAttr_img(String attr_img) {
		this.attr_img = attr_img;
	}

	public String getAttr_title() {
		return attr_title;
	}

	public void setAttr_title(String attr_title) {
		this.attr_title = attr_title;
	}

	public String getAttr_addr1() {
		return attr_addr1;
	}

	public void setAttr_addr1(String attr_addr1) {
		this.attr_addr1 = attr_addr1;
	}

	public String getAttr_addr2() {
		return attr_addr2;
	}

	public void setAttr_addr2(String attr_addr2) {
		this.attr_addr2 = attr_addr2;
	}

	public Timestamp getAttr_post_time() {
		return attr_post_time;
	}

	public void setAttr_post_time(Timestamp attr_post_time) {
		this.attr_post_time = attr_post_time;
	}

	public Timestamp getAttr_mod_time() {
		return attr_mod_time;
	}

	public void setAttr_mod_time(Timestamp attr_mod_time) {
		this.attr_mod_time = attr_mod_time;
	}

	public String getAttr_cat1() {
		return attr_cat1;
	}

	public void setAttr_cat1(String attr_cat1) {
		this.attr_cat1 = attr_cat1;
	}

	public String getAttr_cat2() {
		return attr_cat2;
	}

	public void setAttr_cat2(String attr_cat2) {
		this.attr_cat2 = attr_cat2;
	}

	public String getAttr_cat3() {
		return attr_cat3;
	}

	public void setAttr_cat3(String attr_cat3) {
		this.attr_cat3 = attr_cat3;
	}

	public String getAttr_phone() {
		return attr_phone;
	}

	public void setAttr_phone(String attr_phone) {
		this.attr_phone = attr_phone;
	}

	public int getArea_code() {
		return area_code;
	}

	public void setArea_code(int area_code) {
		this.area_code = area_code;
	}

	public int getCountry_code() {
		return country_code;
	}

	public void setCountry_code(int country_code) {
		this.country_code = country_code;
	}

	@Override
	public String toString() {
		return "Attraction [content_id=" + content_id + ", mapX=" + mapX + ", mapY=" + mapY + ", map_level=" + map_level
				+ ", attr_img=" + attr_img + ", attr_title=" + attr_title + ", attr_addr1=" + attr_addr1
				+ ", attr_addr2=" + attr_addr2 + ", attr_post_time=" + attr_post_time + ", attr_mod_time="
				+ attr_mod_time + ", attr_cat1=" + attr_cat1 + ", attr_cat2=" + attr_cat2 + ", attr_cat3=" + attr_cat3
				+ ", attr_phone=" + attr_phone + ", area_code=" + area_code + ", country_code=" + country_code + "]";
	}
	
	
	
}
