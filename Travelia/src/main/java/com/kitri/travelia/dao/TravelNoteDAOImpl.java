package com.kitri.travelia.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kitri.travelia.domain.NoteList;
import com.kitri.travelia.domain.Note_com;
import com.kitri.travelia.domain.Note_img;
import com.kitri.travelia.domain.Travel_note;

@Repository
public class TravelNoteDAOImpl implements TravelNoteDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace ="com.kitri.travelia.mapper.TravelNoteMapper";

	@Override
	public void createNote(Travel_note note) throws Exception {
		sqlSession.insert(namespace+".createNote",note);
	}

	@Override
	public void createImg(Note_img Note_img) throws Exception {
		System.out.println("DAO>> NOTE_IMG "+ Note_img.toString());
		sqlSession.insert(namespace+".createImg", Note_img);
	}
	
	@Override
	public int note_no() throws Exception {
		return sqlSession.selectOne(namespace +".note_no");
	}

	@Override
	public Travel_note readNote(Integer note_no) throws Exception {
		return sqlSession.selectOne(namespace+".readNote",note_no);
	}

	@Override
	public Note_com readNoteCom(Integer note_no) throws Exception {
		return sqlSession.selectOne(namespace+".listCom",note_no);
	}

	@Override
	public Note_img readNoteImg(Integer note_no) throws Exception {
		return sqlSession.selectOne(namespace+".readImg",note_no);
	}

	@Override
	public void update(Travel_note note, Note_img img) throws Exception {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void delete(Integer note_no) throws Exception {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<NoteList> listAll() throws Exception {
		return sqlSession.selectList(namespace+".list");
	}
}
