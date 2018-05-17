package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class lb1StudentController {
	@RequestMapping(value = "bai2", method = RequestMethod.GET)
	public String showForm() {
		return "lab1/bai2";

	}

	@RequestMapping(value = "save.htm")
	public String saveForm(HttpServletRequest request) {
		String name = request.getParameter("name");
		String mark = request.getParameter("mark");
		String major = request.getParameter("major");

		request.setAttribute("name", name);
		request.setAttribute("mark", mark);
		request.setAttribute("major", major);
		return "lab1/success";

	}
}
