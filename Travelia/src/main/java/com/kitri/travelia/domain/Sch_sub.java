package com.kitri.travelia.domain;

import java.security.Timestamp;

public class Sch_sub {
	private int sch_no;
	private String sch_day;
	private int sch_seq;
	private Timestamp sch_time;
	private int content_id;
	//fk
	private int note_no;
	public Sch_sub() {
		super();
	}
	public Sch_sub(int sch_no, String sch_day, int sch_seq, Timestamp sch_time, int content_id, int note_no) {
		super();
		this.sch_no = sch_no;
		this.sch_day = sch_day;
		this.sch_seq = sch_seq;
		this.sch_time = sch_time;
		this.content_id = content_id;
		this.note_no = note_no;
	}
	public int getSch_no() {
		return sch_no;
	}
	public void setSch_no(int sch_no) {
		this.sch_no = sch_no;
	}
	public String getSch_day() {
		return sch_day;
	}
	public void setSch_day(String sch_day) {
		this.sch_day = sch_day;
	}
	public int getSch_seq() {
		return sch_seq;
	}
	public void setSch_seq(int sch_seq) {
		this.sch_seq = sch_seq;
	}
	public Timestamp getSch_time() {
		return sch_time;
	}
	public void setSch_time(Timestamp sch_time) {
		this.sch_time = sch_time;
	}
	public int getContent_id() {
		return content_id;
	}
	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}
	public int getNote_no() {
		return note_no;
	}
	public void setNote_no(int note_no) {
		this.note_no = note_no;
	}
	
	@Override
	public String toString() {
		return "Sch_sub [sch_no=" + sch_no + ", sch_day=" + sch_day + ", sch_seq=" + sch_seq + ", sch_time=" + sch_time
				+ ", content_id=" + content_id + ", note_no=" + note_no + "]";
	}
	
	
}
