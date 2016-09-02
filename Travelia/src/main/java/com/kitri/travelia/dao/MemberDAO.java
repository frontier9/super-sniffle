package com.kitri.travelia.dao;

import java.util.List;

import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.kitri.travelia.domain.Member;

public interface MemberDAO {
	
	//현재 시간
	public String currentTime();
	//회원 가입
	public int create(Member member) throws Exception;
	//로그인 시 정보 가져옴
	public Member read(String email) throws UsernameNotFoundException;
	//정보 수정
	public int update(Member member) throws Exception;
	//회원 탈퇴
	public int delete(int mem_no) throws Exception;
	//회원 리스트 조회
	public List<Member> listAll() throws Exception;
	
}
