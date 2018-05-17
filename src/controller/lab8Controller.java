package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.modelStudent;

@Controller
public class lab8Controller {
	@RequestMapping(value = "lab_8", method = RequestMethod.GET)
	public String showLab8() {
		return "lab8/lab_8";
	}

	@RequestMapping("lab8bai1")
	public String showLab8bai1(ModelMap model) {
		model.addAttribute("student", new modelStudent());
		return "lab8/lab8bai1";
	}

	@RequestMapping(value = "validate", method = RequestMethod.POST)
	public String validate1(ModelMap model, @Validated @ModelAttribute("student") modelStudent student,
			BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây !");
		} else {
			model.addAttribute("message", "Chúc mừng, bạn đã nhập đúng !");
		}
		return "lab8/lab8bai1";
	}

	@RequestMapping("lab8bai2")
	public String showLab8bai2() {
		System.out.println("HomeController.index()");
		return "lab8/lab8bai2";
	}
	@RequestMapping("lab8about")
	public String showlab8about() {
		System.out.println("HomeController.About()");
		return "lab8/lab8about";
	}
}
