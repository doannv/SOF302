package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Major;
import model.modelStudent;

@Controller
public class showController {
	@RequestMapping(value = "index")
	public String showIndex() {
		return "index";
	}

	// lab1
	@RequestMapping(value = "lab_1", method = RequestMethod.GET)
	public String showLab1Bai1̣̣̣() {
		return "lab1/lab_1";
	}

	@RequestMapping(value = "bai1", method = RequestMethod.GET)
	public String showLab1Bai1̣̣̣_1() {
		return "lab1/bai1";
	}

	// lab2
	@RequestMapping(value = "lab_2", method = RequestMethod.GET)
	public String showLab2Lab_2() {
		return "lab2/lab_2";
	}

	@RequestMapping(value = "form", method = RequestMethod.GET)
	public String showLab2Form() {
		return "lab2/form";
	}

	@RequestMapping(value = "student-mgr", method = RequestMethod.GET)
	public String showStudentMgr() {
		return "lab2/student-mgr";
	}

	// lab3
	@RequestMapping(value = "lab_3", method = RequestMethod.GET)
	public String showLab3Lab_3() {
		return "lab3/lab_3";
	}

	@RequestMapping(value = "student", method = RequestMethod.GET)
	public String showLab3Student(ModelMap model) {
		modelStudent stu = new modelStudent("Nguyễn Văn Đoàn", 8.5, "UDPM");
		model.addAttribute("st", stu);
		return "lab3/student";
	}

	@ModelAttribute("majors")
	public Map<String, String> getMajors() {
		Map<String, String> majors = new HashMap<>();
		majors.put("UDPM", "Ứng dụng phần mềm");
		majors.put("WEB", "Thiết kế trang web");
		return majors;

	}
	@ModelAttribute("majors1")
	public List<Major> getMajors1() {
		List<Major> majors = new ArrayList<>();
		majors.add(new Major("UDPM", "Ứng dụng phần mềm"));
		majors.add(new Major("WEB", "Thiết kế trang web"));
		return majors;

	}
	
	
}
