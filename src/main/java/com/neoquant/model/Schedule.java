package com.neoquant.model;

import javax.persistence.*;

@Entity
@Table(name="schedule_table")
public class Schedule {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private Long id;
	private String interview_type;
	private String interview_status;
	private String schedule_date;
	private String schedule_time;
	private String doj;
	
	@ManyToOne
	private Candidate candidate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getInterview_type() {
		return interview_type;
	}

	public void setInterview_type(String interview_type) {
		this.interview_type = interview_type;
	}

	public String getInterview_status() {
		return interview_status;
	}

	public void setInterview_status(String interview_status) {
		this.interview_status = interview_status;
	}

	public String getSchedule_date() {
		return schedule_date;
	}

	public void setSchedule_date(String schedule_date) {
		this.schedule_date = schedule_date;
	}

	public String getSchedule_time() {
		return schedule_time;
	}

	public void setSchedule_time(String schedule_time) {
		this.schedule_time = schedule_time;
	}

	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public Candidate getCandidate() {
		return candidate;
	}

	public void setCandidate(Candidate candidate) {
		this.candidate = candidate;
	}

	@Override
	public String toString() {
		return "Schedule [id=" + id + ", interview_type=" + interview_type + ", interview_status=" + interview_status
				+ ", schedule_date=" + schedule_date + ", schedule_time=" + schedule_time + ", doj=" + doj + "]";
	}
	

}
