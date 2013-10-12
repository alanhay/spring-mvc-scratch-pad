package uk.co.certait.scratchpad.domain;

public enum Gender {


	M("Male"), F("Female");

	private String name;
	
	private Gender(String name){
		this.name = name;
	}
	
	public String getName(){
		return name;
	}
}
