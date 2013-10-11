package uk.co.certait.scratchpad.service;

import org.springframework.stereotype.Service;

import uk.co.certait.scratchpad.domain.Client;

@Service
public class ClientService {

	public Client loadClient() {
		
		Client client = new Client();
		client.setForename("John");
		client.setSurname("Jackson");
		client.setEmailAddress("john@jackson.net");

		return client;
	}
}
