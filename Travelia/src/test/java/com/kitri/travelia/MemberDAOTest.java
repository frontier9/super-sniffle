package com.kitri.travelia;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kitri.travelia.dao.MemberDAO;
import com.kitri.travelia.domain.Member;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MemberDAOTest {
	
	@Inject
	private MemberDAO dao;
	
	
	public void testTime()throws Exception{
		System.out.println(dao.currentTime());
	}
	
	//@Test
	public void testreadMember()throws Exception{
		Member member = dao.read("kngt5965@naver.com");
		System.out.println("member = " + member.toString());
	}
	
	@Test
	public void testInsert() throws Exception{
		Member member = new Member();
		member.setMem_email("asd9878@naver.com");
		member.setMem_pw("1234");
		member.setMem_nick("asd");
		member.setMem_avt("default.png");
		System.out.println(member.toString());
		dao.create(member);
	}
}
