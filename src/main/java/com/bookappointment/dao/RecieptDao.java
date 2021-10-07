package com.bookappointment.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.bookappointment.model.Reciept;

@Component
public class RecieptDao {
	@Autowired
	HibernateTemplate hibernateTemplate;

	@Transactional(readOnly = false)
	public void saveReciept(Reciept reciet) {
		hibernateTemplate.save(reciet);

	}

	public Reciept getRecieptbyId(int rid) {

		return hibernateTemplate.get(Reciept.class, rid);
	}

}
