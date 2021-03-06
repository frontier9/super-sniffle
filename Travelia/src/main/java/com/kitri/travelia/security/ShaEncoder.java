package com.kitri.travelia.security;

import javax.annotation.Resource;

import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Service;

//회원가입 시 비밀번호 암호화
@Service("shaEncoder")
public class ShaEncoder {

	@Resource(name = "passwordEncoder")
	private ShaPasswordEncoder encoder;

	public String encoding(String str) {
		return encoder.encodePassword(str, null);
	}
}