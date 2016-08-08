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
		System.out.println(dao.getTime());
	}
	
	public void testInsertMember() throws Exception{
		Member member = new Member();
		/*
		member.setEmail("aadsdsdsdfaaa");
		member.setNick("ssfysdsda");
		member.setPw("aaaasdsdsdsfa");
		dao.insertMembertest(member);
		*/
	}
	@Test
	public void testConfirmEmail()throws Exception{
		Member member = dao.confirmEmail("khs987872@gmail.com");
		System.out.println("member = " + member.toString());
	}

}
