package com.bookappointment.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.bookappointment.model.Doctor;

@Component
public class DoctorDao {
	@Autowired
	HibernateTemplate hibernateTemplate;

	@Transactional(readOnly = false)
	public void saveDoctor(Doctor doctor) {
		hibernateTemplate.saveOrUpdate(doctor);

	}

	public List<Doctor> getList() {
		List<Doctor> dlist = hibernateTemplate.loadAll(Doctor.class);
		return dlist;

	}

	// get doctor by id
	public Doctor getDoctor(int did) {
		return hibernateTemplate.get(Doctor.class, did);
	}
	// get doctor list by cid

}
