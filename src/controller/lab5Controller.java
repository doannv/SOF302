package controller;

import java.io.File;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import model.User;

@Controller
public class lab5Controller {
	@Autowired
	User user;
	
	@RequestMapping(value = "lab_5", method = RequestMethod.GET)
	public String showLab5() {
		return "lab5/lab_5";
	}

	@RequestMapping(value = "lab5bai1", method = RequestMethod.GET)
	public String showLab5bai1() {
		return "lab5/lab5bai1";
	}

	@ModelAttribute("user")
	public User getUser() {
		return user;
	}

	@RequestMapping(value = "lab5bai2", method = RequestMethod.GET)
	public String showLab5bai2() {
		return "lab5/lab5bai2";

	}

	@Autowired
	ServletContext context;

	@RequestMapping("upload.htm")
	public String apply(ModelMap model, @RequestParam("fullname") String fullname, @RequestParam("cv") MultipartFile cv,
			@RequestParam("photo") MultipartFile photo) {
		if (photo.isEmpty() || cv.isEmpty()) {
			model.addAttribute("message", "Vui lòng chọn file !");
		} else {
			try {
				String photoPath = context.getRealPath("/files/" + photo.getOriginalFilename());
				photo.transferTo(new File(photoPath));
				String cvPath = context.getRealPath("/files/" + cv.getOriginalFilename());
				cv.transferTo(new File(cvPath));

				model.addAttribute("photo_name", photo.getOriginalFilename());
				model.addAttribute("cv_name", cv.getOriginalFilename());
				model.addAttribute("cv_type", cv.getContentType());
				model.addAttribute("cv_size", cv.getSize());
				return "lab5/upload";
			} catch (Exception e) {
				model.addAttribute("message", "Lỗi lưu file !");
			}
		}
		return "lab5/lab5bai2";
	}

	@RequestMapping("sendMail")
	public String showLab5sendMail() {
		return "lab5/sendMail";
	}

	@Autowired
	JavaMailSender mailer;

	@RequestMapping("send")
	public String send(ModelMap model, @RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("subject") String subject, @RequestParam("body") String body) {
		try {
			//tạo mail
			MimeMessage mail = mailer.createMimeMessage();
			//sử dụng lớp trợ giúp
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			helper.setFrom(from, from);
			helper.setTo(to);
			helper.setReplyTo(from, from);
			helper.setSubject(subject);
			helper.setText(body, true);
			//gửi mail
			mailer.send(mail);
			model.addAttribute("message", "Gửi email thành công !");
		} catch (Exception ex) {
			model.addAttribute("message", "Gửi email thất bại !");
		}
		return "lab5/sendMail";
	}
}
