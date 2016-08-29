package com.kitri.travelia.domain;

import java.security.Timestamp;

//travel note command
public class Note_com {
	private int trn_no;
	private String com;
	private Timestamp com_wirte_date;
	private String writer;
	private int note_no;
	
	public Note_com() {
		super();
	}
	public Note_com(int trn_no, String com, Timestamp com_wirte_date, String writer, int note_no) {
		this.trn_no = trn_no;
		this.com = com;
		this.com_wirte_date = com_wirte_date;
		this.writer = writer;
		this.note_no = note_no;
	}
	public int getTrn_no() {
		return trn_no;
	}
	public void setTrn_no(int trn_no) {
		this.trn_no = trn_no;
	}
	public String getCom() {
		return com;
	}
	public void setCom(String com) {
		this.com = com;
	}
	public Timestamp getCom_wirte_date() {
		return com_wirte_date;
	}
	public void setCom_wirte_date(Timestamp com_wirte_date) {
		this.com_wirte_date = com_wirte_date;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getNote_no() {
		return note_no;
	}
	public void setNote_no(int note_no) {
		this.note_no = note_no;
	}
	
	@Override
	public String toString() {
		return "Note_com [trn_no=" + trn_no + ", com=" + com + ", com_wirte_date=" + com_wirte_date + ", writer="
				+ writer + ", note_no=" + note_no + "]";
	}
	
	
	
}
