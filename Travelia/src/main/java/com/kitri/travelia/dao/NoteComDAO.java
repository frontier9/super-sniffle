package com.kitri.travelia.dao;

import java.util.List;

import com.kitri.travelia.domain.Note_com;

public interface NoteComDAO {
	public List<Note_com> list(Integer note_no) throws Exception;
	public void create(Note_com notecom) throws Exception;
	public void update(Note_com notecom) throws Exception;
	public void delete(Integer trn_no) throws Exception;	
}
