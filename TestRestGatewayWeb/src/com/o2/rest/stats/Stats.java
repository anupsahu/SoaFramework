package com.o2.rest.stats;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

public class Stats {

	private JsonObject data=new JsonObject();
	private String service;
	

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}
	
	//Forms the Ajax response for all the stats required for Index page load.
	public void indexStats() {
		
		HttpServletResponse response = ServletActionContext.getResponse();
		Graph g= new Graph();
		
		data.add("barData", g.barStats());
		data.add("pieData", g.pieStats());
		
		try {
			response.getWriter().write(data.toString());
			}
			catch(Exception e) {
				System.out.println(e.getMessage());
			}
	}
	
	//Forms the Ajax response for all the stats required for Service page load.
	public void serviceStats() {
		
		HttpServletResponse response = ServletActionContext.getResponse();
		Graph g= new Graph();
		
		data.add("serviceBarData", g.serviceBarStats(service));
		data.add("servicePieData", g.servicePieStats(service));
		data.add("serviceLineData",g.serviceLineStats(service));
		data.add("serviceAreaData", g.serviceAreaStats(service));
		
		try {
			response.getWriter().write(data.toString());
			}
			catch(Exception e) {
				System.out.println(e.getMessage());
			}
	}
	
}