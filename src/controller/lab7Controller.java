package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class lab7Controller {
	@RequestMapping(value = "lab_7", method = RequestMethod.GET)
	public String showLab7() {
		return "lab7/lab_7";
	}
	@RequestMapping(value = "lab7bai1", method = RequestMethod.GET)
	public String showLab7bai1() {
		return "lab7/lab7bai1";
	}
	@RequestMapping(value = "lab7index", method = RequestMethod.GET)
	public String showLab7index() {
		return "lab7/lab7index";
	}
	@RequestMapping(value = "lab7about", method = RequestMethod.GET)
	public String showLab7about() {
		return "lab7/lab7about";
	}
}
