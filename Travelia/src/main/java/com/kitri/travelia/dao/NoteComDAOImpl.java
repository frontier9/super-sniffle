package com.kitri.travelia.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kitri.travelia.domain.Note_com;


@Repository
public class NoteComDAOImpl implements NoteComDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace ="com.kitri.travelia.mapper.NoteComMapper";
	
	@Override
	public List<Note_com> list(Integer note_no) throws Exception {
		return sqlSession.selectList(namespace+".list",note_no);
	}

	@Override
	public void create(Note_com notecom) throws Exception {
		sqlSession.insert(namespace+".create", notecom);
	}

	@Override
	public void update(Note_com notecom) throws Exception {
		sqlSession.update(namespace+".update",notecom);
		
	}

	@Override
	public void delete(Integer trn_no) throws Exception {
		sqlSession.update(namespace+".delete",trn_no);
	}

}
