package com.kitri.travelia.service;

import java.util.List;

import com.kitri.travelia.domain.NoteList;
import com.kitri.travelia.domain.Travel_note;

public interface TravelNoteService {
	public void regist(Travel_note note) throws Exception;
	public Travel_note read(Integer note_no) throws Exception;
	public int modify(Travel_note note) throws Exception;
	public int remove(Integer note_no) throws Exception;
	public List<NoteList> listAll() throws Exception;
}
