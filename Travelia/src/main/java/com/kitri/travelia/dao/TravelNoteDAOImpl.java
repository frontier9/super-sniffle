package com.kitri.travelia.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.kitri.travelia.domain.Travel_note;

public class TravelNoteDAOImpl implements TravelNoteDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace ="com.kitri.travelia.mapper.TravelNoteMapper";

	@Override
	public void create(Travel_note note) throws Exception {
		//session.insert(namespace+".createTravelNote",note);
	}
	@Override
	public Travel_note read(Integer note_no) throws Exception {
		//return session.selectOne(namespace+".read",note_no);
		return null;
	}

	@Override
	public void update(Travel_note note) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer note_no) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Travel_note> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
