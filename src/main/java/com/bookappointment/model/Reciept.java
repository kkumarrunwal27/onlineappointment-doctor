package com.bookappointment.model;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Reciept {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int rid;

	private Category cid;
	private Date date;
	private Time time;
	private User username;
	private Doctor dname;

	public Category getCid() {
		return cid;
	}

	public void setCid(Category cid) {
		this.cid = cid;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public User getUsername() {
		return username;
	}

	public void setUsername(User username) {
		this.username = username;
	}

	public Doctor getDname() {
		return dname;
	}

	public void setDname(Doctor dname) {
		this.dname = dname;
	}

}
