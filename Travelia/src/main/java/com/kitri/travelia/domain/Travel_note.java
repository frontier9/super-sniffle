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
public class Travel_note {
	private int no;
	private String title;
	private String note;
	private Timestamp write_date;
	private int hit;
	private String nick;
	private String cat;
	private int recom;
	private int mem_no;
}
