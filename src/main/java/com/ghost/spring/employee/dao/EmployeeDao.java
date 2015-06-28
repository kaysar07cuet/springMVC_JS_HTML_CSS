package com.ghost.spring.employee.dao;

import java.util.List;

import com.ghost.spring.employee.entity.Employee;

public interface EmployeeDao {
	public List<Employee> selectAll();
	public void save(Employee employee);
	public void deleteById(int id);
	public Employee selectById(int id);
	public void update(Employee employee);
}
