package com.kitri.travelia.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kitri.travelia.domain.Travel_note;

@Service
public class TravelNoteServiceImpl implements TravelNoteService{
	//@Inject
	//private TravelNoteDAO dao;

	@Override
	public int regist(Travel_note note) throws Exception {
	//	dao.create(note);
		return 0;
	}

	@Override
	public Travel_note read(Integer note_no) throws Exception {
		return null;
	}

	@Override
	public int modify(Travel_note note) throws Exception {
		return 0;
	}

	@Override
	public int remove(Integer note_no) throws Exception {
		return 0;
	}

	@Override
	public List<Travel_note> listAll() throws Exception {
		return null;
	}

}
