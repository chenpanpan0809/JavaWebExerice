package ood.com.login;

import java.util.HashMap;
import java.util.Map;

public class Register {
	private String name;
	private String phone;
	private String email;
	private Map<String, String>errors = null;
	public Register() {
		
		this.name = "";
		this.phone = "";
		this.email = "";
		this.errors = new HashMap<String,String>();
	}
	
	
}
