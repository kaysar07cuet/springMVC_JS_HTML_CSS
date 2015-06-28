package com.ghost.spring.employee.converties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import com.ghost.spring.employee.dao.DepartmentDao;
import com.ghost.spring.employee.entity.Department;
import com.ghost.spring.employee.entity.Employee;

public class EmployeeConverter implements Converter<String, Employee> {

	@Autowired
	DepartmentDao departmentDao;
	
	@Override
	public Employee convert(String employee) {
		if(employee!=null){
			String[] des = employee.split("-");
			
			String name = des[0];
			int age = Integer.parseInt(des[1]);
			int gender = Integer.parseInt(des[2]);
			int departmentId = Integer.parseInt(des[3]);
			
			Department department = departmentDao.getDepartment(departmentId);
			Employee e = new Employee();
			e.setAge(age);
			e.setGender(gender);
			e.setDepartment(department);
			e.setName(name);
			
			System.out.println("in convert");
			
			return e;
		}
		return null;
	}
	

}
