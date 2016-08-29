package com.kitri.travelia.domain;

import java.util.ArrayList;

//travel note Image
public class Note_img {
	private int note_no;
	//최대 10
	private ArrayList<String> note_img;
	
	public Note_img() {
	}

	public Note_img(int note_no, ArrayList<String> note_img) {
		super();
		this.note_no = note_no;
		this.note_img = note_img;
	}
	
	public int getNote_no() {
		return note_no;
	}
	public void setNote_no(int note_no) {
		this.note_no = note_no;
	}
	public ArrayList<String> getNote_img() {
		return note_img;
	}
	public void setNote_img(ArrayList<String> note_img) {
		this.note_img = note_img;
	}

	@Override
	public String toString() {
		return "Note_img [note_no=" + note_no + ", note_img=" + note_img + "]";
	}
	
	
	
}
