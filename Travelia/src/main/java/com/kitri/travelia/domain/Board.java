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
public class Board {
	private int article_no;
	private String article_title;
	private String article;
	private Timestamp write_date;
	private int hit;
	private String writer;
	private String cat;
	private String attach;
	//fk
	private int mem_no;
	
}
