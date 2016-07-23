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
public class Sch_sub {
	private int no;
	private String date;
	private int seq;
	private Timestamp time;
	private int content_id;
	private int note_no;
	
}
