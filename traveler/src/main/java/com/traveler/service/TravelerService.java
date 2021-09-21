package com.traveler.service;

import java.util.List;

import com.traveler.vo.FlightSchedules;



public interface TravelerService {

	
		void initData(String csvPath);

		List<FlightSchedules> readFlightSchedulesFromCsv(String csvPath);

		String[] loadStatsByNumber(String flights, String destination, String airline);

		//int[] loadStatsBySection(int months, int range);

		

		
		
		
}
