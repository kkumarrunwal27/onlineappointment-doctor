package com.bookappointment.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.bookappointment.model.Doctor;
import com.bookappointment.model.Login;
import com.bookappointment.model.User;

@Component
public class UserDao {
	@Autowired
	HibernateTemplate hibernateTemplate;

	@Transactional(readOnly = false)
	public void createUser(User user) {

		this.hibernateTemplate.saveOrUpdate(user);

	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = false)
	public User getUserDetailsByEmailAndPassword(String email, String password) {
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(User.class);
		detachedCriteria.add(Restrictions.eq("email", email));
		detachedCriteria.add(Restrictions.eq("password", password));
		List<User> findByCriteria = (List<User>) hibernateTemplate.findByCriteria(detachedCriteria);
		if (findByCriteria != null && findByCriteria.size() > 0)
			return findByCriteria.get(0);
		else
			return null;

	}

	public User getUser(int id) {
		return hibernateTemplate.get(User.class, id);
	}

}
