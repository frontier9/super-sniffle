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
	
	private int mem_no;
	private String mem_email;
	private String mem_pw;
	private String mem_nick;
	private String mem_avt;
	private Timestamp mem_reg_date;
	private String mem_intro;
	private String mem_auth_pending;
	private String mem_auth_key;
	
	
	public Member() {
		super();
	}
	public Member(int mem_no, String mem_email, String mem_pw, String mem_nick, String mem_avt, Timestamp mem_reg_date,
			String mem_intro, String mem_auth_pending, String mem_auth_key) {
		this.mem_no = mem_no;
		this.mem_email = mem_email;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
		this.mem_avt = mem_avt;
		this.mem_reg_date = mem_reg_date;
		this.mem_intro = mem_intro;
		this.mem_auth_pending = mem_auth_pending;
		this.mem_auth_key = mem_auth_key;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	public String getMem_avt() {
		return mem_avt;
	}
	public void setMem_avt(String mem_avt) {
		this.mem_avt = mem_avt;
	}
	public Timestamp getMem_reg_date() {
		return mem_reg_date;
	}
	public void setMem_reg_date(Timestamp mem_reg_date) {
		this.mem_reg_date = mem_reg_date;
	}
	public String getMem_intro() {
		return mem_intro;
	}
	public void setMem_intro(String mem_intro) {
		this.mem_intro = mem_intro;
	}
	public String getMem_auth_pending() {
		return mem_auth_pending;
	}
	public void setMem_auth_pending(String mem_auth_pending) {
		this.mem_auth_pending = mem_auth_pending;
	}
	public String getMem_auth_key() {
		return mem_auth_key;
	}
	public void setMem_auth_key(String mem_auth_key) {
		this.mem_auth_key = mem_auth_key;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	@Override
	public String toString() {
		return "Member [mem_no=" + mem_no + ", mem_email=" + mem_email + ", mem_pw=" + mem_pw + ", mem_nick=" + mem_nick
				+ ", mem_avt=" + mem_avt + ", mem_reg_date=" + mem_reg_date + ", mem_intro=" + mem_intro
				+ ", mem_auth_pending=" + mem_auth_pending + ", mem_auth_key=" + mem_auth_key + "]";
	}
	
	//UserDetails 구현 메소드
	
	//인증 후 필요한 ROLE_USER권한 반환
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		if(getMem_email()!=""||getMem_email()!=null)
			authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
		return authorities;
	}
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return getMem_pw();
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return getMem_email();
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
