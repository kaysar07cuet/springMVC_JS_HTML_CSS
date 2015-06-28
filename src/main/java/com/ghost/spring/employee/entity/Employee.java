package com.ghost.spring.employee.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Employee {
	public static List<Employee> employees = new ArrayList<Employee>();
	static{
		employees.add(new Employee(1, "aa", 0, 1, Department.deps.get(0)));
		employees.add(new Employee(2, "bb", 1, 2, Department.deps.get(1)));
		employees.add(new Employee(3, "cc", 0, 3, Department.deps.get(2)));
		employees.add(new Employee(4, "dd", 1, 4, Department.deps.get(3)));
	}
	
	private int id = -1;
	private String name;
	private int gender;
	private int age;
	private Department department;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birth;
	
	public Employee(){}
	public Employee(int id, String name, int gender, int age, Department dep) {
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.department = dep;
	}
	
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
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
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
