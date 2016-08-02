package com.kitri.travelia.dao;

import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.kitri.travelia.domain.Member;

public interface MemberDAO {
	public String getTime();
	public void insertMembertest(Member member);
	//로그인
	String getEmail();
	public Member confirmEmail(String email) throws UsernameNotFoundException;
	String overlapTest(String id);	//id중복체크
	void updateMember(Member VO);
	Member getMemberInfo(String id);
	String passwordCnt(Member memVO);
	String getPassword(String member_id);
	public void insertMember(Member member);
}
