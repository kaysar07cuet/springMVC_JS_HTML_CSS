package com.ghost.spring.employee.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ghost.spring.employee.entity.Department;

public interface DepartmentDao {
	public List<Department> selectAll();
	public Department getDepartment(int index)	;
}
