package com.traveler.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.traveler.service.TravelerService;

@Controller
@RequestMapping(path = { "/traveler" })
public class TravelerController {

	@Autowired
	@Qualifier("travelerService")
	private TravelerService travelerService;

	@GetMapping(path = { "/init-data" })
	public String initData(HttpServletRequest req) {
		// 1. 데이터베이스에서 traveler 테이블 drop
		// 2. 데이터베이스에서 traveler 테이블 create
		// 3. traveler 테이블에 데이터 저장
		ServletContext application = req.getServletContext(); // JSP의 application 내장 객체와 같은 객체
		String csvPath = application.getRealPath("/WEB-INF/data-files/Flight_Departure_Schedules_Incheon_Airport.csv"); // web
																														// path
		// (http://....) ->
		// computer path
		// (C:\...)
		// LottoService lottoService = new LottoServiceImpl();
		travelerService.initData(csvPath);

		System.out.println("init data !!!");

		// 4. home으로 redirect (응답컨텐츠 생산)
		return "redirect:/home";
	}

	@RequestMapping(path = { "/graph" })
	public String takeoffNumbers(String flights, String destination, String airline ,Model model) {
		// 1. 데이터 읽기 (전달인자를 통해서 수신)
		String[] countByNumber = travelerService.loadStatsByNumber(flights, destination, airline);

		// 2. 조회된 데이터를 jsp에서 읽을 수 있도록 request 객체에 저장
		model.addAttribute("countByNumber", countByNumber);
		model.addAttribute("flights", flights);
		model.addAttribute("destination", destination);
		model.addAttribute("airline", airline);
		return "traveler/graph";
	}

	/*@RequestMapping(path = { "/graph-section" })
	public String statsBySection(@RequestParam(defaultValue = "10") int range,
			@RequestParam(defaultValue = "5") int months, Model model) {

		int[] countBySection = travelerService.loadStatsBySection(months, range);
		model.addAttribute("countBySection", countBySection);
		model.addAttribute("range", range);
		model.addAttribute("months", months);

		return "traveler/graph-section";
	}*/

}
