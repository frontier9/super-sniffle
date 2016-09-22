package com.kitri.travelia.service;

import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kitri.travelia.dao.TravelNoteDAO;
import com.kitri.travelia.domain.NoteList;
import com.kitri.travelia.domain.Note_img;
import com.kitri.travelia.domain.Travel_note;

@Service
public class TravelNoteServiceImpl implements TravelNoteService{
	@Inject
	private TravelNoteDAO dao;

	@Transactional
	@Override
	public void regist(Travel_note note) throws Exception {		
		Note_img img = new Note_img();
		String[] note_img = note.getNote_imgFile();
		
		System.out.println(Arrays.toString(note_img));
		
		img.setNote_img1(note_img[0]);
		img.setNote_img2(note_img[1]);
		img.setNote_img3(note_img[2]);
		img.setNote_img4(note_img[3]);
		img.setNote_img5(note_img[4]);
		
		
		dao.createNote(note);
		int note_no = dao.note_no();
		img.setNote_no(note_no);
		
		dao.createImg(img);
		
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
	public List<NoteList> listAll() throws Exception {
		return dao.listAll();
	}

}
