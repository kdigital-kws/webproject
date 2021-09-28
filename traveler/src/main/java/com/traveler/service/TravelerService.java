package com.traveler.service;

import java.util.List;

import com.traveler.vo.BoardVO;
import com.traveler.vo.FlightSchedules;



public interface TravelerService {

	
		void initData(String csvPath);

		List<FlightSchedules> readFlightSchedulesFromCsv(String csvPath);

		
		
		List<FlightSchedules> readAirline();

		List<FlightSchedules> readFlight();
		List<FlightSchedules> readDateFrom();
		List<FlightSchedules> readDestination();
		List<FlightSchedules> readDay();

		List<String> readAirlineByDestination(String destination);

		List<String> readDayByDestinationAndAirline(String destination, String airline);
		

	

		

		
		
		
}
