package cn.edu.jxufe.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("emp")
public class EmployeeControl {
	@RequestMapping("index")
	public String toIndexPage(){
		return "index";
	}
}
