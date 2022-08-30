package demo.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class TestController {

	@RequestMapping("/")
	public ModelAndView defaultHome() {
		return new ModelAndView("Studentlogin");
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("Studentlogin");
	}

	@RequestMapping("/dashboard")
	public ModelAndView userDashboard() {
		return new ModelAndView("dashboard");
	}

	@RequestMapping("/accessdenied")
	public ModelAndView userAccessError() {
		return new ModelAndView("UserDenied");
	}
	
	@RequestMapping("/admin/")
	public ModelAndView admin() {
		return new ModelAndView("admin/AdminLogin");
	}

	@RequestMapping("/admin/login")
	public ModelAndView adminlogin() {
		return new ModelAndView("admin/AdminLogin");
	}

	@RequestMapping("/admin/dashboard")
	public ModelAndView admindashboard() {
		return new ModelAndView("admin/AdminPage");
	}

	@RequestMapping("/admin/accessdenied")
	public ModelAndView adminAccessError() {
		return new ModelAndView("admin/AdminDenied");
	}
}
