package uk.co.certait.scratchpad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/loadHome.do")
public class LoadHomeController {

	@RequestMapping(method = RequestMethod.GET)
	public String loadHome() {
		return "home";
	}
}
