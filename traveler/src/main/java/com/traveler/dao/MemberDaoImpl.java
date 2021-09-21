package com.traveler.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.traveler.vo.MemberVO;

public class MemberDaoImpl implements MemberDao{
	private DataSource dataSource;
	public void setDataSource(DataSource dataSource) { // 의존 객체 주입 통로
		this.dataSource = dataSource;
	}
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {//의존 객체 주입 통로 ( 스프링 ico에 DI를 통해 jdbcTemplate에 인스턴스 참조 저 
		this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public void insertMember(MemberVO member) {
		
			// 3. SQL 작성 + 명령 객체 만들기
			String sql = "INSERT INTO member (memberid, passwd, email) VALUES (?, ?, ?)";
			jdbcTemplate.update(sql,member.getMemberId(),member.getPasswd(),member.getEmail());
	}
	@Override
	public MemberVO selectMemberByIdAndPasswd(String memberId, String passwd) {
		
		// 3. SQL 작성 + 명령 객체 만들기
			String sql = "SELECT memberid, email, usertype, regdate " +
						 "FROM member WHERE active = true AND memberid = ? AND passwd = ?";
			MemberVO member = jdbcTemplate.queryForObject(sql, new RowMapper<MemberVO>(){

				@Override
				public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					MemberVO member = new MemberVO();
					member.setMemberId(rs.getString(1));
					member.setEmail(rs.getString(2));
					member.setUserType(rs.getString(3));
					member.setRegDate(rs.getDate(4));
					return member;
				} 
			
				
			}, memberId, passwd);
			
			
		
		return member;
	}

}
