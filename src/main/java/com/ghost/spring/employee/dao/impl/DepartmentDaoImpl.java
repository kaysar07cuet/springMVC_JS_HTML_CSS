package com.ghost.spring.employee.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ghost.spring.employee.dao.DepartmentDao;
import com.ghost.spring.employee.entity.Department;


@Repository
public class DepartmentDaoImpl implements DepartmentDao{

	public List<Department> selectAll() {
		return Department.deps;
	}

	public Department getDepartment(int index) {
		return Department.deps.get(index);
	}

}
