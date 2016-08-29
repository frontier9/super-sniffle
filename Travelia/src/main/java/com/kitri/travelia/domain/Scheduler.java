package com.kitri.travelia.domain;

import java.security.Timestamp;

public class Scheduler {
	private int sch_no;
	private String writer;
	//여행시작일 추가
	private String itin_days;
	private String sch_title;
	private Timestamp sch_write_date;
	//fk
	private int mem_no;
	
	public Scheduler() {
		super();
	}
	public int getSch_no() {
		return sch_no;
	}
	public void setSch_no(int sch_no) {
		this.sch_no = sch_no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getItin_days() {
		return itin_days;
	}
	public void setItin_days(String itin_days) {
		this.itin_days = itin_days;
	}
	public String getSch_title() {
		return sch_title;
	}
	public void setSch_title(String sch_title) {
		this.sch_title = sch_title;
	}
	public Timestamp getSch_write_date() {
		return sch_write_date;
	}
	public void setSch_write_date(Timestamp sch_write_date) {
		this.sch_write_date = sch_write_date;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	@Override
	public String toString() {
		return "Scheduler [sch_no=" + sch_no + ", writer=" + writer + ", itin_days=" + itin_days + ", sch_title="
				+ sch_title + ", sch_write_date=" + sch_write_date + ", mem_no=" + mem_no + "]";
	}
	
	
	
}
