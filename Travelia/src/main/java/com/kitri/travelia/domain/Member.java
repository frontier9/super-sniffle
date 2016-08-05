package com.kitri.travelia.domain;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class Member implements UserDetails{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int no;
	private String email;
	private String pw;
	private String nick;
	private String avt;
	private Timestamp reg_date;
	private String intro;
	private String auth_pending;
	private String auth_key;
	
	
	public Member() {
	}
	public Member(int no, String email, String pw, String nick, String avt, Timestamp reg_date, String intro,
			String auth_pending, String auth_key) {
		super();
		this.no = no;
		this.email = email;
		this.pw = pw;
		this.nick = nick;
		this.avt = avt;
		this.reg_date = reg_date;
		this.intro = intro;
		this.auth_pending = auth_pending;
		this.auth_key = auth_key;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getAvt() {
		return avt;
	}
	public void setAvt(String avt) {
		this.avt = avt;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getAuth_pending() {
		return auth_pending;
	}
	public void setAuth_pending(String auth_pending) {
		this.auth_pending = auth_pending;
	}
	public String getAuth_key() {
		return auth_key;
	}
	public void setAuth_key(String auth_key) {
		this.auth_key = auth_key;
	}
	@Override
	public String toString() {
		return "Member [no=" + no + ", email=" + email + ", pw=" + pw + ", nick=" + nick + ", avt=" + avt
				+ ", reg_date=" + reg_date + ", intro=" + intro + ", auth_pending=" + auth_pending + ", auth_key="
				+ auth_key + "]";
	}
	//UserDetails 구현 메소드
	
	//인증 후 필요한 ROLE_USER권한 반환
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		if(getEmail()!=""||getEmail()!=null)
			authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
		return authorities;
	}
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return pw;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return email;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
	
}
