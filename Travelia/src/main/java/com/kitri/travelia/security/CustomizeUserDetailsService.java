package com.kitri.travelia.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.kitri.travelia.dao.MemberDAO;
import com.kitri.travelia.domain.Member;

//UserDetailsService로 권한 및 로그인 처리
public class CustomizeUserDetailsService implements UserDetailsService {
	
	@Autowired
	private MemberDAO memberDAO;	

	@Override
	public UserDetails loadUserByUsername(String useremail) throws UsernameNotFoundException {
		
		System.out.println("(UserDetailService) userEmail:" + useremail);
		
		//StandardPasswordEncoder encoder = new StandardPasswordEncoder();
		
		//사용자가 입력한 계정명으로 해당 계정을 찾아옴
		Member member = memberDAO.confirmEmail(useremail);
		
		System.out.println("UserDetailService , Member = " + member.toString());
		//계정에 상태 설정
		boolean enabled = member.isEnabled();	// 사용 가능한지
		boolean accountNonExpired = member.isAccountNonExpired();	//계정이 만료됬는지
		boolean credentialsNonExpired = member.isCredentialsNonExpired();	//자격이 만료됬는지
		boolean accountNonLocked = member.isAccountNonLocked();	//계정이 잠겼는지
		
		
		//DB에서 권한 목록을 가져와서 권한을 추가
		String defaultAuthority ="Anonymous";
		
		/*
		Collection<Role> authorities = (Collection<Role>)memberDAO.getAuthority(useremail);
		boolean flag = true;
		for(Role role : authorities){
			// 권한이 Anonymous인 경후 권한 목록을 따로 생성하지 않음
			if(role.getAuthority().equals(defaultAuthority)){
				flag=false;
			}
		}
		//회원인 경우 권한 처리 진행
		if(flag){
			Role role = new Role();
			role.setAuthority(defaultAuthority);
			authorities.add(role);
		}
		
		member.setAccountNonExpired(accountNonExpired);
		member.setAccountNonLocked(accountNonLocked);
		member.setCredentialNonExpired(credentialsNonExpired);
		member.setAuthorities(authorities);
			
				*/
		
		return member;


		
	}

}
