package com.kitri.travelia.service;

import java.util.List;

import com.kitri.travelia.domain.Member;

public interface MemberService {
	 public void regist(Member member) throws Exception;
	 public Member read(Integer mem_no) throws Exception;
	 public Member modify(Member member) throws Exception;
	 public void remove(Integer mem_no) throws Exception;
	 public List<Member> listAll() throws Exception;
}
