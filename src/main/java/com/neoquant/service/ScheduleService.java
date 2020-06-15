package com.neoquant.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.neoquant.repository.ScheduleRepository;
import com.neoquant.model.Schedule;

@Service
public class ScheduleService {

	@Autowired
	private ScheduleRepository schedulerepo;
	
	public void save(Schedule schedule) {
		schedulerepo.save(schedule);
	}
	
	
}
