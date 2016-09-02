package com.kitri.travelia.dao;

import java.util.List;

import com.kitri.travelia.domain.Travel_note;

public interface TravelNoteDAO {
	public void create(Travel_note note) throws Exception;
	public Travel_note read(Integer note_no) throws Exception;
	public void update(Travel_note note) throws Exception;
	public void delete(Integer note_no) throws Exception;
	public List<Travel_note> listAll() throws Exception;
}