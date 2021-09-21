package com.traveler.service;

import com.traveler.common.Util;
import com.traveler.dao.MemberDao;
import com.traveler.dao.MemberDaoImpl;
import com.traveler.vo.MemberVO;

public class AuthServiceImpl implements AuthService {
	
	private MemberDao memberDao;
	public void setMemberDao(MemberDao memberDao) {	// 의존 객체 주입을 위한 세터
		this.memberDao = memberDao;
	}

	@Override
	public void registerMember(MemberVO member) {
		// 회원 가입할 때의 암호화 처리, passwd 암호화 작업
		String hashedPasswd = Util.getHashedString(member.getPasswd(), "SHA-256");
		member.setPasswd(hashedPasswd);
		
		//MemberDao memberDao = new MemberDaoImpl();	//의존성 주입이 이뤄져서 이제 더 필요없음.
		memberDao.insertMember(member);
		
	}

	@Override
	public MemberVO findMemberByIdAndPasswd(String memberID, String passwd) {
		
		// 로그인 할 때의 암호화 처리, passwd 암호화 작업
		passwd = Util.getHashedString(passwd, "SHA-256");
		
		//MemberDao memberDao = new MemberDaoImpl();	//의존성 주입이 이뤄져서 이제 더 필요없음.
		MemberVO member = memberDao.selectMemberByIdAndPasswd(memberID, passwd);
		
		return member;
		
	}
}
