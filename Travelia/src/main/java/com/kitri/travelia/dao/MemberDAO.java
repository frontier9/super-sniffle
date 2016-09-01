package com.kitri.travelia.dao;

import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.kitri.travelia.domain.Member;

import java.util.List;

public interface MemberDAO {
	public String getTime();
	//로그인
	Member confirmEmail(String email) throws UsernameNotFoundException;
	List<Member> selectMemberList() throws Exception;
	int insertMember(Member member);
	String overlapTest(String email);	//id중복체크
	void updateMember(Member member);
	Member getMemberInfo(String id);
	String passwordCnt(Member member);
	String getPassword(String email);
	
}
