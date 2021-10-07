package com.bookappointment.controller;

import java.util.List;

import javax.print.Doc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.bookappointment.dao.CategoryDao;
import com.bookappointment.dao.DoctorDao;
import com.bookappointment.dao.UserDao;
import com.bookappointment.model.Category;
import com.bookappointment.model.Doctor;
import com.bookappointment.model.Login;
import com.bookappointment.model.User;

import net.bytebuddy.matcher.ModifierMatcher.Mode;

@Controller
public class HomeController {
	@Autowired
	private UserDao userDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	DoctorDao doctorDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@RequestMapping("/")
	public String homeHandler() {
		return "home";
	}

	@RequestMapping("/register")
	public String registration() {
		return "register";

	}

	@RequestMapping(value = "/registerprocess", method = RequestMethod.POST)
	public String registerHandler(@ModelAttribute("user") User user, Model m) {

		userDao.createUser(user);
		String name = (String) user.getName();
		m.addAttribute("name", name);

		return "success";

	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/loginprocess", method = RequestMethod.POST)
	public ModelAndView loginHandler(@Validated @ModelAttribute("login") Login login, BindingResult bindingResult,
			Model m) {
		List<Category> clist = categoryDao.getCategoryList();
		m.addAttribute("categorylist", clist);

		if (bindingResult.hasErrors()) {
			return new ModelAndView("login");
		}
		ModelAndView modelAndView = new ModelAndView("dashboard");
		User user = userDao.getUserDetailsByEmailAndPassword(login.getEmail(), login.getPassword());
		if (user != null) {
			modelAndView.addObject("user", user);
			String name = user.getName();
			m.addAttribute("name", name);
			return modelAndView;
		} else {
			modelAndView = new ModelAndView("notfound");

		}

		return modelAndView;

	}

	@RequestMapping(value = "/add_category", method = RequestMethod.POST)
	public String setCategoryList(@ModelAttribute Category category) {
		categoryDao.createCategory(category);
		return "redirect:/";

	}

	@RequestMapping("/category_add")
	public String addCategory() {
		return "categoryadd";
	}

	@RequestMapping("/doctor-list/{cid}")
	public String docList(@PathVariable("cid") int cid, Model m) {

		List<Doctor> dlist = doctorDao.getList();
		Category category = categoryDao.getCategory(cid);

		m.addAttribute("dlist", dlist);
		m.addAttribute("cid", cid);

		m.addAttribute("category", category);
		return "doctor_list";
	}

	@RequestMapping("/add-doctor")
	public String addDoctor() {

		return "add_doctor";
	}

	@RequestMapping(value = "/save-doctor", method = RequestMethod.POST)
	public String saveDoctor(@ModelAttribute Doctor doctor) {
		doctorDao.saveDoctor(doctor);

		return "redirect:/add-doctor";

	}

	@RequestMapping("/doctor-list/book/{did}/{cid}")
	public String viewDoctor(@PathVariable("did") int did, @PathVariable("cid") int cid, Model m) {
		Doctor doctor = doctorDao.getDoctor(did);
		Category category = categoryDao.getCategory(cid);
		m.addAttribute("doctor", doctor);
		m.addAttribute("category", category);
		return "doctorview";

	}

	@RequestMapping(value = "/doctor-list/book/{did}/booking-reciept/{did}/{cid}", method = RequestMethod.POST)
	public String viewReciept(@PathVariable("did") int did, @PathVariable("cid") int cid, Model m, Category category,
			User user, Doctor doctor) {
		Category category1 = categoryDao.getCategory(cid);
		Doctor doctor1 = doctorDao.getDoctor(did);
		User user1 = userDao.getUser(user.getId());

		m.addAttribute("user", user1);

		m.addAttribute("category", category1);
		m.addAttribute("doctor", doctor1);
		return "reciept_view";

	}

	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query) {
		String url = "https://www.google.com/search?q=" + query;
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);
		return redirectView;
	}

}
