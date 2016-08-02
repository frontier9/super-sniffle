package com.kitri.travelia.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.kitri.travelia.domain.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace ="com.kitri.travelia.mapper.MemberMaper";
	
	@Override
	public String getTime() {
		return sqlSession.selectOne(namespace+".getTime");
	}

	@Override
	public void insertMembertest(Member member) {
		sqlSession.insert(namespace+".insertMembertest",member);
		

	}
	@Override
	public void insertMember(Member member) {
		sqlSession.insert(namespace+".insertMember", member);
		
	}

	@Override
	public Member confirmEmail(String email) throws UsernameNotFoundException {
		return sqlSession.selectOne(namespace+".confirmEmail", email);
	}

	@Override
	public String overlapTest(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getEmail() {
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
