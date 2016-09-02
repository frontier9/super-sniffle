package com.kitri.travelia.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.kitri.travelia.domain.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	private static String namespace ="com.kitri.travelia.mapper.MemberMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	//현재 시간 조회
	@Override
	public String currentTime() {
		return sqlSession.selectOne(namespace+".getTime");
	}
	
	//회원 가입
	@Override
	public int create(Member member) throws Exception {
		sqlSession.insert(namespace+".create",member);
		System.out.println("(MemberDAO)member="+member.toString());
		return 0;		
	}
	
	//회원 조회 (Spring Security 사용)
	@Override
	public Member read(String useremail) throws UsernameNotFoundException {	
		System.out.println("(MemberDAOImpl) Email :" + useremail);
		Member member = sqlSession.selectOne(namespace+".read", useremail);
		System.out.print("(MemberDAOImpl) Member :"+ member.toString());
		
		return sqlSession.selectOne(namespace+".read",useremail);
	}
	
	//회원 정보 수정
	@Override
	public int update(Member member) throws Exception {
		sqlSession.update(namespace+".update",member);
		return 0;		
	}
	
	//회원 탈퇴
	@Override
	public int delete(int mem_no) throws Exception {
		sqlSession.delete(namespace+".delete",mem_no);
		return 0;	
	}
	
	//회원 리스트 조회
	@Override
	public List<Member> listAll() throws Exception {
		return sqlSession.selectList(namespace+".listAll");
	}
}
