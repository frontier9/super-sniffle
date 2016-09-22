package com.kitri.travelia.dao;

import java.util.List;

import com.kitri.travelia.domain.NoteList;
import com.kitri.travelia.domain.Note_com;
import com.kitri.travelia.domain.Note_img;
import com.kitri.travelia.domain.Travel_note;

public interface TravelNoteDAO {
	public void createNote(Travel_note note) throws Exception;
	public void createImg(Note_img Note_img) throws Exception;
	public int note_no() throws Exception;
	public Travel_note readNote(Integer note_no) throws Exception;
	public Note_com readNoteCom(Integer note_no) throws Exception;
	public Note_img readNoteImg(Integer note_no) throws Exception;
	public void update(Travel_note note, Note_img img) throws Exception;
	public void delete(Integer note_no) throws Exception;
	public List<NoteList> listAll() throws Exception;
}