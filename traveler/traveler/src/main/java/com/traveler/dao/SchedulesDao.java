package com.traveler.dao;

import java.util.List;

import com.traveler.vo.FlightSchedules;

public interface SchedulesDao {
	
	void insertFlightSchedules(List<FlightSchedules> schedules);
	
}
