package uk.co.certait.scratchpad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import uk.co.certait.scratchpad.domain.Client;
import uk.co.certait.scratchpad.service.ClientService;

@Controller
@RequestMapping(value = "/client.do")
public class ClientController {

	@Autowired
	private ClientService clientService;

	@RequestMapping(method = RequestMethod.GET)
	public String loadClient() {
		return "client";
	}

	@ModelAttribute(value = "client")
	public Client getClient() {
		return clientService.loadClient();
	}
}
