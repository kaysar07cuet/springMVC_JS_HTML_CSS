package com.ghost.spring.employee.entity;

import java.util.ArrayList;
import java.util.List;

public class Department {
	public static List<Department> deps = new ArrayList<Department>();
	static{
		deps.add(new Department(1,"AA"));
		deps.add(new Department(2,"BB"));
		deps.add(new Department(3,"CC"));
		deps.add(new Department(4,"DD"));
	}
	
	public Department(){}
	
	public Department(int id, String name) {
		this.id = id;
		this.name = name;
	}
	
	private int id;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
