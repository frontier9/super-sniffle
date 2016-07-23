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
public class Note_com {
	private int no;
	private String com;
	private Timestamp wirte_date;
	private String writer;
	private int note_no;
	
}
