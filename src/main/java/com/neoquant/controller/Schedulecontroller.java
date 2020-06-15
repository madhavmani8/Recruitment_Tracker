package com.neoquant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.neoquant.model.Schedule;
import com.neoquant.service.ScheduleService;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

@Controller
public class Schedulecontroller {

	@Autowired
	private ScheduleService scheduleserice;
	
/*
	@PostMapping("/schedule")
	public void saveschedule(@ModelAttribute(value="schedule") Schedule schedule, BindingResult error,ModelMap model, HttpServletRequest request) {

		if (error.hasErrors()) {
		//	return "welcome";
			System.out.println("Please bound properly");
		}
		String sd = request.getParameter("sdd");
		String st = request.getParameter("std");
		String interview_status = request.getParameter("isd");
		System.out.println("your entered schedule date is :"+sd);
		System.out.println("Your schedult time is :"+st);
		System.out.println("Interview status is :"+interview_status);
		model.addAttribute("schedule", scheduleserice.save(schedule));
		
		//return "welcome";
	}*/
	
	@PostMapping("/schedule")
	public void editschedule(@RequestParam("sdd") String schedule_date,
								@RequestParam("std")String schedule_time,
								@RequestParam("isd")String interview_status,
								@RequestParam("itd")String interview_type,
								@RequestParam("doj")String doj, 
								@RequestParam("can_id")String can_id,Schedule schedule1,HttpServletRequest request) {
		
		schedule_date = request.getParameter("sdd");
		schedule_time = request.getParameter("std");
		interview_status = request.getParameter("isd");
		System.out.println("your entered schedule date is :"+schedule_date);
		System.out.println("Your schedult time is :"+schedule_time);
		System.out.println("Interview status is :"+interview_status);
		
		scheduleserice.save(schedule1);
	}

}
