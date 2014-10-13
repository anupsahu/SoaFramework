package com.o2.rest.stats;

import java.io.BufferedReader;

import java.io.IOException;

import java.io.InputStreamReader;
import java.util.ArrayList;



public class Data {

	

	public String getStats(String[] args) {
	
	    
	    ArrayList<String> data= new ArrayList<String>();
	    String s=null;
	    
	    for(int i=0; i<args.length; i++) {
	    	
	    	data.add(args[i]);
	    } 
		try {

            Process proc = new ProcessBuilder(data).start(); //Whatever you want to execute
            BufferedReader read = new BufferedReader(new InputStreamReader(proc.getInputStream()));

            try {

                proc.waitFor();

            } catch (InterruptedException e) {
                System.out.println(e.getMessage());
            }
            while ((s = read.readLine() )!=null) {
                return s.trim();
            }
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        return null;
	}
	
	public String getService(String s) {
		
		if (s.equals("Collection Resource"))
			return "connections";
		else if (s.equals("Sharing Groups"))
			return "sharingGroup";
		else if (s.equals("Data Usage"))
			return "usage";
		else if (s.equals("Sharing Options"))
			return "sharingOptions";
		else 
			return null;
		
	}

}
