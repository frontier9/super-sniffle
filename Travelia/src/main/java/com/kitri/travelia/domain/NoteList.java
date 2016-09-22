package com.kitri.travelia.domain;

public class NoteList {
	private int note_no;
	private String note_title;
	private String note_img1;
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
	public String getNote_img1() {
		return note_img1;
	}
	public void setNote_img1(String note_img1) {
		this.note_img1 = note_img1;
	}
	
	@Override
	public String toString() {
		return "NoteList [note_no=" + note_no + ", note_title=" + note_title + ", note_img1=" + note_img1 + "]";
	}
	
	
}
