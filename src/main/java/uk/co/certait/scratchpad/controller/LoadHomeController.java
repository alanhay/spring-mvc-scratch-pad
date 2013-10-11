package uk.co.certait.scratchpad.controller;

import org.springframework.stereotype.Controller;

@Controller(value = "/loadHome.do")
public class LoadHomeController {

	public String loadHome() {
		return "home";
	}
}
