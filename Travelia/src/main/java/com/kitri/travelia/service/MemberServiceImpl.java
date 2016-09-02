package com.kitri.travelia.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kitri.travelia.dao.MemberDAO;
import com.kitri.travelia.domain.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO dao;

	@Override
	@Transactional
	public void regist(Member member) throws Exception {
		dao.create(member);
	}

	@Override
	public Member read(Integer mem_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member modify(Member member) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove(Integer mem_no) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Member> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
