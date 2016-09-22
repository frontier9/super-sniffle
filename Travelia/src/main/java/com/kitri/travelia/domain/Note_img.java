package com.kitri.travelia.domain;

import java.util.ArrayList;

//travel note Image
public class Note_img {
	private int note_no;
	//최대 10
	private String note_img1;
	private String note_img2;
	private String note_img3;
	private String note_img4;
	private String note_img5;
	
	public int getNote_no() {
		return note_no;
	}
	public void setNote_no(int note_no) {
		this.note_no = note_no;
	}
	public String getNote_img1() {
		return note_img1;
	}
	public void setNote_img1(String note_img1) {
		this.note_img1 = note_img1;
	}
	public String getNote_img2() {
		return note_img2;
	}
	public void setNote_img2(String note_img2) {
		this.note_img2 = note_img2;
	}
	public String getNote_img3() {
		return note_img3;
	}
	public void setNote_img3(String note_img3) {
		this.note_img3 = note_img3;
	}
	public String getNote_img4() {
		return note_img4;
	}
	public void setNote_img4(String note_img4) {
		this.note_img4 = note_img4;
	}
	public String getNote_img5() {
		return note_img5;
	}
	public void setNote_img5(String note_img5) {
		this.note_img5 = note_img5;
	}
	@Override
	public String toString() {
		return "Note_img [note_no=" + note_no + ", note_img1=" + note_img1 + ", note_img2=" + note_img2 + ", note_img3="
				+ note_img3 + ", note_img4=" + note_img4 + ", note_img5=" + note_img5 + "]";
	}
}
