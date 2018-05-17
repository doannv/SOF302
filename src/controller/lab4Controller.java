package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import model.modelStudent;

@Controller
public class lab4Controller {

	@RequestMapping(value = "lab_4", method = RequestMethod.GET)
	public String showLab4() {
		return "lab4/lab_4";
	}

	@Autowired
	ServletContext application;

	@RequestMapping(value = "lb4student", method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session) {
		application.setAttribute("name1", "Phạm Văn Huấn");
		application.setAttribute("level1", 2);
		session.setAttribute("name2", "Ngô Trọng Nghĩa");
		session.setAttribute("level2", 4);
		request.setAttribute("name3", "Nguyễn Văn Đoàn");
		request.setAttribute("level3", 3);
		session.setAttribute("salary", 1000);
		request.setAttribute("pt1", "PH04707.jpg");
		request.setAttribute("pt2", "PH04706.jpg");
		request.setAttribute("pt3", "PH04705.jpg");
		return "lab4/lb4student";
	}

	@RequestMapping(value = "lab4bai2", method = RequestMethod.GET)
	public String showLab4bai2(ModelMap model) {
		modelStudent sv1 = new modelStudent("Nguyễn Văn Đoàn", 8.0, "Ứng dụng phần mềm");
		modelStudent sv2 = new modelStudent("Ngô Trọng Nghĩa", 8.0, "Ứng dụng phần mềm");
		modelStudent sv3 = new modelStudent("Phạm Văn Huấn", 8.0, "Thiết kế Website");
		model.addAttribute("sv1", sv1);
		model.addAttribute("sv2", sv2);
		model.addAttribute("sv3", sv3);
		return "lab4/lab4bai2";
	}

	@RequestMapping(value = "lab4bai3", method = RequestMethod.GET)
	public String showLab4bai3(ModelMap model) {
		modelStudent sv1 = new modelStudent("Phạm Minh Tuấn", 5.5, "Ứng dụng phần mềm");
		modelStudent sv2 = new modelStudent("Nguyễn Kiều Oanh", 9.5, "Lập trình di động");
		modelStudent sv3 = new modelStudent("Lê Tuấn Kiệt", 3.5, "Thiết kế Website");
		model.addAttribute("sv1", sv1);
		model.addAttribute("sv2", sv2);
		model.addAttribute("sv3", sv3);
		return "lab4/lab4bai3";
	}

	@RequestMapping(value = "lab4bai4", method = RequestMethod.GET)
	public String showLab4bai4(ModelMap model) {
		List<Product> list = new ArrayList<>();
		list.add(new Product("Nokia Star", 10000000.0, 0.05));
		list.add(new Product("iPhone 8", 15000000.0, 0.1));
		list.add(new Product("Samsung Galaxy N8", 7500000.0, 0.15));
		list.add(new Product("Sony Experia", 5000000.0, 0.0));
		model.addAttribute("prods", list);
		return "lab4/lab4bai4";
	}
}
