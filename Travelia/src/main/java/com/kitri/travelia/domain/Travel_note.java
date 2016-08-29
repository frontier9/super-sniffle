package com.kitri.travelia.domain;

import java.security.Timestamp;

public class Travel_note {
	private int note_no;
	private String note_title;
	private String note;
	private Timestamp note_write_date;
	private int note_hit;
	private String note_nick;
	private String note_cat;
	private int note_recom;
	//fk
	private int mem_no;
	
	public Travel_note() {
		super();
	}

	public Travel_note(int note_no, String note_title, String note, Timestamp note_write_date, int note_hit,
			String note_nick, String note_cat, int note_recom, int mem_no) {
		super();
		this.note_no = note_no;
		this.note_title = note_title;
		this.note = note;
		this.note_write_date = note_write_date;
		this.note_hit = note_hit;
		this.note_nick = note_nick;
		this.note_cat = note_cat;
		this.note_recom = note_recom;
		this.mem_no = mem_no;
	}

	public int getNote_no() {
		return note_no;
	}

	public void setNote_no(int note_no) {
		this.note_no = note_no;
	}

	public String getNote_title() {
		return note_title;
	}

	public void setNote_title(String note_title) {
		this.note_title = note_title;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Timestamp getNote_write_date() {
		return note_write_date;
	}

	public void setNote_write_date(Timestamp note_write_date) {
		this.note_write_date = note_write_date;
	}

	public int getNote_hit() {
		return note_hit;
	}

	public void setNote_hit(int note_hit) {
		this.note_hit = note_hit;
	}

	public String getNote_nick() {
		return note_nick;
	}

	public void setNote_nick(String note_nick) {
		this.note_nick = note_nick;
	}

	public String getNote_cat() {
		return note_cat;
	}

	public void setNote_cat(String note_cat) {
		this.note_cat = note_cat;
	}

	public int getNote_recom() {
		return note_recom;
	}

	public void setNote_recom(int note_recom) {
		this.note_recom = note_recom;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	@Override
	public String toString() {
		return "Travel_note [note_no=" + note_no + ", note_title=" + note_title + ", note=" + note
				+ ", note_write_date=" + note_write_date + ", note_hit=" + note_hit + ", note_nick=" + note_nick
				+ ", note_cat=" + note_cat + ", note_recom=" + note_recom + ", mem_no=" + mem_no + "]";
	}
	
	
	
}
