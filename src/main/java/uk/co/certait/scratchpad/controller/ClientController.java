package uk.co.certait.scratchpad.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import uk.co.certait.scratchpad.domain.Client;
import uk.co.certait.scratchpad.domain.Gender;
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

	@RequestMapping(method = RequestMethod.POST)
	public String updateClient(@Valid Client client, BindingResult result) {
		return "client";
	}

	@ModelAttribute(value = "client")
	public Client getClient() {
		return clientService.loadClient();
	}

	@ModelAttribute(value = "genders")
	public Gender[] getGenders() {
		return Gender.values();
	}

	@ModelAttribute(value = "ages")
	public List<Integer> getAges() {
		List<Integer> ages = new ArrayList<Integer>();

		for (int i = 18; i < 75; ++i) {
			ages.add(i);
		}

		return ages;
	}
}
