package com.kitri.travelia.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kitri.travelia.dao.MemberDAO;
import com.kitri.travelia.domain.Member;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO	dao;
	
	@Override
	@Transactional
	public int insertMember(Member member) {
		 return dao.insertMember(member);
	}

}
