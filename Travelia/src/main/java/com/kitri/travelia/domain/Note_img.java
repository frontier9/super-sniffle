package com.kitri.travelia.domain;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Note_img {
	private int no;
	//최대 10
	private ArrayList<String> img;
}
