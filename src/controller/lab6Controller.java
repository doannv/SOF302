package controller;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Records;
import model.Staffs;
import model.Users;

@Transactional
@Controller
public class lab6Controller {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "lab_6", method = RequestMethod.GET)
	public String showLab6() {
		return "lab6/lab_6";
	}

	@RequestMapping("lab6bai1")
	public String showLab6bai1(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Users";
		Query query = session.createQuery(hql);
		List<Users> list = query.list();
		model.addAttribute("users", list);
		return "lab6/lab6bai1";
	}

	@RequestMapping(value = "lab6bai2", method = RequestMethod.GET)
	public String showLab6bai2(ModelMap model) {
		model.addAttribute("user", new Users());
		return "lab6/lab6bai2";
	}

	@RequestMapping(value = "lab6bai2", method = RequestMethod.POST)
	public String insert(ModelMap model, @RequestParam("Fullname") String Fullname,
			@RequestParam("Password") String Password, @RequestParam("Username") String Username,@Validated
			@ModelAttribute("user") Users user,BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây !");
		} else {
			try {
				session.saveOrUpdate(user);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công !");
			} catch (Exception e) {
				t.rollback();				
			} finally {
				session.close();
			}
		}

		return "lab6/lab6bai2";
	}

	@RequestMapping(value = "lab6bai3", method = RequestMethod.GET)
	public String showLab6bai3(ModelMap model) {
		Session session = factory.getCurrentSession();
		String sql = "FROM Staffs";
		Query query = session.createQuery(sql);
		List<Staffs> list = query.list();
		model.addAttribute("staffs", list);
		return "lab6/lab6bai3";
	}

	@RequestMapping(value = "report", method = RequestMethod.GET)
	public String report(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "SELECT r.staff.id, " + " SUM(case when r.Type=1 then 1 else 0 end), "
				+ " SUM(case when r.Type=0 then 1 else 0 end) " + " FROM Records r " + " GROUP BY r.staff.id";
		Query query = session.createQuery(hql);
		List<Object[]> list = query.list();
		model.addAttribute("arrays", list);
		return "lab6/report";
	}
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(ModelMap model) {
		Session session = factory.getCurrentSession();
		String sql = "delete from Users where Username = ?";
		Query query = session.createQuery(sql);
		List<Object[]> list = query.list();
		model.addAttribute("arrays", list);
		return "lab6/lab6bai2";
	}

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("record", new Records());
		return "lab6/insert";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("record") Records record) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			record.setDate(new Date());
			session.saveOrUpdate(record);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "lab6/insert";
	}

	@ModelAttribute("staffs")
	public List<Staffs> getStaffs() {
		Session session = factory.getCurrentSession();
		String sql = "FROM Staffs";
		Query query = session.createQuery(sql);
		List<Staffs> list = query.list();
		return list;
	}

}
