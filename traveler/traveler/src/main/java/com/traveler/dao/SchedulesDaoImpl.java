package com.traveler.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.traveler.vo.FlightSchedules;

public class SchedulesDaoImpl implements SchedulesDao {
	
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {	// 의존 객체 주입위한 통로 (DI:Dependency Injection을 위한 통로)
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void insertFlightSchedules(List<FlightSchedules> schedules) {

		Connection conn = null;			// 연결 객체의 참조를 저장할 변수
		PreparedStatement pstmt = null;	// 명령 객체의 참조를 저장할 변수
		
		// 0. 예외 처리 구조 만들기
		try {
			// 1. 드라이버 로딩 (등록)
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 2. 연결 객체 만들기
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/flight_schedules",	// 사용할 데이터베이스 연결 정보 
					"kdigital", "mysql");						// 데이터베이스 사용자 계정
			
			conn.setAutoCommit(false);
			
			// 3. SQL 작성 + 명령 객체 만들기
			String sql = "INSERT INTO FLIGHT_SCHEDULES (DAY, FLIGHT, TIME, DATE_FROM, DATE_TO, AIRLINE, DESTINATION) " +
						 "VALUES (?, ?, ?, ?, ?, ?, ?) ";
			
			pstmt = conn.prepareStatement(sql);
			
			for (FlightSchedules fs : schedules) {
				pstmt.setString(1, fs.getDay());
				pstmt.setString(2, fs.getFlight());
				pstmt.setString(3, fs.getTime());
				pstmt.setDate(4, new java.sql.Date(fs.getDate_from().getTime()));
				pstmt.setDate(5, new java.sql.Date(fs.getDate_to().getTime()));
				pstmt.setString(6, fs.getAirline());
				pstmt.setString(7, fs.getDestination());
				pstmt.addBatch();
			}
			
			// 4. 명령 실행
			pstmt.executeBatch(); // 일괄 처리 -> 한 번에 여러 개를 insert
			
			conn.commit();
			conn.setAutoCommit(true);
			
		} catch (Exception ex) {
			ex.printStackTrace();// 콘솔에 오류 메시지를 출력
		} finally {
			// 6. 연결 닫기
			try { pstmt.close(); } catch (Exception ex) {}
			try { conn.close(); } catch (Exception ex) {}
		}
		
	}
	
}
