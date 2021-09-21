package com.traveler.vo;

import java.sql.Date;

import lombok.Data;

// VO: 데이터 저장용 클래스 -> 일반적으로 데이터베이스 테이블에 대응하는 클래스
public class MemberVO {
	
	// VO 클래스의 필드(변수)는 데이터베이스의 테이블의 컬럼과 일치하도록 구현
	private String memberID;
	private String passwd;
	private String email;
	private String usertype;
	private boolean active;
	private Date regDate;
	
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
}
