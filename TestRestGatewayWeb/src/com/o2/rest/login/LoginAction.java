package com.o2.rest.login;

public class LoginAction {
	
	private String username;
	private String password;
	
	public String execute() {
		
		if(username.equals("admin") && password.equals("admin"))
			return "success";
		else 
			return "failure";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
