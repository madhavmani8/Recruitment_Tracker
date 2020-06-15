package com.neoquant.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="candidate")
public class Candidate {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private Long id;
	private String name;
	private String client_name;
	private String recruiter_name;
	private String email;
	private String current_location;
	private String offered_location;
	private String ctc;
	private String expected_ctc;
	private String skill;
	private String notice_period;
	private String current_status;
	private String interview_type;
	private String interview_status;
	private String schedule_date;
	private String schedule_time;
	private String comments;
	private String mobile;
	
	@OneToMany(mappedBy="candidate")
	private Set<Schedule> schedule;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClient_name() {
		return client_name;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}
	public String getRecruiter_name() {
		return recruiter_name;
	}
	public void setRecruiter_name(String recruiter_name) {
		this.recruiter_name = recruiter_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCurrent_location() {
		return current_location;
	}
	public void setCurrent_location(String current_location) {
		this.current_location = current_location;
	}
	public String getOffered_location() {
		return offered_location;
	}
	public void setOffered_location(String offered_location) {
		this.offered_location = offered_location;
	}
	public String getCtc() {
		return ctc;
	}
	public void setCtc(String ctc) {
		this.ctc = ctc;
	}
	public String getExpected_ctc() {
		return expected_ctc;
	}
	public void setExpected_ctc(String expected_ctc) {
		this.expected_ctc = expected_ctc;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getNotice_period() {
		return notice_period;
	}
	public void setNotice_period(String notice_period) {
		this.notice_period = notice_period;
	}
	public String getCurrent_status() {
		return current_status;
	}
	public void setCurrent_status(String current_status) {
		this.current_status = current_status;
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
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	@Override
	public String toString() {
		return "Candidate [id=" + id + ", name=" + name + ", client_name=" + client_name + ", recruiter_name="
				+ recruiter_name + ", email=" + email + ", current_location=" + current_location + ", offered_location="
				+ offered_location + ", ctc=" + ctc + ", expected_ctc=" + expected_ctc + ", skill=" + skill
				+ ", notice_period=" + notice_period + ", current_status=" + current_status + ", interview_type="
				+ interview_type + ", interview_status=" + interview_status + ", schedule_date=" + schedule_date
				+ ", schedule_time=" + schedule_time + ", comments=" + comments + ", mobile=" + mobile + "]";
	}
	
	
	
}
