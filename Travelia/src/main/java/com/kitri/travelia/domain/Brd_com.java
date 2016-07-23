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
public class Brd_com {
	private int com_no;
	private String com;
	private Timestamp write_date;
	private String writer;
	//fk
	private int article_no;	
	
}
