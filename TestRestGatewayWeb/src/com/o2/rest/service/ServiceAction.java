package com.o2.rest.service;

import com.o2.rest.stats.Data;

public class ServiceAction {
	
	private String service;
	
	public String execute() {
		
		return "success";
	}

	
	public void setService(String service) {
		this.service = service;
	}

	public String getService() {
		return service;
	}
	
}
