package com.bookappointment.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.bookappointment.model.Category;

@Component
public class CategoryDao {
	@Autowired
	HibernateTemplate hibernateTemplate;

	@Transactional(readOnly = false)
	public void createCategory(Category category) {
		hibernateTemplate.save(category);
	}

	public List<Category> getCategoryList() {
		List<Category> clist = hibernateTemplate.loadAll(Category.class);
		return clist;
	}

	public Category getCategory(int cid) {
		return hibernateTemplate.get(Category.class, cid);
	}

}
