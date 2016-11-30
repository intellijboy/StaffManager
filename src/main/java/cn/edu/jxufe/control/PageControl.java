package cn.edu.jxufe.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageControl {
		@RequestMapping("index")
		public String toIndexPage(){
			return "index";
		}
		
}
