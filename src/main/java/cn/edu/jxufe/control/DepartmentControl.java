package cn.edu.jxufe.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("dept")
public class DepartmentControl {
	@RequestMapping("index")
	public String toIndexPage(){
		return "index";
	}
}
