package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import model.modelStudent;

@Controller
@RequestMapping("/student")
public class lb2StudentMgrController {
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("message", "Bạn gọi Index()");
		return "lab2/student-mgr";

	}

	@RequestMapping(params = "btnInsert")
	public String insert(ModelMap model,
		@RequestParam("name") String name,
		@RequestParam("mark") Double mark,
		@RequestParam("major") String major){
		model.addAttribute("name", name);
		model.addAttribute("mark", mark);
		model.addAttribute("major", major);
		return "lab2/success";
		}	

	@RequestMapping(params = "btnUpdate")
	public String update(ModelMap model,modelStudent modelstudent) {
		model.addAttribute("student", modelstudent);
		return "lab2/success2";
	}

	@RequestMapping(params = "btnDelete")
	public String delete(ModelMap model) {
		model.addAttribute("message", "Bạn gọi Delete()");
		return "lab2/student-mgr";
	}

	@RequestMapping(params = "lnkEdit")
	public String edit(ModelMap model) {
		model.addAttribute("message", "Bạn gọi Edit()");
		return "lab2/student-mgr";
	}
}
