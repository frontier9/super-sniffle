package com.kitri.travelia.domain;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class Travel_note {
	private int note_no;
	private String note_title;
	private String contitle1;
	private String context1;
	private String contitle2;
	private String context2;
	private String contitle3;
	private String context3;
	private String contitle4;
	private String context4;
	private String timetitle1;
	private String timetext1;
	private String timetitle2;
	private String timetext2;
	private String timetitle3;
	private String timetext3;
	private String timetitle4;
	private String timetext4;
	private String[] note_imgFile;
	private MultipartFile[] note_img;
	//fk
	private int mem_no;
	
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
	public String getContitle1() {
		return contitle1;
	}
	public void setContitle1(String contitle1) {
		this.contitle1 = contitle1;
	}
	public String getContext1() {
		return context1;
	}
	public void setContext1(String context1) {
		this.context1 = context1;
	}
	public String getContitle2() {
		return contitle2;
	}
	public void setContitle2(String contitle2) {
		this.contitle2 = contitle2;
	}
	public String getContext2() {
		return context2;
	}
	public void setContext2(String context2) {
		this.context2 = context2;
	}
	public String getContitle3() {
		return contitle3;
	}
	public void setContitle3(String contitle3) {
		this.contitle3 = contitle3;
	}
	public String getContext3() {
		return context3;
	}
	public void setContext3(String context3) {
		this.context3 = context3;
	}
	public String getContitle4() {
		return contitle4;
	}
	public void setContitle4(String contitle4) {
		this.contitle4 = contitle4;
	}
	public String getContext4() {
		return context4;
	}
	public void setContext4(String context4) {
		this.context4 = context4;
	}
	public String getTimetitle1() {
		return timetitle1;
	}
	public void setTimetitle1(String timetitle1) {
		this.timetitle1 = timetitle1;
	}
	public String getTimetext1() {
		return timetext1;
	}
	public void setTimetext1(String timetext1) {
		this.timetext1 = timetext1;
	}
	public String getTimetitle2() {
		return timetitle2;
	}
	public void setTimetitle2(String timetitle2) {
		this.timetitle2 = timetitle2;
	}
	public String getTimetext2() {
		return timetext2;
	}
	public void setTimetext2(String timetext2) {
		this.timetext2 = timetext2;
	}
	public String getTimetitle3() {
		return timetitle3;
	}
	public void setTimetitle3(String timetitle3) {
		this.timetitle3 = timetitle3;
	}
	public String getTimetext3() {
		return timetext3;
	}
	public void setTimetext3(String timetext3) {
		this.timetext3 = timetext3;
	}
	public String getTimetitle4() {
		return timetitle4;
	}
	public void setTimetitle4(String timetitle4) {
		this.timetitle4 = timetitle4;
	}
	public String getTimetext4() {
		return timetext4;
	}
	public void setTimetext4(String timetext4) {
		this.timetext4 = timetext4;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	 
	
	public String[] getNote_imgFile() {
		return note_imgFile;
	}
	public void setNote_imgFile(String[] note_imgFile) {
		this.note_imgFile = note_imgFile;
	}
	public MultipartFile[] getNote_img() {
		return note_img;
	}
	public void setNote_img(MultipartFile[] note_img) {
		this.note_img = note_img;
	}
	
	@Override
	public String toString() {
		return "Travel_note [note_no=" + note_no + ", note_title=" + note_title + ", contitle1=" + contitle1
				+ ", context1=" + context1 + ", contitle2=" + contitle2 + ", context2=" + context2 + ", contitle3="
				+ contitle3 + ", context3=" + context3 + ", contitle4=" + contitle4 + ", context4=" + context4
				+ ", timetitle1=" + timetitle1 + ", timetext1=" + timetext1 + ", timetitle2=" + timetitle2
				+ ", timetext2=" + timetext2 + ", timetitle3=" + timetitle3 + ", timetext3=" + timetext3
				+ ", timetitle4=" + timetitle4 + ", timetext4=" + timetext4 + ", note_imgFile="
				+ Arrays.toString(note_imgFile) + ", note_img=" + Arrays.toString(note_img) + ", mem_no=" + mem_no
				+ "]";
	}
	
}
