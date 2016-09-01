package com.kitri.travelia.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.kitri.travelia.domain.Member;

import java.util.List;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSessionFactory sqlSessionFactory;

	private static final String namespace ="com.kitri.travelia.mapper.MemberMaper";

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<Member> selectMemberList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();

		try {
			return sqlSession.selectList(namespace +".selectMemberList");
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public String getTime() {
		SqlSession sqlSession = sqlSessionFactory.openSession();

		try {
			return sqlSession.selectOne(namespace + ".getTime");
		} finally {
			sqlSession.close();
		}
	}


	@Override
	public int insertMember(Member member) {
		SqlSession sqlSession = sqlSessionFactory.openSession();

		try {
			int count = sqlSession.insert(namespace+".insertMember", member);
			sqlSession.commit();
			return count;
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public Member confirmEmail(String email) throws UsernameNotFoundException {
		SqlSession sqlSession = sqlSessionFactory.openSession();

		System.out.println("(MemberDAOImpl) Email :" +email);
		Member member = sqlSession.selectOne(namespace+".confirmEmail", email);
		System.out.print("(MemberDAOImpl) Member :"+ member.toString());

		return sqlSession.selectOne(namespace+".confirmEmail",email);
	}

	@Override 
	public String overlapTest(String id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void updateMember(Member VO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Member getMemberInfo(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String passwordCnt(Member memVO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPassword(String member_id) {
		// TODO Auto-generated method stub
		return null;
	}
}
