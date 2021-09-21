package com.traveler.service;

import com.traveler.vo.MemberVO;

public interface AuthService {

	void registerMember(MemberVO member);

	MemberVO findMemberByIdAndPasswd(String memberID, String passwd);

}