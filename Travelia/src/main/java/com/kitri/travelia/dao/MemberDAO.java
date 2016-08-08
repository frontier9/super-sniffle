package com.kitri.travelia.dao;

import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.kitri.travelia.domain.Member;

public interface MemberDAO {
	public String getTime();
	//로그인
	public Member confirmEmail(String email) throws UsernameNotFoundException;
	public int insertMember(Member member);
	String overlapTest(String email);	//id중복체크
	void updateMember(Member member);
	Member getMemberInfo(String id);
	String passwordCnt(Member member);
	String getPassword(String email);
	
}
