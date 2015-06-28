package com.ghost.spring.employee.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ghost.spring.employee.dao.DepartmentDao;
import com.ghost.spring.employee.dao.EmployeeDao;
import com.ghost.spring.employee.entity.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	private static int count = 4;
	private static int maxid = 4;
	@Autowired
	DepartmentDao departmentDao;

	public List<Employee> selectAll() {
		return Employee.employees;
	}

	public void save(Employee employee) {

		count += 1;

		employee.setId(maxid + 1);
		maxid++;

		employee.setDepartment(departmentDao.getDepartment(employee
				.getDepartment().getId() - 1));

		Employee.employees.add(employee);
	}

	public void deleteById(int id) {
		for (int i = 0; i < count; i++)
			if (Employee.employees.get(i).getId() == id) {
				Employee.employees.remove(i);
				count--;
				break;
			}
	}

	@Override
	public Employee selectById(int id) {
		for (int i = 0; i < count; i++)
			if (Employee.employees.get(i).getId() == id) {
				return Employee.employees.get(i);
			}
		return null;
	}

	@Override
	public void update(Employee employee) {
		Employee oriEmployee = null;
		for (int i = 0; i < count; i++)
			if (Employee.employees.get(i).getId() == employee.getId()) {
				oriEmployee = Employee.employees.get(i);
				break;
			}
		oriEmployee.setAge(employee.getAge());
		oriEmployee.setDepartment(employee.getDepartment());
		oriEmployee.setGender(employee.getGender());

	}

}
