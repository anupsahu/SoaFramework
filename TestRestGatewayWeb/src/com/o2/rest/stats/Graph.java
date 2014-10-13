package com.o2.rest.stats;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

public class Graph {
	
public JsonObject barStats() {
		
		JsonObject barStats=new JsonObject();
		DateTime dt = new DateTime();
		JsonArray l=new JsonArray();
		DateTimeFormatter fmt = DateTimeFormat.forPattern("dd-MM-yyyy HH");
		DateTimeFormatter fmt1 = DateTimeFormat.forPattern("HH:00");
		String time,end_time,start_time,success,failure;
		Data d= new Data();
		
		for (int i=4; i>0; i--) {
		
			end_time=(dt.minusHours(i-1)).toString(fmt);
			start_time=(dt.minusHours(i)).toString(fmt);
			time=(dt.minusHours(i)).toString(fmt1);
			success= d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/extract.sh","/logs/WAS7/restgateway/audit/audit.log",start_time,end_time,"Success"});
			failure= d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/extract.sh","/logs/WAS7/restgateway/audit/audit.log",start_time,end_time,"Failed"});
			
			JsonObject obj=	new JsonObject();
			obj.addProperty("y", time);
			obj.addProperty("a", success);
			obj.addProperty("b", failure);
		
			l.add(obj);
		}
		
		barStats.add("data", l);
		return barStats;
		
	}
	
public JsonObject pieStats() {
		
		JsonObject pieStats=new JsonObject();
		Data d= new Data();
		
			int collResource= Integer.parseInt(d.getStats(new String[]{"grep","-c","connections","/logs/WAS7/restgateway/audit/audit.log"}));
			int sharingOptions= Integer.parseInt(d.getStats(new String[]{"grep","-c","sharingOption","/logs/WAS7/restgateway/audit/audit.log"}));
			int DataUsage= Integer.parseInt(d.getStats(new String[]{"grep","-c","usage","/logs/WAS7/restgateway/audit/audit.log"}));
			int sharingGroups= Integer.parseInt(d.getStats(new String[]{"grep","-c","sharingGroup","/logs/WAS7/restgateway/audit/audit.log"}));
			
			JsonArray l= new JsonArray();
			JsonObject jobj = new JsonObject();
			jobj.addProperty("label", "Collection Resource");
			jobj.addProperty("data", collResource);
			l.add(jobj);
			
			jobj = new JsonObject();
			jobj.addProperty("label", "Sharing Option");
			jobj.addProperty("data", sharingOptions);
			l.add(jobj);
			
			jobj = new JsonObject();
			jobj.addProperty("label", "Data Usage");
			jobj.addProperty("data", DataUsage);
			l.add(jobj);
			
			jobj = new JsonObject();
			jobj.addProperty("label", "Sharing Groups");
			jobj.addProperty("data", sharingGroups);
			l.add(jobj);
			pieStats.add("data", l);
			return pieStats;	
		
	}
	
	public JsonObject serviceBarStats(String service) {
		
		JsonObject serviceBarStats=new JsonObject();
		DateTime dt = new DateTime();
		JsonArray l=new JsonArray();
		DateTimeFormatter fmt = DateTimeFormat.forPattern("dd-MM-yyyy HH");
		DateTimeFormatter fmt1 = DateTimeFormat.forPattern("HH:00");
		String time,end_time,start_time,success,failure,serv;
		Data d= new Data();
		serv=d.getService(service);
		for (int i=5; i>0; i--) {
		
			end_time=(dt.minusHours(i-1)).toString(fmt);
			start_time=(dt.minusHours(i)).toString(fmt);
			time=(dt.minusHours(i)).toString(fmt1);
			success= d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/extract.sh","/logs/WAS7/restgateway/audit/audit.log",start_time,end_time,serv,"Success"});
			failure= d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/extract.sh","/logs/WAS7/restgateway/audit/audit.log",start_time,end_time,serv,"Failed"});
		
			JsonObject obj=	new JsonObject();
			obj.addProperty("y", time);
			obj.addProperty("a", success);
			obj.addProperty("b", failure);
		
			l.add(obj);
		}
		
		serviceBarStats.add("data", l);
		return serviceBarStats;
		
	}
	
public JsonObject serviceAreaStats(String service) {
		
		JsonObject serviceAreaStats= new JsonObject();
		DateTime dt = new DateTime();
		JsonArray l=new JsonArray();
		DateTimeFormatter fmt = DateTimeFormat.forPattern("dd-MM-yyyy HH");
		DateTimeFormatter fmt1 = DateTimeFormat.forPattern("yyyy-MM-dd HH:00");
		String time,end_time,start_time,serv;
		int success, failure;
		Data d= new Data();
		serv=d.getService(service);
		
		for (int i=5; i>0; i--) {
		
			end_time=(dt.minusHours(i-1)).toString(fmt);
			start_time=(dt.minusHours(i)).toString(fmt);
			time=(dt.minusHours(i)).toString(fmt1);
			success= 70;//Integer.parseInt(d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/throughput.sh","/logs/WAS7/restgateway/audit/audit.log",start_time,end_time,serv}));
			failure= 30;//Integer.parseInt(d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/throughput.sh","/logs/WAS7/restgateway/audit/audit.log",start_time,end_time,serv}));
			
			JsonObject obj=	new JsonObject();
			
			obj.addProperty("period", time);
			obj.addProperty("Success", success);
			obj.addProperty("Failed", failure);
		
			l.add(obj);
			
		}
		serviceAreaStats.add("data", l);
		return serviceAreaStats;
		
	}
	
	public JsonObject serviceLineStats(String service) {
		
		JsonObject serviceLineStats= new JsonObject();
		DateTime dt = new DateTime();
		JsonArray l=new JsonArray();
		DateTimeFormatter fmt = DateTimeFormat.forPattern("dd-MM-yyyy HH");
		DateTimeFormatter fmt1 = DateTimeFormat.forPattern("yyyy-MM-dd HH:00");
		String time,end_time,start_time,throughput,serv;
		Data d= new Data();
		serv=d.getService(service);
		
		for (int i=5; i>0; i--) {
		
			end_time=(dt.minusHours(i-1)).toString(fmt);
			start_time=(dt.minusHours(i)).toString(fmt);
			time=(dt.minusHours(i)).toString(fmt1);
			throughput= d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/throughput.sh","/logs/WAS7/restgateway/audit/audit.log",start_time,end_time,serv});
		
			JsonObject obj=	new JsonObject();
			
			obj.addProperty("y", time);
			obj.addProperty("a", throughput);
		
			l.add(obj);
			
		}
		serviceLineStats.add("data", l);
		return serviceLineStats;
		
	}
	
	
	
	public JsonObject servicePieStats(String service) {
		
		JsonObject servicePieStats= new JsonObject();
		Data d= new Data();
		String serv=d.getService(service);
		
			int success= Integer.parseInt(d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/service.sh",serv,"/logs/WAS7/restgateway/audit/audit.log","Success"}));
			int failure= Integer.parseInt(d.getStats(new String[]{"/logs/WAS7/restgateway/scripts/service.sh",serv,"/logs/WAS7/restgateway/audit/audit.log","Failed"}));
			
			
			JsonArray l= new JsonArray();
			JsonObject jobj = new JsonObject();
			jobj.addProperty("label", "Success");
			jobj.addProperty("data", success);
			l.add(jobj);
			
			jobj = new JsonObject();
			jobj.addProperty("label", "Failure");
			jobj.addProperty("data", failure);
			l.add(jobj);
			
			servicePieStats.add("data", l);
			return servicePieStats;
			
	}
}

