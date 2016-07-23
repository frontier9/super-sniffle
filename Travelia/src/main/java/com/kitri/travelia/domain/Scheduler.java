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
public class Scheduler {
	private int sch_no;
	private String writer;
	//여행시작일 추가
	private String itin_days;
	private String title;
	private Timestamp write_date;
	private int mem_no;
	
}
